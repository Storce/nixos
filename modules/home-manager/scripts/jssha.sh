
usage() {
	echo "$(basename "$0") [private key name]"
}

if [ $# != 1 ]; then
	usage
	return 1
fi

key_path=$HOME/.ssh/$1
echo $key_path
if [ -f $key_path ]; then
	eval "$(ssh-agent -s)"
	ssh-add $key_path
else
	echo "Key not found"
fi

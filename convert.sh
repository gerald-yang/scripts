if [ -z "$1" ]; then
	echo "Need to input video file in parameter 1"
	exit 1
else
	output=$(echo $1 | awk -F "." '{print $1}')
	avconv -i ${1} -f mp3 -vn ${output}.mp3
fi

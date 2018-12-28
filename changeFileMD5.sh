#! /bin/bash
echo "start"

function getAllFile() {
	for file in `ls $1`; do
		if [[ -d $1'/'$file ]]; then
			echo $file+" 是文件夹"
			getAllFile $1"/"$file
		else
			if [[ $file == *.png || $file == *.jpg || $file == *.jpeg ]]; then
				# echo a>>$file
				echo a>>$1"/"$file
				echo "修改文件 $file"
			fi
		fi
	done
}

# getAllFile 'testDir'
if [[ $1 ]]; then
	getAllFile $1	
	echo "Done"
else
	echo "请输入文件夹名称"
fi


exit 0
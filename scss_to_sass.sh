# Converts files in current folder and subfolders from SCSS to SASS
# and removes SCSS files

for d in $(find . -type f -name '*.scss')
do
	# Gets file name without extension
	name_file=${d%.*}

	# Converts files from SCSS to SASS
	sass-convert "$name_file.scss" "$name_file.sass"

	# Removes SCSS files
	rm "$name_file.scss"

done
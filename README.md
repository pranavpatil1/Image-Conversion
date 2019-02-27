# Image-Conversion

This tool allows many image files of one extension to be converted to another extension while keep the same base name. For example, if food.png was the original file, it could convert it to food.jpg.

I use the iOS Dropbox app to scan files and get PNG forms, but I need them in the JPG format. Since I have lots of these files and I don't want to keep renaming them, I made this tool.

## Usage

```bash convert.sh ext1 ext2 [directory]```
 - The first parameter is the original extension. Only files with this extension will be converted. 
 - The second parameter is the new extension to convert to. This will make a new file with this new extension
 - The third (optional) parameter is the directory to search for files. If not supplied, it will use the local directory.

Files will be made in the local directory. 

If different options for the convert command are needed (such as -quality 100), then the bash script can be modified.

This tool utilizes the imagemagick convert command and is tested on Windows Subsystem for Linux (in Windows 10) and Ubuntu 16. It will install the imagemagick-6-common package if it doesn't exist.

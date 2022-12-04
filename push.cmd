@echo off
echo DotCS - Uploading files to Github.
git config --global core.autocrlf false
set /p commit=Please enter your commit info: 
echo Loading files.
git update-index --add --chmod=+x .\build\upx\Linux_amd64\upx
git update-index --add --chmod=+x .\build\upx\Linux_aarch64\upx
git add .
echo Setting commit.
git commit -m "%commit%"
echo Setting branch.
git branch -M "v1.0.0"
echo Pushing.
git push -u DotCS "v1.0.0"
echo Finished.
pause
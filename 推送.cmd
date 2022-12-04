chcp 65001
@echo off
echo DotCS - 上传文件至 Github.
git config --global core.autocrlf false
set /p commit=请输入提交说明: 
echo 加载文件.
git update-index --add --chmod=+x .\build\upx\Linux_amd64\upx
git update-index --add --chmod=+x .\build\upx\Linux_aarch64\upx
git add .
echo 设置提交说明.
git commit -m "%commit%"
echo 设置分支.
git branch -M "v1.0.0"
echo 推送.
git push -u DotCS "v1.0.0"
echo 已完成.
pause
VersionString=`grep -E 'spec.version.*=' TestSpec_color.podspec`
arr=(${VersionString//\"/ })
version=${arr[2]}#获取podspec文件中的version
echo "准备提交 ${version}版本"

git add . #pod 添加文件
git ci -m "${version}"
git push 
git tag -a "${version}" -m "${version}版本" #打tag
git push —tags #提交tag
pod repo push TestSpec TestSpec_color.podspec --allow-warnings —-use-libraries #发版本 -—allow-warnings是有警告也可以编译通过 —-use-libraries有第三方库的时候需要添加这个参数
pod repo update ~/.cocoapods/repos/TestSpec/ #更新本地库，如果不更新，pod search是搜不到最新的版本
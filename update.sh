VersionString=`grep -E 'spec.version.*=' TestSpec_color.podspec`
arr=(${VersionString//\"/ })
version=${arr[2]}
echo "准备提交 ${version}版本"

git add . 
git ci -m "${version}"
git push 
git tag -a "${version}" -m "${version}版本"
git push --tags
pod repo push TestSpec TestSpec_color.podspec --allow-warnings
pod repo update ~/.cocoapods/repos/TestSpec/
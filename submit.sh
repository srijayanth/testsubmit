oldpwd=`pwd`
actual_dir=$(basename `pwd`)
url="http://bcfbb1ad.ngrok.io/submit"
cd ..
tar cvfz ./submission.tar.gz ${actual_dir}
username=`whoami`
curl -X POST ${url}\?username\=${username} --data-binary @submission.tar.gz
rm ./submission.tar.gz
cd $oldpwd

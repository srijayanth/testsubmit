oldpwd=`pwd`
url="http://10.132.20.23:8090/submit"
cd ..
tar cvfz ./submission.tar.gz sumOfMaxSequence
username=`whoami`
curl -X POST ${url}\?username\=${username} --data-binary @submission.tar.gz
rm ./submission.tar.gz
cd $oldpwd

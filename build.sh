docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID killerbhaivg/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID killerbhaivg/$JOB_NAME:latest

docker push killerbhaivg/$JOB_NAME:$BUILD_ID

docker push killerbhaivg/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID killerbhaivg/$JOB_NAME:$BUILD_ID killerbhaivg/$JOB_NAME:latest

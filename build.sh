# Convert JOB_NAME to lowercase
job_name_lower=$(echo "$JOB_NAME" | tr '[:upper:]' '[:lower:]')

# Build the Docker image
docker build -t $job_name_lower:$BUILD_ID .

# Tag the image
docker tag $job_name_lower:$BUILD_ID killerbhaivg/$job_name_lower:$BUILD_ID
docker tag $job_name_lower:$BUILD_ID killerbhaivg/$job_name_lower:latest

# Push the image
docker push killerbhaivg/$job_name_lower:$BUILD_ID
docker push killerbhaivg/$job_name_lower:latest

# Remove the images
docker rmi -f $job_name_lower:$BUILD_ID killerbhaivg/$job_name_lower:$BUILD_ID killerbhaivg/$job_name_lower:latest

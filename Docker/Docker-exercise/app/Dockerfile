# Define base image
FROM gcr.io/distroless/python3-debian12

# Specify container directory in which subsequent commands will be run in
WORKDIR /app

# Copy files from the host's current directory to the container's /web directory
COPY . .

# Install dependencies
RUN pip install flask redis

# Open the following port on the container 
EXPOSE 2000

# Run the following command on startup
ENTRYPOINT ["python", "count.py"]



# #Build stage

# FROM python:3.8-alpine AS build

# WORKDIR /app

# COPY . .

# RUN pip install flask redis

# # Final image

# FROM gcr.io/distroless/python3-debian12

# WORKDIR /app

# COPY --from=build /usr/local/lib/python3.8/site-packages/flask .

# COPY --from=build /usr/local/lib/python3.8/site-packages/redis .

# COPY --from=build /app .
 
# EXPOSE 2000

# ENTRYPOINT ["python", "count.py"]
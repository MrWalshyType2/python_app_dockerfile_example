# python base image
FROM python:3.7
# creates dir called 'app' inside container image and CD's into it
WORKDIR /app
# Install Flask for app to work
RUN pip install Flask
# Copy app into the working directory inside the container image
COPY ./app.py ./
# Port for containers to listen on
EXPOSE 5000
# Start the app on container start-up
ENTRYPOINT ["python", "app.py"]

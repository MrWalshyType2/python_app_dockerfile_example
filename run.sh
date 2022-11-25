#!/bin/bash
docker build -t mwalshqa/myapp ./
docker run -dp 80:5000 --name containerised_app mwalshqa/myapp

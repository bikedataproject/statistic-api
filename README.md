# geo-api

## About this repository

![.NET Core](https://github.com/bikedataproject/statistic-api/workflows/.NET%20Core/badge.svg)
![Docker Image CI](https://github.com/bikedataproject/statistic-api/workflows/Docker%20Image%20CI%20Build/badge.svg)
![Docker Image CD](https://github.com/bikedataproject/statistic-api/workflows/Docker%20Image%20Staging%20CD/badge.svg)

This repository holds code to publish open data.

## How to build & run this project

```bash
# Creating the image
docker build -t statistic-api:latest .
# Create the container based on the downloaded/created image
docker run -d --name statistic-api statistic-api:latest
```

## Coding conventions

- During this project we will be using [C# Google Style guide](https://google.github.io/styleguide/csharp-style.html) + brackets on a newline.
- Prefer to use the Empty method on types to return empty variables.

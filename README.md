# HTTPBin Slideshow Title Fetcher

This project extracts the title of a slideshow from the **[HTTPBin API](https://httpbin.org)**

## Requirements
- Docker installed on your machine (optional). Use GitHub Codespaces if Docker isn't available locally.
  
## Steps to Test

### docker build -t my_image .
### docker run -d my_image
### docker logs $(docker ps -lq)

Should return: Slideshow title: Sample Slide Show

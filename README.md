# Python Develop Docker

The image will contain:
 - Some basic system utilities.
 - Some basic python libraries.
 - Visual Studio Code Server.
 - Jupyter Lab.

To build the image, clone the repo and execute:
```docker build -t python_develop .```

To run a container:
```docker run -itd --name python_develop -p 0000:8888 -p 0000:8443 -v $(pwd):/workspace --restart unless-stopped python_develop```

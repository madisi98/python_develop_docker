#!/bin/bash
screen -wipe
screen -dmS vscs code-server --bind-addr 0.0.0.0:8443 --auth none
screen -dmS jup jupyter-lab --ip 0.0.0.0 --NotebookApp.token='' --NotebookApp.password='' --allow-root
sleep infinity

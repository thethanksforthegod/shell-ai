#!/bin/bash

cd /${WORKSPACE}/

git clone https://github.com/modelscope/DiffSynth-Studio.git  
cd /${WORKSPACE}/DiffSynth-Studio
pip install -e .


pip install gdown

pip install deepspeed

pip install peft

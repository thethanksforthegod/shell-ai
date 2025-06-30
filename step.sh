#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/PKU-YuanGroup/UniWorld-V1
cd UniWorld-V1
pip install -r requirements.txt
wget https://github.com/Dao-AILab/flash-attention/releases/download/v2.7.1.post4/flash_attn-2.7.1.post4+cu12torch2.5cxx11abiTRUE-cp310-cp310-linux_x86_64.whl
pip install flash_attn-2.7.1.post4+cu12torch2.5cxx11abiTRUE-cp310-cp310-linux_x86_64.whl

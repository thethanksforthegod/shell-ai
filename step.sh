#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/PKU-YuanGroup/UniWorld-V1
cd UniWorld-V1
pip install -r requirements.txt
pip install flash_attn --no-build-isolation

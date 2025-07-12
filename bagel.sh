#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/bytedance-seed/BAGEL.git
cd /${WORKSPACE}/BAGEL
pip install -r requirements.txt
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128

#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/bytedance-seed/BAGEL.git
cd /${WORKSPACE}/BAGEL
pip install -r requirements.txt
pip install gdown
gdown --fuzzy https://drive.google.com/file/d/1xJwtxqrjV5i1DGkA7-ZLz91wn7cwHD6p/view?usp=sharing
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128
pip install flash_attn-2.8.0.post2-cp310-cp310-linux_x86_64.whl

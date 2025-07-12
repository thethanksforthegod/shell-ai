#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/bytedance-seed/BAGEL.git
cd /${WORKSPACE}/BAGEL
pip install -r requirements.txt

#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/PKU-YuanGroup/UniWorld-V1
cd /${WORKSPACE}/UniWorld-V1
pip install -r requirements.txt

wget https://github.com/Dao-AILab/flash-attention/releases/download/v2.7.1.post4/flash_attn-2.7.1.post4+cu12torch2.5cxx11abiTRUE-cp310-cp310-linux_x86_64.whl
pip install flash_attn-2.7.1.post4+cu12torch2.5cxx11abiTRUE-cp310-cp310-linux_x86_64.whl

pip uninstall flash_attn -y
wget https://github.com/Dao-AILab/flash-attention/releases/download/v2.7.1.post4/flash_attn-2.7.1.post4+cu12torch2.5cxx11abiFALSE-cp310-cp310-linux_x86_64.whl
pip install flash_attn-2.7.1.post4+cu12torch2.5cxx11abiFALSE-cp310-cp310-linux_x86_64.whl


sudo apt-get update 
sudo apt-get install apt-transport-https ca-certificates gnupg curl -y
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update 
sudo apt-get install google-cloud-cli -y

gsutil cp gs://hf-models-fl/checkpoints/pytorch_model.bin /${WORKSPACE}/pytorch_model.bin

pip install gdown

#!/bin/bash

cd /${WORKSPACE}/
git clone https://github.com/PKU-YuanGroup/UniWorld-V1
cd UniWorld-V1
pip install -r requirements.txt
pip install flash_attn --no-build-isolation
pip install gdown
gdown https://drive.google.com/uc?id=1FeGx_DMX8OabwKppAxl0XLM4I03iAZ13
python scripts/make_univa_qwen2p5vl_weight.py \
    --origin_flux_ckpt_path $FLUX_PATH \
    --origin_qwenvl_ckpt_path $QWENVL_PATH \
    --save_path ${SAVE_PATH}

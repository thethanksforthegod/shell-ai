#!/bin/bash

# Clone the repository
git clone https://github.com/stepfun-ai/Step1X-Edit.git

# Change to the project directory
cd Step1X-Edit

# Install Python requirements
pip install -r requirements.txt

# Install flash_attn without build isolation
pip install flash_attn --no-build-isolation

# Copy files from Google Cloud Storage
gsutil -m cp -r gs://step-edit/ /workspace
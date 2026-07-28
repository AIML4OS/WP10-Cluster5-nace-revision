#!/bin/bash
echo "Executing the download_notebook.sh script"

# Retrieve the URL of the website deployed on Github Pages
cd $MY_REPO
export GITHUB_OWNER=$(git remote get-url origin | sed -E 's/.*github.com[:\/]([^\/]+)\/.*/\1/')
export GH_PAGES_WEBSITE="https://${GITHUB_OWNER}.github.io/${MY_REPO}"
cd ..

echo $GH_PAGES_WEBSITE

# Define the URL of the notebook
NOTEBOOK_DOWNLOAD_URL="${GH_PAGES_WEBSITE}/${NOTEBOOK_PATH}"

echo $NOTEBOOK_DOWNLOAD_URL

# Download the notebook directly using curl, straight into the cloned repository
# folder (so relative paths for images / .venv / .env all match local development)
WORK_DIR="/home/onyxia/work"
echo $NOTEBOOK_DOWNLOAD_URL
curl -fL $NOTEBOOK_DOWNLOAD_URL -o "${WORK_DIR}/${MY_REPO}/exercise.ipynb"

# Continuous Delivery of Flask Application on GCP

Create a Google App Engine application using GCP Cloud Shell environment and Configure Cloud Build to Deploy Changes on build.

## Deploy Flask App on GCP

1. Create a new project on GCP

2. Create app engine app in cloud shell:
```bash
gcloud app create
```
3. Clone the hello world sample app repo, and cd into the repo:
```bash
git clone https://github.com/GoogleCloudPlatform/python-docs-samples
cd python-docs-samples/appengine/standard_python37/hello_world
```
4. create and source the virtual environment:
```bash
virtualenv --python $(which python) venv
source venv/bin/activate
```
5. install packages:
```bash
pip install -r requirement.txt
```

6. run flask locally:
```bash
python main.py
```

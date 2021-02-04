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

7. update main.py
```python
from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    """Return a friendly HTTP greeting."""
    return 'Hello I like to make AI Apps'

@app.route('/name/<value>')
def name(value):
    val = {"value": value}
    return jsonify(val)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)
```

8. Deploy the flask app:
```bash
gcloud app deploy
```
    it should look like this:
    ```bash
    Setting traffic split for service [default]...done.
    Deployed service [default] to [https://helloml-xxx.appspot.com]
    You can stream logs from the command line by running:
      $ gcloud app logs tail -s default

      $ gcloud app browse
    (venv) noah_gift@cloudshell:~/python-docs-samples/appengine/standard_python37/hello_world (helloml-242121)$ gcloud app
     logs tail -s default
    Waiting for new log entries...
    ```

## Continuous delivery setup

install:
	pip install -r requirement.txt

lint:
	pylint --disable=R,C main.py

deploy:
	gcloud app deploy

all: install lint test 

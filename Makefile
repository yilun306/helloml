install:
	pip install -r requirement.txt

lint:
	pylint --disable=R,C main.py

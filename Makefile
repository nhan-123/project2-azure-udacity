setup:
	python3 -m venv ~/.flask-ml-azure
	#source ~/.flask-ml-azure/bin/activate
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	#python -m pytest -vv app.py


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	#pylint --disable=R,C app.py

all: install lint test

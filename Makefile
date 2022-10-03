install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
format:
	#format code
	black *.py apps/*.py
lint:
	#flake8 or pylint
	pylint --disable=R,C *.py  
test:
	#test
	python -m pytest -vv --cov=.
	#build container
deploy:
	#deploy
all: install format lint test deploy
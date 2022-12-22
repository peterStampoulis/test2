install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	
test:
	#python -m pytest -vv test_hello.py
	python -m pytest -vv test_*.py

format:	
	black *.py *.py

lint:
	pylint --disable=R,C *.py

	
all: install lint test
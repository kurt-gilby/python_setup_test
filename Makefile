install:
	python -m pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C run.py

test:
	python -m pytest --vv --cov=run test_run.py

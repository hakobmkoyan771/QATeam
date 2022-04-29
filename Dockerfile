FROM python

RUN pip install pytest

WORKDIR /TestingJobs

COPY . .

CMD ["pytest -v -f /TestingJobs/test_homework.py"]

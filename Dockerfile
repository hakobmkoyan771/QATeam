FROM python

RUN pip install pytest

WORKDIR /TestJobs

COPY ./GitRepo .

COPY ./test_sample.py .

CMD ["pytest", "/TestJobs/"]

FROM python

RUN pip install pytest

WORKDIR /TestingJobs

COPY . .

CMD ["pytest", "-v /TestingJobs/GitRepo/Python"]

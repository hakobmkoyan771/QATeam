FROM python

RUN pip install pytest

WORKDIR /TestJobs

COPY ./Python .

COPY ./

FROM python

RUN pip install pytest

WORKDIR ["mkdir /TestAnswers"]

WORKDIR /TestJobs

COPY . .

CMD ["pytest", "/TestJobs/", "> /TestAnswers/answers.txt"]

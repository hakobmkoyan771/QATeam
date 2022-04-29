FROM python

RUN pip install pytest

WORKDIR /TestAnswers

WORKDIR /TestJobs

COPY . .

CMD ["pytest", "/TestJobs/", "> /TestAnswers/answers.txt"]

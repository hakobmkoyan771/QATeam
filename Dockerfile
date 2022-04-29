FROM python

RUN pip install pytest

RUN mkdir /TestAnswers

WORKDIR /TestJobs

COPY . .

CMD ["pytest", "/TestJobs/", "> /TestAnswers/answers.txt"]

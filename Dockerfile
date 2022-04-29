FROM python

RUN pip install pytest

WORKDIR /TestJobs

COPY . .

CMD ["pytest", "/TestJobs/", "> /TestAnswers/answers.txt"]

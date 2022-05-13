FROM python
RUN pip install Flask
RUN pip install pytest

WORKDIR /TestingJobs

COPY . .

CMD ["pytest", "/TestingJobs/test_homework.py", "-v"]

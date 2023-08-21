# docker file for fastapi application

FROM python:3.8-slim-buster

# set working directory

WORKDIR /app


# install dependencies

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

# copy project

COPY . .

# run  main app application.py with uvicorn

CMD ["uvicorn", "application:app", "--host", "0.0.0.0", "--port", "8000"]








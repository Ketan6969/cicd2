FROM python:3.9 AS build

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

#---------------------------Stage 1 end---------------------------

FROM python:3.11-slim-buster

WORKDIR /app

COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.11/site-packages

COPY --from=build /app /app

EXPOSE 5000

CMD [ "python" , "pookie/main.py" ]

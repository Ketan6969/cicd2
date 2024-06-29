#base image
FROM python:lateset

# Setting the working dir in the container
WORKDIR /app

#Copying the Requirements file 
COPY requirements.txt .

#installing the requirements
RUN pip install -r requirements.txt

#Copying the application code into the container
COPY . .

#Exposing the port 5000
EXPOSE 5000

#
CMD [ "python" , "main.py"]

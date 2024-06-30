#base image
FROM python:3.10.12

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
CMD [ "python" , "pookie/main.py"]

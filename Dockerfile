#we use python as our base image as we are building a python app
FROM python:3.8

#we add the python app from our curren hos directory to our current directory in the container
ADD main.py .

#install our dependencies to run the app which are requests and beautifulsoup4
RUN pip install requests beautifulsoup4

#execute our python app inside the container
CMD [ "python", "./main.py" ]
 
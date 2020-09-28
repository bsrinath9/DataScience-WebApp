FROM python:3-alpine

#creating app directory
WORKDIR /app 


#Install app dependencies
COPY src/requirements.txt  ./

RUN pip install -r requirements.txt 

#Bundle app source
COPY src /app 

EXPOSE 8501


CMD ["python","app.py"]
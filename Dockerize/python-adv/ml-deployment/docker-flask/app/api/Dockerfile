# syntax=docker/dockerfile:1
FROM python:3.8

#Copying requirements
COPY requirements.txt .

#Installing nessecary requirements present in requirements.txt
RUN pip install -r requirements.txt

# Pre-download NLTK resources for improved runtime performance
RUN python -c "import nltk; nltk.download('omw-1.4'); nltk.download('wordnet')"

#Copying the application related files
COPY . .

#Exposing Common Flask Application port
EXPOSE 5000

# Running the flask application from local route and with port

CMD ["flask","run","--host=0.0.0.0","--port=5000"]
FROM python:3.8-slim 
WORKDIR /web
COPY . .
RUN pip install flask redis
EXPOSE 2000
CMD ["python", "count.py"]
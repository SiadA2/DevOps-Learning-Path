FROM python:3.8-alpine 

WORKDIR /web

COPY . .

RUN pip install flask redis

RUN addgroup -S group && adduser -S user -G group

RUN chown -R user:group /web

EXPOSE 2000

USER user

CMD ["python", "count.py"]
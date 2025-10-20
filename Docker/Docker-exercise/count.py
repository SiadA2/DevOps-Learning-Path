import os
from flask import Flask, render_template, render_template_string
import redis

app = Flask(__name__, template_folder='templates', static_folder='static')
redis_host = os.getenv('REDIS_HOST', 'redis')
redis_port = int(os.getenv('REDIS_PORT', 6379))
r = redis.Redis(host=redis_host, port=redis_port)

@app.route('/')
def welcome_message():
    return render_template('index.html')

@app.route('/count')
def web_count():
    count = r.incr('counter')
    return render_template('index-count.html', count=count)


if __name__ == '__main__':
    app.run(
        host='0.0.0.0', 
        port=2000
        )
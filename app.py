from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Second version of web app'

app.run(host='0.0.0.0', port=8000)

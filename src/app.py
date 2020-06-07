import os

from flask import Flask


app = Flask(__name__)


@app.route("/cats", methods=['GET'])
def cats():
    return "Cats are awesome!"


@app.route("/dogs", methods=['GET'])
def dogs():
    return "Dogs are cute!"
    

@app.route("/message", methods=['GET'])
def message():
    message = os.environ.get('MESSAGE')
    
    if os.environ.get('MESSAGE') is None:
        app.logger.warning('No MESSAGE environment variable found.')
        
        return 'No message here...'
       
    return message


app.run(host='0.0.0.0')


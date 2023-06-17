import subprocess
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello_world():
    out = subprocess.check_output("ip a | grep 'inet'", shell=True)
    return out

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')

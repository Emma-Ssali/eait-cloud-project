from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return """
    <h1>EAIT Student Portal</h1>
    <p>Course Registration Open</p>
    """

app.run(host='0.0.0.0', port=5000)

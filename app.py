import os
from flask import Flask
from buzz import generator

app = Flask(__name__)

@app.route("/")
def generate_buzz():
<<<<<<< HEAD
    f = open("website.txt","r")
=======
    f=open("website.txt","r")
>>>>>>> e3e014d6aa57c40b83b22facada4dc1121bba6f9
    page = f.read()
    return page

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=int(os.getenv('PORT', 5000)))

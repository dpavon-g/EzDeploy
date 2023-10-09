from flask import Flask, render_template, jsonify, request
import requests

app = Flask(__name__)

# Ruta de inicio
@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
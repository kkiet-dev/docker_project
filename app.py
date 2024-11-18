from flask import Flask, render_template
import subprocess

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/start_game')
def start_game():
    # Chạy trò chơi Pygame
    subprocess.Popen(["python", "main.py"])
    return "Trò chơi đang chạy!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

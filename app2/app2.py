from flask import Flask, render_template

app = Flask(__name__)


# Оба адреса возвращают имя экземпляра через общий шаблон.
@app.get('/')
@app.get('/hello')
def hello_world():
    return render_template('index.html', source_app='app2')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

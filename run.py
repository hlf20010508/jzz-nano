from sanic import Sanic
from sanic.response import json
from sanic_jinja2 import SanicJinja2 as sj
from ezmysql import ConnectionAsync
import json as cjson

try:
    config_file = open('config.json', 'r')
except:
    print('未找到数据库配置文件，请先运行config.py')
    print('python config.py')
    exit()
config = cjson.load(config_file)
config_file.close()
host = config['host']
database = config['database']
user = config['user']
password = config['password']

# create connection
db = ConnectionAsync(
    host,
    database,
    user,
    password,
)

app=Sanic(__name__)
tp=sj(app,pkg_name="run")
app.static('/static', './static/')


@app.route('/', methods=['POST', 'GET'])
@tp.template('index.html')
async def index(request):
    return
    # if request.method == 'POST':
    #     username = request.form['username'][0]
    #     password = request.form['password'][0]
    #     print('request:', request.form)
    #     print('password:', password)
    #     # data['password'] = password


@app.route('/get/marketnavi2c', methods=['GET'])
async def marketnavi2c(request):
    result = await db.query('select * from marketnavi2c')

    _data = {
        "navi": [],
        "img": '/static/img/market2c_images/2.jpg'
    }

    classes = []
    for i in result:
        if i['class'] not in classes:
            classes.append(i['class'])

    for i in classes:
        subs = []
        for j in result:
            if j['class'] == i:
                subs.append({
                    "name": j['name'],
                    "url": "",
                })
        _data['navi'].append({
            "name": i,
            "subs": subs,
        })
    return json(_data)


@app.route('/get/marketnavi2b', methods=['GET'])
async def marketnavi2b(request):
    result = await db.query('select * from marketnavi2b')

    _data = {
        "navi": [],
        "img": '/static/img/market2b_images/1.jpg'
    }

    classes = []
    for i in result:
        if i['class'] not in classes:
            classes.append(i['class'])

    for i in classes:
        subs = []
        for j in result:
            if j['class'] == i:
                subs.append({
                    "name": j['name'],
                    "url": "",
                })
        _data['navi'].append({
            "name": i,
            "subs": subs,
        })
    return json(_data)


@app.route('/get/culturalcreative', methods=['GET'])
async def culturalcreative(request):
    resultl = await db.query('select * from culturalcreativel')
    resultr = await db.query('select * from culturalcreativer')

    _data = {
        "itemsL": [],
        "itemsR": [],
    }

    for i in resultl:
        item = {
            "name": i['name'],
            "icon": i['icon'],
            "imgs": i['imgs'].split(', ')
        }
        _data['itemsL'].append(item)

    for i in resultr:
        item = {
            "name": i['name'],
            "authorName": i['authorName'],
            "img": i['img'],
            "url": i['url'],
        }
        _data['itemsR'].append(item)

    return json(_data)


@app.route('/get/marketproductrecommend2b', methods=['GET'])
async def marketproductrecommend2b(request):
    result = await db.query('select * from market2b')

    _data = {
        "items": []
    }

    for i in result:
        _data['items'].append({
            "name": i['name'],
            "time": i["time"],
            "img": i["img"],
            "description": i['description'],
            "contact": i['contact'],
            "unitPrice": '¥'+str(i['unitPrice'])+'/'+i['unit'],
            "location": i['location'],
            "company": i['company'],
        })
    return json(_data)


@app.route('/get/marketproductrecommend2c', methods=['GET'])
async def marketproductrecommend2c(request):
    result = await db.query('select * from market2c')

    _data = {
        "items": []
    }

    for i in result:
        _data['items'].append({
            "name": i['name'],
            "img": i["img"],
            "price": i['price'],
            "url": i['url'],
        })
    return json(_data)


if __name__ == '__main__':
    app.run(
        host='0.0.0.0',
        port=8080,
        debug=True
    )

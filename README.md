# GET/POST
GET/POSTで受信したデータをログ出力する。

## GETリクエスト
```
$ curl "http://localhost:3000/get?id=1&name=山田太郎"
# or
$ curl http://localhost:3000/get?id=1\&name=山田太郎
# 注意点：「&」をエスケープする
```

```
$ curl "http://localhost:3000/get_and_params/1?id=1&name=山田太郎"
$ curl "http://localhost:3000/get_and_params/1/2?id=1&name=山田太郎"
```

## POSTリクエスト
```
$ curl http://localhost:3000/post -X POST \
-H "X-Auth-Token:fc81aaa6-98a1-9ab0-94ba-aba9a89aa9ae" \
-H 'Content-Type:application/json' \
-d '{"id":1,"name":"山田太郎"}'
```

## Controller
[app/controllers/test_controller.rb](https://github.com/NaokiIshimura/rails_sample_getpost/blob/master/app/controllers/test_controller.rb)

## Routing
[config/routes.rb](https://github.com/NaokiIshimura/rails_sample_getpost/blob/master/config/routes.rb)

class TestController < ApplicationController

  def get
    puts '>>> params'
    p params[:id]
    p params[:name]
    head 200
  end


  #skip_before_filter :verify_authenticity_token
  protect_from_forgery :except => ["post"]

  def post
    puts '>>> params'
    p params

    # ヘッダー内の「X-Auth-Token」を取得する
    puts '>>> headers'
    p request.headers["X-Auth-Token"]

    # jsonをParseする
    puts '>>> json'
    p json_request = JSON.parse(request.body.read)
    p json_request["id"]
    p json_request["name"]

    head 200

  end

end

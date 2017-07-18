require 'json'

class ArticlesController < ApplicationController

  # 最新トピック10件分を取得
  get '/articles/topics.json' do
    content_type :json, :charset => 'utf-8'
    topics = Article.order("created_at DESC").limit(10)
    topics.to_json(:root => false)
  end

  # トピック投稿
  post '/articles/topic' do
    # リクエスト解析
    reqData = {
        title: "today's dialy",
        content: "It's a sunny day."
    }
    # reqData = JSON.parse(request.body.read.to_s)
    title = reqData[:title]
    content = reqData[:content]

    # データ保存
    topic = Article.new
    topic.title = title
    topic.content = content
    topic.save

    # レスポンスコード
    status 202

  end

  ##　投稿を取得
  get '/articles/show' do
    @articles = Article.order("created_at DESC").limit(10)
    erb :'articles/index'
  end

  # post '/articles/edit' do
  #   body = request.body.read
  #
  #   if body == ''
  #     status 400
  #   else
  #     body.to_json
  #   end
  # end

  # GET: /articles/new
  get "/articles/new" do
    erb :"/articles/new.html"
  end

  # POST: /articles
  post "/articles" do
    redirect "/articles"
  end

  # GET: /articles/5
  get "/articles/:id" do
    erb :"/articles/show.html"
  end

  # GET: /articles/5/edit
  get "/articles/:id/edit" do
    erb :"/articles/edit.html"
  end

  # PATCH: /articles/5
  patch "/articles/:id" do
    redirect "/articles/:id"
  end

  # DELETE: /articles/5/delete
  delete "/articles/:id/delete" do
    redirect "/articles"
  end
end

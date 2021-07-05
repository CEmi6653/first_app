class PostsController < ApplicationController

  def index # indexアクションを定義した
   @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
  end
  def create
    Post.create(content: params[:content])
  end
end


#データを保存するための記述
◯◯.save
◯◯.create
の２通り

createはクラスメソッド      #生物 息をする
saveはインスタンスメソッド   #ディープインパクト 競馬場を走る

class Post
end

Post.create
Post.save => error

post = Post.new
post.save
post.create => error








class Human
  attr_accessor :name, :weight

  def save #instance method
  end

  def self.create #class method
  end

end


yogo = Human.new(name: "takuya", weight: "67kg")

Human.speck
yogo.speck => error

Human.rub => error
yogo.run


yogo = Human.new(name: "takuya", weight: "67kg")
yogo.save

Human.create(name: "takuya", weight: "67kg")
class PostimagesController < ApplicationController

    #ここでは、new アクションを実装します。画像投稿の画面を表示するアクションメソッドです。
    #@post_image には form_with に渡すための「空のモデル」を用意したいです。「空のモデル」を代入するために、「XXX」となっている部分を埋めてみましょう。
  def new
    @post_image = PostImage.new
  end


  # 投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_image_path
  end
  
  
  def index
  end
  
  
  def show
  end
  
  
  def destroy
  end
  
  # 投稿データのストロングパラメータ
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end

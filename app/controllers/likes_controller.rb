class LikesController < ApplicationController
    def index
      @like_items = current_user.like_ids
    end
  
    def create
      like = Like.new #Likeクラスのインスタンスを作成
      like.user_id = current_user.id #current_userのidを変数に代入
      like.item_id = params[:item_id]
      
      if like.save #likeが保存できているかどうかで条件分岐
        redirect_to item_path(like.item_id), success: 'いいねしました'
      else
        redirect_to root_path, danger: 'いいねに失敗しました'
      end
    end
  
    def destroy
      @like = Like.find_by(user_id: current_user.id, item_id: params[:item_id])
      @like.destroy
      redirect_to items_path, success: 'いいねを取り消しました'
    end
  end
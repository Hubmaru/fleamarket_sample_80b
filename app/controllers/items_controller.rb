class ItemsController < ApplicationController
  before_action :get_category, only: [:new, :create, :edit, :show, :update]
  before_action :get_size, only: [:new, :create, :show, :edit, :update]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :ensure_current_user, only:[:edit, :update]


  def index
    @items = Item.includes(:images).order('created_at DESC')
  end

  def show
    @user = User.find(@item.seller_id)
    @items = Item.includes(:images).order('created_at DESC')
    @next_item = Item.where("id > ?", @item).order("id ASC").first
    @prev_item =Item.where("id < ?", @item).order("id DESC").first
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '商品を出品しました'
    else
      redirect_to new_item_path, alert: '必須事項を入力してください'
    end
  end

  def edit
    grandchild_category = @item.category
    child_category = grandchild_category.parent


    @category_parent_array = []
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end

    @category_children_array = []
    Category.where(ancestry: child_category.ancestry).each do |children|
      @category_children_array << children
    end

    @category_grandchildren_array = []
    Category.where(ancestry: grandchild_category.ancestry).each do |grandchildren|
      @category_grandchildren_array << grandchildren
    end
  end

  def update
    if @item.update(item_params)
      redirect_to root_path, notice: '商品を編集しました'
    else
      flash.now[:alert] = '必須事項を入力してください'
      render :edit
    end
    # exit_ids = []
    # item_params[:images_attributes].each do |a,b|
    #   exit_ids << item_params[:images_attributes].dig(:"#{a}",:id).to_i
    # end
    # ids = Image.where(item_id: params[:id]).map{|image| image.id }
    # delete__db = ids - exit_ids
    # Image.where(id:delete__db).destroy_all
    # @item.touch
  end

  def destroy
    if @item.destroy
      redirect_to root_path, notice: '商品を削除しました'
    else
      flash.now[:alert] = '商品を削除できませんでした'
      render :show
    end
  end

  def category_children
    @category_children = Category.find("#{params[:parent_id]}").children
  end

  def category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  def size_children
    @size_children = Size.find("#{params[:parent_id]}").children
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def get_category
    @category_parent = Category.where(ancestry: nil)
  end

  def get_size
    @size_parent = Size.where(ancestry: nil)
  end

  def ensure_current_user
    item = Item.find(params[:id])
    if item.seller_id != current_user.id
      redirect_to action: :index
    end
  end


  def item_params
    params.require(:item).permit(:name, :text, :price, :brand, :prefecture_id, :category_id, :size_id, :condition_id, :cost_id, :days_id, images_attributes: [:photo, :_destory, :id]).merge(seller_id: current_user.id)
  end

  def edit_params
    params.require(:item).permit(:name, :text, :price, :brand, :prefecture_id,  :size_id, :condition_id, :cost_id, :days_id, images_attributes: [:photo, :_destory, :id]).merge(seller_id: current_user.id)
  end
end

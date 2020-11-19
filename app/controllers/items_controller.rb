class ItemsController < ApplicationController

  def index
  end

  def show
    @item = Item.new
    @item = Item.find(params[:id])

    @items = Item.all

    @user = User.new
    @user = User.find(params[:id])

    @next_item2 = @item.id
    @next_item3 = Item.where("id > ?", @next_item2).order("id ASC").first
    
    @prev_item2 = @item.id
    @prev_item3 =Item.where("id < ?", @prev_item2).order("id DESC").first
    
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def purchases
  end

  def category_children
    @category_children = Category.find(params[:parent_name]).children
    respond_to do |format|
      format.html { redirect_to :root }
      format.json { render json: @category_children}
    end
  end

  def category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
    respond_to do |format|
      format.html { redirect_to :root }
      format.json { render json: @category_grandchildren}
    end
  end

  private

  def get_category
    @category_parents = Category.where(ancestry: nil)
  end


  def item_params
    params.require(:item).permit(:name, :text, :price, :shipment_source_id, :category_id, :condition_id, :cost_id, :days_to_ship_id, :seller_id, images_attributes: [:photo, :_destory, :id])
  end

end

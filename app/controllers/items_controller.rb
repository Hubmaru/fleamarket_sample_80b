class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show

    @item = Item.find(params[:id])
  
    @items = Item.all

    @user = User.find(params[:id])

    
    @next_item = Item.where("id > ?", @next_item).order("id ASC").first
    
    
    @prev_item =Item.where("id < ?", @prev_item).order("id DESC").first
    
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


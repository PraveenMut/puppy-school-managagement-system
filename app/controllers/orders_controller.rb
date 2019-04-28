class OrdersController < ApplicationController
  def new
    @puppy = Puppy.find(params[:id])
    @order = Order.new
    @order.puppy_id = @puppy.id
    @order.puppy_title = @puppy.name
    @order.puppy_price = @puppy.price
    @total_price = @puppy.price
  end

  def create
    @puppy = Puppy.find(params[:id])
    @total_price = @puppy.price

    @order = Order.new(order_params)
    @order.puppy_id = @puppy.id
    @order.puppy_title = @puppy.name
    @order.puppy_price = @puppy.price

    # if @order.valid? 
    #   customer = Stripe::Customer.create({
    #     email: params[:stripeEmail],
    #     source: params[:stripeToken]
    # })
    #   charge = Stripe::Charge.create({
    #     customer: customer.id,
    #     amount: @total_price,
    #     description: 'Rails Stripe Customer Price',
    #     currency: 'aud'
    # })
    
    if @order.save
      redirect_to puppy_path(@puppy)
    else
      @order.errors
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
    @order = @order.puppy_price
  end

  private

  def order_params
    params.permit(:first_name, :last_name, :street, :suburb, :postcode, :state, :country)
  end
end

class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new 
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    if @coupon.save
      flash[:success] = "Coupon successfully created"
      redirect_to coupon_path(@coupon)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  
  
end

class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end
    
    def show
        @coupon = Coupon.find_by(id: params[:id])
    end

    def new
    end

    def create
        redirect_to coupon_path(Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store]))
    end
end
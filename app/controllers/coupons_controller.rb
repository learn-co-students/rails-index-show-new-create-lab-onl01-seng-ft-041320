class CouponsController < ApplicationController
    before_action :set_coupon, only: [:show, :new]

    def index
        @coupons = Coupon.all
    end

    def show
    end

    def new
    end

    def create
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupon_path(@coupon)
    end

    private

        def set_coupon
            @coupon = Coupon.find_by(id: params[:id])
        end
end
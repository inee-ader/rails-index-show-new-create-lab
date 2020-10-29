class CouponsController < ApplicationController
    
    before_action :find_coupon, only: [:edit, :update, :destroy, :show]

    def index 
        @coupons = Coupon.all
    end

    def show
    end
    
    def new
        @coupon = Coupon.new
    end
    
    def create
        @coupon = Coupon.create(coupon_safety)
        redirect_to coupon_path(@coupon)
    end
    
    def edit  
    end

    def update
        @coupon.update(coupon_safety)
        redirect_to coupons_path
    end

    def destroy
        @coupon.destroy
        redirect_to coupons_path
    end

    private 

    def find_coupon
        @coupon = Coupon.find(params[:id])
    end

    def coupon_safety
        params.require(:coupon).permit(:coupon_code, :store)
    end

end
class Api::MenusController < ApplicationController
    def show
      @menu = Menu.find(params[:id])
      render json: @menu, :include => {:dishes => {methods: :discounted_price, except: [:price, :discount]}}
    end
  end
  
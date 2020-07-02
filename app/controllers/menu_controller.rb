class MenuController < ApplicationController
  def index
    @menus = Menu.includes(:dishes)
  end
end

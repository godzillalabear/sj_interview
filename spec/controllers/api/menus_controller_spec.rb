# menus_controller_spec.rb

require 'rails_helper'

RSpec.describe Api::MenusController do
  describe "GET #show" do
    before do
      @menu = Menu.create(name: "Sushi")
    end

    it "returns a 200 response" do
      expect(response).to have_http_status "200"
    end

    it "responds with JSON formatted output" do
      get :show, format: :json, params: { :id => @menu.id } 
      expect(response.content_type).to eq "application/json; charset=utf-8"
    end

  end
end

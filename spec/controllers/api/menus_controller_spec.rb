# menus_controller_spec.rb

require 'rails_helper'

RSpec.describe Api::MenusController do
  describe "GET #show" do
    let (:menu1) { create(:menu) }
    let! (:dish1) { create(:dish, menu: menu1) }
    let! (:dish2) { create(:dish, menu: menu1) }

    before do
      get :show, format: :json, params: { id: menu1.id }
    end

    it "returns a 200 response" do
      expect(response).to have_http_status "200"
    end

    it "returns a response which menu1 has two dishes" do
      expect(JSON.parse(response.body)['dishes'].count).to eq 2
    end

    it "retruns a response which every dish's discounted price should be price - discount" do
      expect(response.body).to match("discounted_price\":#{dish1.price - dish1.discount}")
    end

  end
end

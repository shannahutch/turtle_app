require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET 'hello_world'" do
    it "returns http success" do
      get 'hello_world'
      expect(response).to be_success
    end
  end

end

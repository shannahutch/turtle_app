require 'spec_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET 'helloworld'" do
    it "returns http success" do
      get 'helloworld'
      expect(response).to be_success
    end
  end

end

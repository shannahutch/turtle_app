require 'spec_helper'

# RSpec.describe PagesController, :type => :controller do

describe PagesController do

  describe "GET 'helloworld'" do
    it "returns http success" do
      get 'helloworld'
      # expect(response).to be_success
      response.should be_success
    end
  end

end

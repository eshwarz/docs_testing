require 'spec_helper'

describe DocsController do

  describe "GET 'index,reports'" do
    it "returns http success" do
      get 'index,reports'
      response.should be_success
    end
  end

end

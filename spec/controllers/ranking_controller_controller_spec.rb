require 'spec_helper'

describe RankingControllerController do

  describe "GET 'ranking'" do
    it "returns http success" do
      get 'ranking'
      response.should be_success
    end
  end

end

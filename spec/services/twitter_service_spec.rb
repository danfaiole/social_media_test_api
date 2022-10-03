require 'rails_helper'

RSpec.describe "TwitterService" do
  let(:good_response) do
    OpenStruct.new({
      code: 200,
      body: { test: '123' }.to_json
    })
  end
  let(:bad_response) do
    OpenStruct.new({
      code: 500,
      body: "I'm in a world of API"
    })
  end

  describe ".update" do
    context "when a request is avaliable" do
      before do
        allow(HTTParty).to receive(:get).and_return(good_response)
      end

      it "saves the request in the cache" do
        expect { TwitterService.update }.to change { Twitter.count }.by(1)
      end
    end

    context "when the endpoint does not respond" do
      before do
        allow(HTTParty).to receive(:get).and_return(bad_response)
      end

      it "saves the request in the cache" do
        expect { TwitterService.update }.to_not change { Twitter.count }
      end
    end
  end
end
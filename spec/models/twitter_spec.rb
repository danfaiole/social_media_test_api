require 'rails_helper'

RSpec.describe Twitter, type: :model do
  let(:default_error) { [{ error: "We are having some problems getting data", status: 503 }] }
  let(:default_response) do
    [
      {"username"=>"@foo", "tweet"=> "foo" },
      {"username"=>"@bar", "tweet"=> "bar"}
    ]
  end

  context "field validations" do
    it { is_expected.to validate_presence_of(:response_body) }
  end

  describe ".last_request" do
    context "when there is no register" do
      let(:value) { described_class.last_request }

      it "returns an array with an error" do
        expect(value).to eq(default_error)
      end
    end

    context "when there is registers" do
      before do
        Twitter.create(response_body: default_response)
      end
      let(:value) { described_class.last_request }

      it "returns an array with last response from endpoint" do
        expect(value).to eq(default_response)
      end
    end
  end
end

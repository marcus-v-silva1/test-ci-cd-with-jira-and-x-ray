require "rails_helper"

RSpec.describe "Sums API", type: :request do
  it "returns the sum" do
    post "/sums", params: { a: 2, b: 3 }

    expect(response).to have_http_status(:ok)
    expect(JSON.parse(response.body)).to eq({ "result" => 5 })
  end
end

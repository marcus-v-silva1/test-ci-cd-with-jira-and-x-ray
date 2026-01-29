require "rails_helper"

RSpec.describe "Sums API", type: :request do
  it "returns the sum" do
    post "/sum", params: { a: 4, b: 6 }
    expect(response).to have_http_status(:ok)
    expect(JSON.parse(response.body)["result"]).to eq(10)
  end

  it "returns error for invalid input" do
    post "/sum", params: { a: 2, b: "x" }
    expect(response).to have_http_status(:bad_request)
  end
end

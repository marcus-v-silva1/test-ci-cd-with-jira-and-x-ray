class SumsController < ApplicationController
  def create
    a = params[:a]
    b = params[:b]

    return render json: { error: "Invalid input" }, status: :bad_request unless a.is_a?(Numeric) && b.is_a?(Numeric)

    render json: { result: a + b }
  end
end

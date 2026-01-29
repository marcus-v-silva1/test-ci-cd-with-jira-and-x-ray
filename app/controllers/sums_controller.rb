class SumsController < ApplicationController
  def create
    a = params[:a]
    b = params[:b]

    return render json: { error: "invalid params" }, status: :bad_request unless a && b

    result = a.to_i + b.to_i

    render json: { result: result }, status: :ok
  end
end

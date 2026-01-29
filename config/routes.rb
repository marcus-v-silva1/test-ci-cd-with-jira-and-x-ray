Rails.application.routes.draw do
  post "/sums", to: "sums#create"
end

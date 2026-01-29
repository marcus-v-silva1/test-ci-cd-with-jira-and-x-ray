Rails.application.routes.draw do
  post "/sum", to: "sums#create"
end

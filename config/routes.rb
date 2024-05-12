Rails.application.routes.draw do
  # Defines the root path route ("/")
  get "tracker/index"
  get "tracker/show"
  post "tracker/create_all"
end

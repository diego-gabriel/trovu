Trovu::Application.routes.draw do
  get "/" => "trovu#index"

  match '/search', to: 'trovu#search', via: "post"
  root "trovu#index"
end

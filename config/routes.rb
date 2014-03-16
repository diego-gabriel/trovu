Trovu::Application.routes.draw do
  get "/" => "trovu#index"
  get "/almuerzo_cena" => "trovu#alCen" 
  get "/desayuno_merienda" => "trovu#desMer"
  get "/mas_cercanos" => "trovu#masCercanos"
  get "/top10" => "trovu#top10"
  get "/destacados" => "trovu#destacados"
  get "/nuevos" => "trovu#nuevos"
  match '/search', to: 'trovu#search', via: "get"
  root "trovu#index"
end

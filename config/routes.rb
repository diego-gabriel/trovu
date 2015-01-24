Trovu::Application.routes.draw do

  get '/admin', to: 'admin#index', as: '/' 
  resources :empresas do 
    resources :sucursals do
      resources :menu_entries
    end
    get "/suscripciones" => 'empresas#suscriptions'
    post "/count_a_view" => 'empresas#count_a_view'
  end

  get "admin/index"
  get "/" => "trovu#index"
  get "/almuerzo_cena" => "trovu#alCen" 
  get "/desayuno_merienda" => "trovu#desMer"
  get "/mas_cercanos" => "trovu#masCercanos"
  get "/top10" => "trovu#top10"
  get "/destacados" => "trovu#destacados"
  get "/nuevos" => "trovu#nuevos"
  get "/conocenos" => "trovu#conocenos"
  get "/legal" => "trovu#legal"
  get "/contactanos" => "trovu#contactanos"
  get "/faq" => "trovu#faq"
  get "/locales" => "trovu#locales"
  match '/search', to: 'trovu#search', via: "get"
  root "trovu#index"
end

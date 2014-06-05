PursayDemo::Application.routes.draw do
  root :to => "pages#home"
  resources :inquiries
end

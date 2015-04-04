Rails.application.routes.draw do
  devise_for :users
  resources :cattabs

  resources :subcats
  resources :menus
  root 'home#index'
  resources :categories
  get 'menu/:id/categories'=>"home#menu_category",:as=>"menu_cat"
  get 'categories/:id/subcats'=>"home#cat_subcat",:as=>"cat_subcat"
  get 'menu/categories/new/:id'=>"categories#new",:as=>"add_cat_menu"
  get 'categories/subcats/new/:id'=>"subcats#new",:as=>"add_cat_subcat" 
  get "subcats/cattabs/new/:id"=>"cattabs#new",:as=>"add_subcat_cattabs"
  get 'subcats/:id/cattabs'=>"home#subcat_tabs",:as=>"subcat_tabs"

end

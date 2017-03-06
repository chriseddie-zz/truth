Rails.application.routes.draw do

  get 'index' => 'welcome#index'
  get 'drum' => 'welcome#drum'
  get 'build' => 'welcome#build'
  get 'company' => 'welcome#company'
  get 'contact' => 'welcome#contact'
  get 'shop' => 'welcome#shop'
  get 'admin' => 'welcome#admin'
  get 'terms' => 'welcome#terms'
  get 'support' => 'welcome#support'
  get 'welcome/content'

  resources :artists
  resources :contents
  resources :drums

  root 'welcome#index'

end

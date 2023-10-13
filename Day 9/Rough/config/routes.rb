Rails.application.routes.draw do

  # http://localhost:3000/rake-ui/rake_tasks
  if defined? RakeUi::Engine
    mount RakeUi::Engine => "/rake-ui"
  end

  get 'p/:id', to: 'users#show'

  get 'users/index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



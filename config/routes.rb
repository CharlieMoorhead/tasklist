Tasklist::Application.routes.draw do

  resources :tasks, :only => [:new, :index, :create]

end

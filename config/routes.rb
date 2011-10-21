FotosWeb::Application.routes.draw do

  resources :fotos, :only => [:index, :create, :destroy]

end

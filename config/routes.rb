Rails.application.routes.draw do
  get 'users/index'
  devise_for :users,
             path: '',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
             },
             controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
             }
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',   to: 'users#show',   via: 'get'
end

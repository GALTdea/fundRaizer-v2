Rails.application.routes.draw do

  resources :users
  resources :campaign_pages
  resources :waitlists


  # get 'sponsors/index'

  # get 'sponsors/show'

  # get 'sponsors/new'

  # get 'sponsors/edit'

  resources :sponsors

  # devise_for :users
  
  root to: "pages#welcome"
  
  # get 'proposals/Index'

  # get 'proposals/Show'

  # get 'proposals/Edit'

  # get 'proposals/New'

# namespace :org do
#     root "org", to: "org#show"
# end


  # get 'event_pages/index'

  # get 'event_pages/show'

  # get 'event_pages/edit'

  # get 'event_pages/update'




  namespace :admin do
    resources :orgs
    resources :businesses
    resources :events
    resources :users
    resources :event_pages
    
    root to: "orgs#index"
  end

  # get 'events/index'

  # get 'events/show'

  # get 'events/edit'

  # resources :events

  # get 'orgs/index'

  get 'orgs/show'

  # devise_for :orgs
  # devise_for :businesses


  devise_for :businesses, path: 'businesses',  controllers: {
        sessions: 'businesses/sessions',
        registrations: "businesses/registrations",
        confirmations: "businesses/confirmations",
        passwords: "businesses/passwords",
        unlocks: "businesses/unlocks",

      }

  devise_for :orgs, path: 'orgs', controllers: {
        sessions: 'orgs/sessions',
        registrations: "orgs/registrations",
        confirmations: "orgs/confirmations",
        passwords: "orgs/passwords",
        unlocks: "orgs/unlocks",

      }


  devise_for :users, path: 'users', controllers: {
        sessions: 'users/sessions',
        registrations: "users/registrations",
        confirmations: "users/confirmations",
        passwords: "users/passwords",
        unlocks: "users/unlocks",

  }




 resources :businesses
 resources :orgs

  

  get 'pages/welcome'

  get 'pages/about'

  get 'pages/home'
  
  get 'pages/ourcause'


  resources :businesses do
    resources :events
  end

  resources :orgs do
    resources :events
    resources :proposals
  end

  resources :events do
    member do
      patch :confirmation
      put :confirmation
    end
  end

resources :event_pages



resources :proposals do
  resources :bids
end







  # get 'businesses/index'

  # get 'businesses/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

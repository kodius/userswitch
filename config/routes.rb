Rails.application.routes.draw do
  get '/change-user/:id' => 'userswitch/switch#switch_user'
end

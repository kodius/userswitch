Rails.application.routes.draw do
  get '/change-user/:id&:role' => 'userswitch/switch#switch_user'
end

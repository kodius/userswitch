require "userswitch/version"

module Userswitch
  # Your code goes here...
  def self.initialize_switch_users
    User.where('id < 0')
  end
end

require 'userswitch'
require 'rails'

module Userswitch
  class Railtie < Rails::Railtie
    railtie_name :userswitch

    rake_tasks do
      load 'tasks/userswitch.rake'
    end
  end
end

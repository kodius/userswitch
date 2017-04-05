require 'userswitch/version'
require 'userswitch/engine'
require 'userswitch/railtie' if defined?(Rails)

module Userswitch
  def initialize_switch_users
    # if File.directory?('config/userswitch.yml')
      YAML.load_file('config/userswitch.yml')
    # else
    #   raise 'Havent created config/userswitch.yml file try running rake userswitch:create_file'
    # end
  end

  def create_button_from_user(current_user_id)
    ceo_html = ''
    switch_users_yml = initialize_switch_users
    raise 'config/userswitch.yml is empty' unless switch_users_yml
    roles = switch_users_yml['Roles']
    users = switch_users_yml['SwitchUsers']
    raise 'UserSwitch no roles defined in config/userswitch.yml' if roles.nil?
    raise ' UserSwitch no users defined in config/userswitch.yml' if users.nil?

    users.each do |user|
      role = user.last['role']
      raise "#{user.first} has no role" if role.nil?
      color = btn_color(roles[role])
      id = user.last['id']
      raise "UserSwitch #{user.first} has no id" if id.nil?
      color.gsub!('-outline', '') if id == current_user_id
      name = user.last['name']
      raise "UserSwitch #{user.first} has no name" if name.nil?
      ceo_html += "<a href=\"/change-user/#{id}&#{role}\" class=\"btn #{id} #{color}\">#{name}</a> \n"
    end
    ceo_html.html_safe
  end

  def btn_color(color)
    case color
    when 'red'
      'btn-outline-danger'
    when 'dark-blue'
      'btn-outline-primary'
    when 'light-blue'
      'btn-outline-info'
    when 'green'
      'btn-outline-success'
    when 'yellow'
      'btn-outline-warning'
    when 'gray'
      'btn-outline-basic'
    when 'white'
      'btn-outline-default'
    else
      'btn-outline-primary'
    end
  end

  def users(current_user)
    create_button_from_user(current_user.id)
  end

  module_function :users,
                  :create_button_from_user,
                  :initialize_switch_users,
                  :btn_color
end

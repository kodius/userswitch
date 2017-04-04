require 'userswitch/version'
require 'userswitch/engine'

module Userswitch
  def initialize_switch_users
    YAML.load_file('config/file.yml')
  end

  def create_button_from_user
    ceo_html = ''
    switch_users_yml = initialize_switch_users
    roles = switch_users_yml['Roles']
    users = switch_users_yml['SwitchUsers']
    # TODO provjeru da ih je 12
    users.each do |user|
      id = user.last['id']
      color = btn_color(roles[user.last['role']])
      ceo_html += "<a href=\"/change-user/#{id}\" class=\"btn #{id} #{color} btn-sm\">#{user.last["name"]}</a> \n"
    end
    ceo_html.html_safe
  end

  def btn_color(color)
    case color
    when 'red'
      'btn-danger'
    when 'dark-blue'
      'btn-primary'
    when 'light-blue'
      'btn-info'
    when 'green'
      'btn-success'
    when 'yellow'
      'btn-warning'
    when 'gray'
      'btn-basic'
    when 'white'
      'btn-default'
    else
      'btn-primary'
    end
  end

  def users
    create_button_from_user
  end

  module_function :users,
                  :create_button_from_user,
                  :initialize_switch_users,
                  :btn_color
end

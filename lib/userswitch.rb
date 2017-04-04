require 'userswitch/version'
require 'userswitch/engine'

module Userswitch
  def initialize_switch_users
    # AdminUser.where('id < 0')
    # TODO ovo ce ucitat iz file-a ili seedova sere, Adminusere itd.
    # nece bit where
    User.where('id < 0')
  end

  def create_button_from_user
    ceo_html = ''
    initialize_switch_users.each do |user|
      # pogleda koja je rola, ovisno o roli dodjelimo clase iz html-a css-a
      ceo_html += "<a href=\"/change-user/#{user.id}\" class=\"btn #{user.id} btn-outline btn-info btn-sm\">#{user.email}</a> \n"
    end
    ceo_html.html_safe
  end

  def users
    create_button_from_user
  end

  module_function :users, :create_button_from_user, :initialize_switch_users
end

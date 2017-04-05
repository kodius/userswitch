namespace :userswitch do
  desc 'create yml file'

  task :create_file do
    path = 'config/userswitch.yml'
    content = "## available colors: [red, dark-blue, light-blue, green, yellow, gray, white]
    # name of role: color_name(need to be spelled right)
    # 12 roles max
    Roles:
      # admin: red
      User: dark-blue
      Coach: green
      Employer: yellow
    # 12 SwitchUsers max
    SwitchUsers:
      User1:
        id: -1
        name: Tin
        role: User
      #
      User2:
        id: -2
        name: Bla
        role: User
      #
      User3:
        id: -3
        name: Mirko
        role: Coach
      #
      User4:
        id: -4
        name: Dean
        role: Employer"
    File.open(path, "w+") do |f|
      f.write(content)
    end
  end
end

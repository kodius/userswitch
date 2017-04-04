# Userswitch

[![Gem Version](https://badge.fury.io/rb/userswitch.svg)](https://badge.fury.io/rb/userswitch)

Userswitch is a Rails plugin for switching between commonly used roles and users. It's particularly useful for development and staging environments when you often need to switch between various accounts. It saves you from the hassle of logging in or out.

## Example

By default, the gem will output a chain of buttons as follows

![pic1](https://raw.githubusercontent.com/kodius/userswitch/master/us1.png)

By clicking on a button, your Rails app will switch to a different user, that is, your session will change to that of a different account and save you the time you might otherwise spend clicking on logout links and filling in forms to log as a different user.

![pic2](https://raw.githubusercontent.com/kodius/userswitch/master/us2.png)

Different roles can have different colors so as to be more noticeable.

![pic3](https://raw.githubusercontent.com/kodius/userswitch/master/us3.png)

## How to install

Add it to your app's Gemfile and run bundle
```ruby
gem "userswitch"
```
or install it manually
```ruby
gem install userswitch
```

## How to use

Create file.yml inside you config folder.

Your file.yml should look like

```yml
## available colors: [red, dark-blue, light-blue, green, yellow, gray, white]
# name of role: color_name(need to be spelled right)
# 12 roles max
Roles:
  admin: red
  user: dark-blue
  dog: green
  cat: yellow
# 12 SwitchUsers max
SwitchUsers:
  User1:
    id: -1
    name: Marko
    role: user
  #
  User2:
    id: -2
    name: Kolinda
    role: admin
  #
  User3:
    id: -3
    name: Mirko
    role: dog
  #
  User4:
    id: -4
    name: Dean
    role: cat

```

then setup user ids you want to switch to order you wrote in the yours file.yml.
For example if you want button named Kolinda to be you AdminUser with id = 234 for example,
change your id to -2 because its ordered second and so on.

Inside of your template/view, you can call users with (showing only users from yours file.yml):

``` Userswitch.users.html_safe  ```

The above command will generate the required HTML output to make the switching work.

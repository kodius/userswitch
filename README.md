# Userswitch

[![Gem Version](https://badge.fury.io/rb/userswitch.svg)](https://badge.fury.io/rb/userswitch)

Userswitch is a Rails plugin for switching between commonly used roles and users. It's particularly useful for development and staging environments when you often need to switch between various accounts. It saves you from the hassle of logging in or out.

![alt](https://cloud.githubusercontent.com/assets/17185440/24801547/f2cb2c8a-1ba4-11e7-87a6-59911794d6c7.png)

## Example

By default, the gem will output a chain of buttons as follows

By clicking on a button, your Rails app will switch to a different user, that is, your session will change to that of a different account and save you the time you might otherwise spend clicking on logout links and filling in forms to log as a different user.

Different roles can have different colors so as to be more noticeable.

![alt](https://cloud.githubusercontent.com/assets/17185440/24800120/04b1a614-1b9f-11e7-9584-3392ca40f125.gif)

## Requirements
```ruby
gem "bootstrap"
gem "devise"
```

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
Create userswitch.yml inside you config folder with:

```ruby
rake userswitch:create_file
```

Inside of your template/view, you can call users with (showing only users from yours userswitch.yml):

```ruby
Userswitch.users(current_user)
```

The above command will generate the required HTML output to make the switching work.

# Userswitch

[![Gem Version](https://badge.fury.io/rb/userswitch.svg)](https://badge.fury.io/rb/userswitch)

Userswitch is a Rails plugin for switching between commonly used roles and users. It's particularly useful for development and staging environments when you often need to switch between various accounts. It saves you from the hassle of logging in or out.

## Example

By default, the gem will output a chain of buttons as follows

![pic1](https://cloud.githubusercontent.com/assets/8150171/24745257/45e699cc-1ab5-11e7-8064-1b978d38b896.png)

By clicking on a button, your Rails app will switch to a different user, that is, your session will change to that of a different account and save you the time you might otherwise spend clicking on logout links and filling in forms to log as a different user.

![pic2](https://cloud.githubusercontent.com/assets/8150171/24745255/45e4b396-1ab5-11e7-964a-9fd607f3895c.png)

Different roles can have different colors so as to be more noticeable.

![pic3](https://cloud.githubusercontent.com/assets/8150171/24745256/45e4f252-1ab5-11e7-82a7-a7d0a01953d6.png)

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

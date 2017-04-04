# Userswitch

[![Gem Version](https://badge.fury.io/rb/userswitch.svg)](https://badge.fury.io/rb/userswitch)

Userswitch is a Rails plugin for switching between commonly used roles and users. It's particularly useful for development and staging environments when you often need to switch between various accounts. It saves you from the hassle of logging in or out.

## Example

![pic1](us1.png)
![pic2](us2.png)
![pic3](us3.png)

## How to install

Add in Gemfile.
```ruby
gem "userswitch"
```
Or manually
```ruby
gem install userswitch
```

## How to use

Inside of your template/view, you can call users with (showing only users with negative id):

 ``` Userswitch.users.html_safe  ```



# Olive

Olive is the rails helper​ gem that enables content_for in controllers. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'olive'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install olive

## Usage
If you want to set content for view by controller:

In posts_controller.rb:

    class PostsController < ApplicationController
      before_filter :set_title

      def set_title
        content_for :page_title, "Posts"
      end
    end

In application.html.haml if you use haml gem:

    !!!
    %html
      %head
        %title = yield :page_title
        %meta{content: "width=device-width, initial-scale=1.0", name: "viewport"}
        = stylesheet_link_tag    "application", :media => "all"
        = javascript_include_tag "application"
        = csrf_meta_tags
      %body
        = yield


In application.html.erb if you use erb:

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html>
      <head>
        <title><%= yield :page_title %></title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <%= stylesheet_link_tag    "application", :media => "all" %>
        <%= javascript_include_tag "application" %>
        <%= csrf_meta_tags %>
      </head>
      <body>
        <%= yield %>
      </body>
    </html>

Say hi to @bunlongvan
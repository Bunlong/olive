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

      private
      def set_title
        content_for :page_title, "Posts"
      end
    end

In application.html.haml if you use haml gem:

    %title= yield :page_title


In application.html.erb if you use erb:

    <title><%= yield :page_title %></title>

Say hi to @bunlongvan
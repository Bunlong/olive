# Olive [![Gem Version](https://badge.fury.io/rb/olive.svg)](http://badge.fury.io/rb/olive)

Olive is the rails helper​ gem that enables to use content_for in controllers.

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
Assume we want to set page title for each page.

In posts_controller.rb:

    class PostsController < ApplicationController
      before_filter :set_title

      private
      def set_title
        content_for :page_title, "Posts"
      end
    end

If you use haml gem , application.html.haml:

    %title= yield :page_title

If you use erb, application.html:

    <title><%= yield :page_title %></title>

Say hi to @bunlongvan
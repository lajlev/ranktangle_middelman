require "zurb-foundation"

###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end


###
# Page command
###

###
# Page options, layouts, aliases and proxies
###
# page "/admin/*", :layout => "admin"
# page "/site/single_review/*", :layout => "sitenow"

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Ignores
###

# ignore 'prototype.sublime-project'

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
helpers do
  # == random_number(7, 129)
  def random_number(from_num, to_num)
    rand(from_num..to_num)
  end
end

# Set slim-lang output style
Slim::Engine.set_default_options :pretty => true

# Set template languages
set :slim, :layout_engine => :slim
# Makes slim ignore errors and don't show them in terminal when server is running.

Slim::Engine.disable_option_validator!

#set :blog_layout_engine, :slim

# Work with livereload browser extension
activate :livereload

set :build_dir, 'public'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

# Activate sync extension
# activate :sync do |sync|
#   sync.fog_provider = 'AWS' # Your storage provider
#   sync.fog_directory = 'prototype.trustpilot.com' # Your bucket name
#   sync.fog_region = 'eu-west-1' # The region your storage bucket is in (eg us-east-1, us-west-1, eu-west-1, ap-southeast-1 )
#   sync.aws_access_key_id = 'AKIAJBYOA2T7FUGLNTJA' # Your Amazon S3 access key
#   sync.aws_secret_access_key = 'MM7oIXtkYwkl6MO7axjfpLHXTfamwUZ9IK7okFtp' # Your Amazon S3 access secret
#   sync.existing_remote_files = 'delete' # What to do with your existing remote files? ( keep or delete )
#   # sync.after_build = false # Disable sync to run after Middleman build ( defaults to true )
# end
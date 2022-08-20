# frozen_string_literal: true

# name: literatecomputing_notice
# about: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0

enabled_site_setting :literatecomputing_notice_enabled

after_initialize do
  puts "initializing literatecomputing_notice"
  Discourse::VERSION::STRING = "this is bananas "
end

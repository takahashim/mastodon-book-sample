#!/usr/bin/env ruby
require 'mastodon'
require 'yaml'
require 'pp'

config = YAML.load_file("config.yml")
client = Mastodon::REST::Client.new(base_url: "https://"+config["host"],
                                    bearer_token: config["access_token"])

## とりあえず0で
since_id = 0

timeline = client.public_timeline(since_id: since_id)
timeline.each do |status|
  username = status.account.username
  content = status.content
  puts "#{username}: #{content}"
end

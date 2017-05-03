#!/usr/bin/env ruby
require 'mastodon'
require 'yaml'
require 'pp'

config = YAML.load_file("config.yml")
stream = Mastodon::Streaming::Client.new(
  base_url: "https://"+config["host"],
  bearer_token: config["access_token"])

begin
  stream.firehose do |toot|
    next if !toot.kind_of?(Mastodon::Status)
    username = toot.account.username
    content = toot.content
    puts "#{username}: #{content}"
  end
rescue EOFError => e
  puts "\nretry..."
  retry
end

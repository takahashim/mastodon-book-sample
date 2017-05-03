#!/usr/bin/env ruby
require 'mastodon'
require 'yaml'

config = YAML.load_file("config.yml")
client = Mastodon::REST::Client.new(base_url: "https://"+config["host"],
                                    bearer_token: config["access_token"])

message = "こんにちは"
response = client.create_status(message)

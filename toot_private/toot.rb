#!/usr/bin/env ruby
require 'mastodon'
require 'yaml'
require 'pp'

config = YAML.load_file("config.yml")
client = Mastodon::REST::Client.new(base_url: "https://"+config["host"],
                                    bearer_token: config["access_token"])

me = client.verify_credentials
##pp me

prev_toot = client.statuses(me.id, :limit => 1).first
##pp prev_toot

message = "こんにちは"
response = client.create_status(message, prev_toot.id, nil, "private")
##pp response

#!/usr/bin/env ruby
require 'mastodon'
require 'yaml'

config = YAML.load_file("config.yml")
client = Mastodon::REST::Client.new(base_url: "https://"+config["host"],
                                    bearer_token: config["access_token"])

message = "エラー画面の画像"
filename = "./image.png"
media = client.upload_media(filename)
response = client.create_status(message, nil, [media.id])


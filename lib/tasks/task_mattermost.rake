namespace :task_mattermost do
  desc "Mattarmostへ自動投稿"
  task :posting => :environment  do
    require "net/http"
    require "json"

    uri = URI.parse(ENV["MATTERMOST_INCOMING_WEBHOOKS_URL"])
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme === "https"
    posting_item = Post.random

    text =
"### #{posting_item.title}
#{posting_item.body}

投稿URL: #{posting_item.url}
投稿者: #{posting_item.contributor}"

    params = { text: text  }
    headers = { "Content-Type" => "application/json" }
    response = http.post(uri.path, params.to_json, headers)
    puts response.code # status code
    puts response.body
  end
end

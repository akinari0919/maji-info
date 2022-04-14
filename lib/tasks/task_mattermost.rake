namespace :task_mattermost do
  desc "Mattarmostへ自動投稿"
  task :posting => :environment  do
    require "net/http"
    require "json"

    uri = URI.parse(ENV["MATTERMOST_INCOMING_WEBHOOKS_URL"])
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme === "https"

    params = { text: Post.random.body }
    headers = { "Content-Type" => "application/json" }
    response = http.post(uri.path, params.to_json, headers)
    puts response.code # status code
    puts response.body
  end
end

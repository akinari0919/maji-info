namespace :task_mattermost do
  desc "Mattarmostへ自動投稿"
  task :posting => :environment  do
    require "net/http"
    require "json"

    uri = URI.parse(ENV["MATTERMOST_INCOMING_WEBHOOKS_URL"])
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme === "https"

    begin
      post = Post.random_from_unposted
      params = { text: post.body }
      headers = { "Content-Type" => "application/json" }
      response = http.post(uri.path, params.to_json, headers)
      post.submitted!
      Post.update_all(submitted: false) if Post.unsubmitted.empty?
      puts response.code # status code
      puts response.body
    rescue => e
      Post.update_all(submitted: false)
      puts "#{e}:エラーが発生した為、全てのpostレコードに対して未投稿状態に変更しています。"
    end
  end
end

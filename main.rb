require "sinatra"
require "pry"

get "/" do
  erb :command_line_menu
end

get "/command_line_menu" do
  erb :command_line_menu
end

get "/command_line" do
  erb :command_line
end

get "/man/:command" do
  @command = params["command"]
  @result = `man #{params["command"]}`
  erb :results
end

get "/search_menu" do
  @command = params["input_search"]
  @result = `man #{params["input_search"]}`
  erb :search_menu
end

not_found do
  status 404
  "not found"
end
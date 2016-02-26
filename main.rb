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


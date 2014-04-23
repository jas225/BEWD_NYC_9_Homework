require_relative 'reddit'
require 'pry'


def greet
  puts "Hi there, welcome to the reddit midterm project. Please enter the name of the subreddit that you want to see the posts for."
end

def sanitize_input(input)
  if input.include? ' '
    puts 'Please choose something else'
    exit
  else
    user_reddit = Reddit.new(input)
    user_reddit.get
    puts user_reddit.parsed_response
  end
end

greet
input = gets.strip
sanitize_input(input)
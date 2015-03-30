require 'bundler/setup'
Bundler.require(:default)

class HelloWorld
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello World! #{ENV['HOSTNAME']}"]]
  end
end

run HelloWorld.new

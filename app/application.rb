require 'time'
class Application 
    def call(env)
        resp = Rack::Response.new
        resp.write "Hello, WORLD!\n"
        message = Time.now.strftime("%p").to_s == "AM" ? "Good Morning!" : "Good Afternoon!"
        resp.write "#{message}"
        resp.finish

    end
end
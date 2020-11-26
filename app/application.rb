class Application
    def call(env)
        resp = Rack::Response.new
        current_time = Time.now.strftime("%k:%M")
        resp.write "It is currently #{current_time}"
        if current_time < "12:00"
            resp.write "\nGood Morning!"
        else
            resp.write "\nGood Afternoon!"
        end
        resp.finish
    end
end
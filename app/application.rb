class Application
    def call(env)
        resp = Rack::Response.new
        current_time = Time.now
        time_in_hours = current_time.strftime("%k%M")
        resp.write "It is currently #{time_in_hours}"
        if time_in_hours < "1200"
            resp.write "\nGood Morning!"
        else
            resp.write "\nGood Afternoon!"
        end
        resp.finish
    end
end
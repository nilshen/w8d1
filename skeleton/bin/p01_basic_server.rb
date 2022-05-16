require 'rack'

app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/html'
    # res.write("Hello world!")
    res.write(req.path)
    res.finish
  end



# Rack::Server.start(
#   app: Proc.new do |env|
#     ['200', {'Content-Type' => 'text/html'}, ['hello world']]
#   end
# )

Rack::Server.start(
  app: app,
  Port: 3000
)

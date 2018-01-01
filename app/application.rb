
class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new
    if req.path.match("/items")
      name = req.path.split("/items/").last
      resp.write "#{name}\n"
    else
      resp.write("File not found.\n")
      resp.status = 404
    end
    resp.finish
  end

end

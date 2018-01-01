
class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new
    if req.path == "/items"
      item_ = req.path.split("/items/").last
      it = @@items.find {|i| i.name == item_}
      it.price
    else
      resp.write("File not found.\n")
      resp.status = 404
    end
    resp.finish
  end

end

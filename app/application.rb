class Application

def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
 
   if req.path.match(/items/)
 
      item_price = req.path.split("/items/").last #turn /songs/Sorry into Sorry
      price = @@items.find{|s| s.price == item_price}
 
      resp.write item.price
    # if req.path=="/items"
    #   resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end
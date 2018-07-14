class Application

def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
 
   if req.path.match(/items/)
 
      song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
      song = @@items.find{|s| s.price == item_title}
 
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
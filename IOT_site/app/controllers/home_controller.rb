class HomeController < ApplicationController
  
  def index
    # load_turtles
    # @turtles = Turtles.all
  end

  # def load_turtles  
  #   @turtles_default = Gmaps4rails.build_markers(Turtles.all) do |plot, marker|  
  #      marker.lat plot.latitude  
  #      marker.lng plot.longitude  
 
  #      @status = rand(1..4)  
  #      @battery = rand(10..90)  
  #      @ip = "192.168."+rand(0..255).to_s+"."+rand(15..250).to_s  
  #      @connected = rand(50..100)  
 
  #      if @status == 1  
  #        url_alert = "/good.png"  
  #        @status == "Normal"  
  #      else  
  #        url_alert = "/alert.png"  
  #      end  
 
  #      marker.picture({  
  #        "url" => url_alert,  
  #        "width" => 35,  
  #        "height" => 30  
  #      })  
 
  #      marker.infowindow render_to_string(:partial => "/turtles/info",   
  #        :locals => {:name => plot.name, :battery => @battery, :date => rand(6.months.ago..Time.now), :ip => @ip, :connected => @connected })  
  #   end  
  # end
end

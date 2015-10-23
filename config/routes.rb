Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:the_number", { :controller => "calculations", :action => "sqrt" })
  get("/random_number/:low/:high", { :controller => "calculations", :action => "random" })
  get("/payment/:year/:principal/:rate", { :controller => "calculations", :action => "payment" })
end

class CalculationsController < ApplicationController
  def payment
  	@year= params[:year].to_f
  	@principal= params[:principal].to_f
  	@rate= params[:rate].to_f
  	@payment_result = (@principal * (1+@rate)**@year)
  	render("payment.html.erb")
  end

  def random
  	@low_bound = params[:low].to_i
  	@high_bound = params[:high].to_i
  	render("random.html.erb")
  end

  def sqrt
  	# params = {"the_number" => "11238746464"}
  	@number = params[:the_number].to_f
  	@square_root = @number**0.5
  	render("sqrt.html.erb")
  end

  def instructions
    render("instructions.html.erb")
  end
end

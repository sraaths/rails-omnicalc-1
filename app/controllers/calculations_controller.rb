class CalculationsController < ApplicationController
  def index
    # Home page action
  end

  # Actions for form pages
  def square_new; end
  def square_root_new; end
  def payment_new; end
  def random_new; end

  # Actions for result pages
  def square_results
    @number = params[:number].to_f
    @result = @number ** 2
  end

  def square_root_results
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
  end

  def payment_results
    @apr = params[:apr].to_f / 100
    @years = params[:years].to_i
    @principal = params[:principal].to_f
    monthly_rate = @apr / 12
    payments = @years * 12
    @result = @principal * (monthly_rate / (1 - (1 + monthly_rate) ** -payments))
  end

  def random_results
    @min = params[:min].to_i
    @max = params[:max].to_i
    @result = rand(@min..@max)
  end
end

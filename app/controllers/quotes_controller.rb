class QuotesController < ApplicationController
  helper_method :quote, :quotes

  def index; end

  def show; end

  def new; end

  def edit; end

  def create
    quote.assign_attributes(quote_params)

    if quote.save
      redirect quotes_path, notice: 'Quote was successfully created/'
    else
      render :new
    end
  end

  def update
    if quote.update(quote_params)
      redirect_to quotes_path, notice: 'Quote was successfully created/'
    else
      render :new
    end
  end

  def destroy
    quote.destroy!

    redirect_to quotes_path
  end

  private

  def quotes
    @quotes = Quote.all
  end

  def quote
    @quote ||= if %w[new create].include?(action_name)
      Quote.new
    else
      Quote.find(params[:id])
    end
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end

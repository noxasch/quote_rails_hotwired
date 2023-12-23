class QuotesController < ApplicationController
  helper_method :quote, :quotes

  def index; end

  def show; end

  def new; end

  def edit; end

  def create
    quote.assign_attributes(**quote_params, company: current_company)

    if quote.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to quotes_path, notice: 'Quote was successfully created.' }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if quote.update(quote_params)
      redirect_to quotes_path, notice: 'Quote was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    quote.destroy!

    respond_to do |format|
      format.turbo_stream
      # format.turbo_stream { render turbo_stream: turbo_stream.remove(quote) }
      format.html { redirect_to quotes_path, notice: 'Quote was successfuly destroyed.' }
    end
  end

  private

  def quotes
    @quotes ||= current_company.quotes.ordered
  end

  def quote
    @quote ||= if %w[new create].include?(action_name)
      Quote.new
    else
      current_company.quotes.find(params[:id])
    end
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end

class ChargesController < ApplicationController

  def new
  end

  def thanks
  end

  def create
    # Amount in cents
    @phone = Phone.find(params[:phone_id])
    @amount = @phone.priceperweek * 100 * params[:weeks].to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    redirect_to '/charges/thanks'

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

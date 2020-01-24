# frozen_string_literal: true

class RentMailer < ApplicationMailer
  def new_rent_email
    @rent = params[:rent]
    @user = params[:user]
    mail(to: @user.email, subject: 'New rent created')
  end
end

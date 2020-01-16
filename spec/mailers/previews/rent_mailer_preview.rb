# Preview all emails at http://localhost:3000/rails/mailers/rent_mailer
class RentMailerPreview < ActionMailer::Preview
    def new_rent_email
      # Set up a temporary order for the preview
      rent = Rent.new(user_id: 1, book_id: 456, start_rent: '2019-12-03', end_rent: '2019-12-04', user_id: 1)
      RentMailer.with(rent: rent).new_rent_email
    end
  end
class BookNotifierMailer < ApplicationMailer

  def book_return_remind(book)
    @book = book
    @reservation = book.reservations.find_by(status: "TAKEN")
    @borrower = @reservation.user

    mail(to: @borrower.email, subject: "Upływa termin zwrotu książki #{@book.title}")
  end

   def book_reserved_return(book)
    @book = book
    @reservation = book.reservations.find_by(status: "TAKEN")
    @next_borrower = @reservation.user

    mail(to: @next_borrower.email, subject: "Książka #{@book.title} za niedługo będzie dostępna")
  end


end

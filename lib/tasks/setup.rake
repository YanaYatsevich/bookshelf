namespace :setup do
  desc "Change name of first book"
  task change_first_book: :environment do
    puts "*** New Title - It's my rake!"
    Book.transaction do
      book = Book.lock.first
      book.title = "It's my rake!"
      book.save!
    end
  end

end

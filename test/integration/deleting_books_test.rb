require 'test_helper'

class DeletingBooksTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create!(title: "Rag Pros")
  end

  test 'delete books' do
    delete "/books/#{@book.id}"

    assert_equal 204, response.status
  end
end

require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :name => "MyString",
      :author => "MyString",
      :isbn => "MyString",
      :totalRanking => "9.99",
      :numberRanking => 1
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_name", :name => "book[name]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_isbn", :name => "book[isbn]"
      assert_select "input#book_totalRanking", :name => "book[totalRanking]"
      assert_select "input#book_numberRanking", :name => "book[numberRanking]"
    end
  end
end

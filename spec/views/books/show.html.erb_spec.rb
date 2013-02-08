require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :name => "Name",
      :author => "Author",
      :isbn => "Isbn",
      :totalRanking => "9.99",
      :numberRanking => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Author/)
    rendered.should match(/Isbn/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
  end
end

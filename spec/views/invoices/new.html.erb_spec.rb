require 'rails_helper'

RSpec.describe "invoices/new", type: :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      name: "MyString",
      amount: 1.5,
      kind: 1,
      status: "MyString"
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input[name=?]", "invoice[name]"

      assert_select "input[name=?]", "invoice[amount]"

      assert_select "input[name=?]", "invoice[kind]"

      assert_select "input[name=?]", "invoice[status]"
    end
  end
end

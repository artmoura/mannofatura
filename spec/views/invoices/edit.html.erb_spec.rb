require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      name: "MyString",
      amount: 1.5,
      kind: 1,
      status: "MyString"
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input[name=?]", "invoice[name]"

      assert_select "input[name=?]", "invoice[amount]"

      assert_select "input[name=?]", "invoice[kind]"

      assert_select "input[name=?]", "invoice[status]"
    end
  end
end

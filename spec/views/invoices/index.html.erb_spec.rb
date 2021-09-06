require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        name: "Name",
        amount: 2.5,
        kind: 3,
        status: "Status"
      ),
      Invoice.create!(
        name: "Name",
        amount: 2.5,
        kind: 3,
        status: "Status"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end

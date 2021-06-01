require 'rails_helper'

RSpec.describe "to_dos/show", type: :view do
  before(:each) do
    @to_do = assign(:to_do, ToDo.create!(
      finished: false,
      user_task: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end

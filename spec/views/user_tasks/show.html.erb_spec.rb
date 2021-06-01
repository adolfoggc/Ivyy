require 'rails_helper'

RSpec.describe "user_tasks/show", type: :view do
  before(:each) do
    @user_task = assign(:user_task, UserTask.create!(
      description: "Description",
      active: false,
      repetition: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end

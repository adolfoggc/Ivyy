require 'rails_helper'

RSpec.describe "user_tasks/index", type: :view do
  before(:each) do
    assign(:user_tasks, [
      UserTask.create!(
        description: "Description",
        active: false,
        repetition: 2
      ),
      UserTask.create!(
        description: "Description",
        active: false,
        repetition: 2
      )
    ])
  end

  it "renders a list of user_tasks" do
    render
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end

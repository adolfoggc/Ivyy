require 'rails_helper'

RSpec.describe "user_tasks/new", type: :view do
  before(:each) do
    assign(:user_task, UserTask.new(
      description: "MyString",
      active: false,
      repetition: 1
    ))
  end

  it "renders new user_task form" do
    render

    assert_select "form[action=?][method=?]", user_tasks_path, "post" do

      assert_select "input[name=?]", "user_task[description]"

      assert_select "input[name=?]", "user_task[active]"

      assert_select "input[name=?]", "user_task[repetition]"
    end
  end
end

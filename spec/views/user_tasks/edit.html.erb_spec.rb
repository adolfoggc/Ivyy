require 'rails_helper'

RSpec.describe "user_tasks/edit", type: :view do
  before(:each) do
    @user_task = assign(:user_task, UserTask.create!(
      description: "MyString",
      active: false,
      repetition: 1
    ))
  end

  it "renders the edit user_task form" do
    render

    assert_select "form[action=?][method=?]", user_task_path(@user_task), "post" do

      assert_select "input[name=?]", "user_task[description]"

      assert_select "input[name=?]", "user_task[active]"

      assert_select "input[name=?]", "user_task[repetition]"
    end
  end
end

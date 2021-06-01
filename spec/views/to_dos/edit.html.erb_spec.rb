require 'rails_helper'

RSpec.describe "to_dos/edit", type: :view do
  before(:each) do
    @to_do = assign(:to_do, ToDo.create!(
      finished: false,
      user_task: nil
    ))
  end

  it "renders the edit to_do form" do
    render

    assert_select "form[action=?][method=?]", to_do_path(@to_do), "post" do

      assert_select "input[name=?]", "to_do[finished]"

      assert_select "input[name=?]", "to_do[user_task_id]"
    end
  end
end

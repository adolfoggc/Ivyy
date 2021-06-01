require "rails_helper"

RSpec.describe UserTasksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_tasks").to route_to("user_tasks#index")
    end

    it "routes to #new" do
      expect(get: "/user_tasks/new").to route_to("user_tasks#new")
    end

    it "routes to #show" do
      expect(get: "/user_tasks/1").to route_to("user_tasks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_tasks/1/edit").to route_to("user_tasks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_tasks").to route_to("user_tasks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_tasks/1").to route_to("user_tasks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_tasks/1").to route_to("user_tasks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_tasks/1").to route_to("user_tasks#destroy", id: "1")
    end
  end
end

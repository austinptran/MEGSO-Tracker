require "rails_helper"

RSpec.describe EventVerificationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/event_verifications").to route_to("event_verifications#index")
    end

    it "routes to #new" do
      expect(get: "/event_verifications/new").to route_to("event_verifications#new")
    end

    it "routes to #show" do
      expect(get: "/event_verifications/1").to route_to("event_verifications#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/event_verifications/1/edit").to route_to("event_verifications#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/event_verifications").to route_to("event_verifications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/event_verifications/1").to route_to("event_verifications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/event_verifications/1").to route_to("event_verifications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/event_verifications/1").to route_to("event_verifications#destroy", id: "1")
    end
  end
end

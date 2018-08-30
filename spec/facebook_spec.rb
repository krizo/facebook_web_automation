require 'spec_helper'

describe "Facebook test" do
  include Tasks::Facebook

  let(:status_msg) { ENV['STATUS'] || Faker::Lorem::paragraph }

  it "login to facebook" do
    login_to_facebook(login: @login, password: @password)
  end

  it "post status message" do
    post_status(status_msg: status_msg)
    check_latest_post(expected_status_msg: status_msg)
  end
end

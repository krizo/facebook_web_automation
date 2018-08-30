module Tasks
  module Facebook
    include Pages::Facebook

    def login_to_facebook(login:, password:)
      visit(LoginPage)
      on(LoginPage).login = login
      on(LoginPage).password = password
      on(LoginPage).login_button_element.click
    end

    def post_status(status_msg:)
      visit(ProfilePage)

      on(ProfilePage).status_element.send_keys(status_msg)
      set_post_target('posts_feed')
      on(ProfilePage).share_button_element.click
    end

    def set_post_target(target)
      if target == 'posts_feed'
        on(ProfilePage).to_posts_feed_element.click
      else
        #TODO
      end
    end

    def check_latest_post(expected_status_msg:)
      wait_for {
        get_status_from_feed(index: 0)
      }.to eq expected_status_msg
    end

    private

    def get_status_from_feed(index: 0)
      on(ProfilePage).div_element(role: 'article', index: index).p_element.text
    end
  end
end

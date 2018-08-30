module Pages
  module Facebook
    class LoginPage
      include PageObject
      page_url("https://facebook.com")

      text_field(:login, id: 'email')
      text_field(:password, id: 'pass')
      element(:login_button, data_testid: 'royal_login_button')
    end

    class ProfilePage
      include PageObject
      page_url("https://www.facebook.com/profile.php")

      div(:status, data_testid: 'status-attachment-mentions-input')
      list_item(:to_posts_feed, class: '_1pek', index: 1)
      button(:share_button, data_testid: 'react-composer-post-button')
    end
  end
end

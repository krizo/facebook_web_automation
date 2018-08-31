# Facebook automation

Simple web automation suite based on [watir](http://watir.com/) framework.

### Preconditions
- this repo cloned

  `git clone git@github.com:krizo/facebook_web_automation.git`
  
- ruby (preferably 2.3.4)
- test account on Facebook

Specific web drivers (chrome or firefox should be automatically downloaded (stored in ~/.webdrivers folder) and ready to work thanks to [webdrivers gem](https://github.com/titusfortner/webdrivers).

### Running spec
Go to main folder and issue the command:

`BROWSER=chrome FACEBOOK_LOGIN=your_facebook_test_login FACEBOOK_PASSWORD=your_facebook_test_password bundle exec rspec spec/facebook_spec.rb`

Pro-tip: You can optionaly add a STATUS env with the status message you would like to post on facebok by the test user.


### Solution description

I use [page object pattern](https://www.sitepoint.com/model-web-pages-with-the-page-object-pattern/) for separating
pages' structure from the rest logic (flow).

Moreover, I encapsulate all actions ("tasks") the user perform on the site being tested.
The reason for that is that I like to keep my specs - main test files - to be very descriptive
about what's is going to be tested, so I avoid implementing anything there.
That way specs look like test scripts which can be easily reviewed even by
not ruby/watir/selenium or even not technical specialists.

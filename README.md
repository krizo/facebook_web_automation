# Facebook automation

Simple web automation suite based on [watir](http://watir.com/) framework.

### Preconditions
- ruby (preferably 2.3.4)
- test account on Facebook

Specific web drivers (chrome or firefox should be automatically downloaded (stored in ~/.webdrivers folder) and ready to work thanks to [webdrivers gem](https://github.com/titusfortner/webdrivers).

### Running spec
Go to main folder and issue the command:

`BROWSER=chrome FACEBOOK_LOGIN=your_facebook_test_login FACEBOOK_PASSWORD=your_facebook_test_password bundle exec rspec spec/facebook_spec.rb`

Pro-tip: You can optionaly add a STATUS env with the status message you would like to post on facebok by the test user.

# Facebook automation

Simple web automation suite based on [watir](http://watir.com/) framework.

### Preconditions
- ruby (prefrably 2.3.4)
- chrome or firefox drivers in path
- test account on Facebook

### Running spec
Go to main folder and issue the command:

`BROWSER=chrome FACEBOOK_LOGIN=your_facebook_test_login FACEBOOK_PASSWORD=your_facebook_test_password bundle exec rspec spec/facebook_spec.rb`

You can optionaly add a STATUS env with the status you would like to post on facebok by the test user

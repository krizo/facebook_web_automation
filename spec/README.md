# Facebook automation

Simple web automation suite based on watir framework.

### Preconditions
- ruby (prefrably 2.3.4)
- chrome or firefox drivers in path
- test account on Facebook

### Running spec
Go to main folder and issuec command:

`BROWSER=chrome FACEBOOK_LOGIN=your_facebook_test_login FACEBOOK_PASSWORD=your_facebook_test_password bundle exec rspec spec/facebook_spec.rb`

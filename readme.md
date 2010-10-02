# Fresh Links

Fresh Links connects your FreshBooks account to the outside world.  Using FreshBook's webhooks, api and Fresh Links you can quickly add additional functionality to your FreshBooks account.

## To Setup

First clone yourself a copy of Fresh Links

  git clone git@github.com:jessemiller/FreshLinks.git
  
Then edit `api_config.rb` and fill in your FreshBooks url and API authentication token.

I suggest deploying to [heroku](http://heroku.com/ "Heroku").  If you haven't used heroku you will have to install the heroku gem first.

  sudo gem install heroku
  
Then from within your checked out Fresh Links directory initialize your heroku app.

  heroku create yourappname
  
Assuming `yourappname` is available this will create a domain for you like `yourappname.heroku.com`. You can finally deploy your app completely using git by pushing it to heroku.

  git push heroku master
  
To then setup your FreshBooks account follow these steps:
- Login to your FreshBooks account
- Click on the 'My Account' link
- Click on the 'FreshBooks API' tab
- Click on 'Customize' near the bottom of the page, under 'Webhooks'
- Click 'New Webhook'
- For the URI, use your newly created heroku deployment and point it to /callback, for example `http://yourappname.heroku.com/callback` 

That should be it!  Assuming everything is deployed properly that callback should get verified almost right away.  Refresh the page a couple times to ensure it worked.

## To Use

Fresh Links will dynamically load controllers based on the event coming from FreshBooks.  So if you'd like to add on functionality to a invoice.create event, simply create a InvoiceCreate class in the controllers directory.  See CallbackVerify for an example.

More documentation coming soon, covering
- more examples of how to use
- possible security issues


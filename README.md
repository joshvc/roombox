### Roombox

A very simple moving box inventory system- Rooms have many Boxes, Boxes have many items, the end. View a [demo in action](http://roomboxdemo.herokuapp.com)- username is `demo`, password is `roombox`.

Meant to be launched to Heroku for cross-platform access. In its present form, there is no authentication, so you'll want to host your own instance.

Installation & authentication setup, with the Heroku toolbox installed:

* Clone the repo
* `heroku create [optional app name]`
* `git push heroku master`
* `heroku run rake db:setup`
* `heroku config:set HTTP_BASIC_USERNAME=yourusernamehere`
* `heroku config:set HTTP_BASIC_PASSWORD=yourpasswordhere`
* `heroku open`

Usage:
* Begin by Creating a Room
* Name & a 2 letter code are required (ie, MB for Master Bedroom, K for Kitchen)
* Validations don't exist yet, but trust me, name & identifier.
* Color looks for a hex code, with or without the #.
* Create a new box
* Fill that box and log your items on the Box screen
* Write the box code (ie, MB1) on your boxes
* Print labels for those boxes using Avery x163 labels (2x4 inches)(automatically coded with that color you picked, see how that's coming together?)
* Create more boxes, create more rooms, and so on.
* Consider adding a link to your home screen- we're mobile friendly here.

The Future:
* Probably small tweaks (including making sure the labels work when I get some) until I move in October, then I'll lose interest.
* At some point we'll move again, when I'll make whatever new tweaks I think of.

License:
* MIT, I suppose. Especially that bit about 'AS-IS.' I'm moving here, supporting this app won't be a big priority, I'm afraid.

Contributing:
* Well, sure, I'm open to reviewing a pull request here and there.

[![Code Climate](https://codeclimate.com/github/joshvc/roombox/badges/gpa.svg)](https://codeclimate.com/github/joshvc/roombox)

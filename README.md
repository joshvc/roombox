### Roombox

A very simple moving box inventory system- Rooms have many Boxes, Boxes have many items, the end.

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
* Print labels for those boxes (with the color you'll assign, see how that's coming together?), but if you don't mark them now, you'll wish you had when the labels print.
* Create more boxes, create more rooms, and so on.
* Consider adding a link to your home screen- we're mobile friendly here.

TODO:
* ~~Simple HTTP authentication~~
* ~~Validations on the room creation~~
* ~~Printable, color coded box labels~~
* ~~Quick box lookup~~
* ~~Inventory Search~~

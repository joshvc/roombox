### Roombox

A very simple moving box inventory system- Rooms have many Boxes, Boxes have many items, the end.

Meant to be launched to Heroku for cross-platform access. In its present form, there is no authentication, so you'll want to host your own instance.

Installation, with the Heroku toolbox installed:

* Clone the repo
* `heroku create [optional app name]`
* `heroku run rake db:setup`
* `heroku open`

Usage:
* Begin by Creating a Room
* Name & a 2 letter code are required (ie, MB for Master Bedroom, K for Kitchen)
* Validations don't exist yet, but trust me, name & identifier.
* Color will be looking for a hex code..later.
* Create a new box
* Fill that box and log your items on the Box screen
* For now, write the box code (ie, MB1) on your boxes
* Later, you'll be able to print labels for those boxes (with the color you'll assign, see how that's coming together?), but if you don't mark them now, you'll wish you had when the labels print.
* Create more boxes, create more rooms, and so on.
* Consider adding a link to your home screen- we're mobile friendly here.

TODO:
* Simple HTTP authentication
* Validations on the room creation
* Printable, color coded box labels
* ~~Quick box lookup~~
* ~~Inventory Search~~

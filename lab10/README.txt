Homework
========

1) Create a page where the user would order a pizza. Create the page with the following fieds:

   a) name - mandatory
   b) email - mandatory
   c) phone - mandatory
   d) address - mandatory
   e) dishes chosen - mandatory

   The user could choose from:
   [
	{name:'Quattro Formaggi Pizza', price: 15}, {name: 'California Pizza', price: 18},
	{name: 'Mexican Pizza', price: 14}, {name:'Pepperoni Pizza', price: 16}, 
	{name: 'Spagetti Bolognese', price: 22} 
   ];

2) On choosing one of the dishes, in a read-only field the price would appear. 

3) The Submit button cannot be pressed if the form is not valid.


4) Because pizza dishes can change, it is not a good practice to hard-code them in JS. Create a 
   Spring controller that returns an object representing pizza types, together with the associated
   prices. Use this information to present it to the user.

5) After the user presses "Submit", he should be redirected into another web page containing the
   confirmation of the command, with all the details as read-only fields (name, email, phone, 
   address, dishes chosen and total price).

6) Change the server functionality such that, when pressing "Submit", if he has ordered Mexican Pizza
   and his surname is Alejandro, the controller would return "404 - Not Found" error, with the message
   "service unavailable". This message should be visible to the user.



/*
PC
create empty object
PROMT user for 'what item to add'
PROMT user for 'how many'
  take user promts and add to empty object

----create & test functions to 'add', 'update', 'delete' and 'display' list-----

call function to add to empty object
PROMT user if they want to add, update, or display list
SWITCH and input answer from above prompt
  CASE 'add' run add function
  CASE 'update' run update function
  CASE 'delete' run delete function
  CASE 'display' run display function

Create a loop to go through the case statement UNTIL user selects display

display list to console
*/


var item = prompt('What item you like add?', '');
var quanity = prompt('How many?', '');
var list = {};
function addItem (item, quanity) {
  list[item] = quanity;
}

addItem(item, quanity);

function deleteItem (item) {
  for (var listItem in list) {
    if (listItem === item) {
      delete list[listItem];
    }
  }
}

function updateItemQuanity (item, quanity) {
  for (var listItem in list) {
    if (listItem === item) {
      list[listItem] = quanity;
    }
  }
}

function displayList() {
  console.log('Grocery List: ')
  for (var listItem in list) {
    console.log(listItem.charAt(0).toUpperCase() + listItem.slice(1) + ': ' + list[listItem]);
  }
}
do {
var question = prompt("Type 'add' to add additional item, type 'delete' item, type 'update' to update a item quanity, type 'display' to display grocery list", '');
switch (question) {
  case 'add':
    var item = prompt('What item you like add?', '');
    var quanity = prompt('How many?', '');
    addItem(item, quanity);
    break;
  case 'delete':
    var item = prompt('What item you like to delete?', '');
    deleteItem(item);
    break;
  case 'update':
    var item = prompt('What item you like update?', '');
    var quanity = prompt('What is the new quanity?', '');
    updateItemQuanity(item, quanity);
    break;
  case 'display':
    displayList();
    break;
  default:
    alert('Make sure you type the correct command');
} } while (question != 'display')

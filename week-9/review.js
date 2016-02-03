var item = prompt('What item you like add?', '');
var quanity = prompt('How many?', '');

var question = console.log("Type 'add' to add additional item, type 'delete' item, type 'update' to update a item quanity, type 'display' to display grocery list", '')

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
    addItemQuanity(item, quanity);
    break;
  case 'display':
    displayList;
    break;

  default:
    console.log('Make sure you type the correct command')
}

var list = {};

function addItem (item, quanity) {
  list[item] = quanity;
}

function deleteItem (item) {
  for (var listItem in list) {
    if (listItem === item) {
      delete list[listItem];
    }
    return list
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
  console.log('Grocery List:');
  for (var listItem in list) {
    console.log(listItem.charAt(0).toUpperCase() + listItem.slice(1) + ': ' + list[listItem]);
  }
}

displayList();
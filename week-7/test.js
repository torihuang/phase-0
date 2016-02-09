var ship_loc = {10:[9],8:[7]};

var create_location = function(key,value) {
  if (ship_loc[key] == undefined) ship_loc[key] = [];
  ship_loc[key].push(value);
}

create_location(10,9);
console.log(ship_loc);
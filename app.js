var a = {
  name: 'Steve'
};


var go = function() {
  var things = [1,2,3,4]

  for (var i = 0; i < things.length; i++) {
    console.log(things[i]);
  };
}


var Car = function() {
  this.engineOn = false;
};

  Car.prototype.start = function() {
    this.engineOn  = true;
  };

  Car.prototype.isRunning = function() {
    return this.engineOn;
  }
};

$('.magic-button').on('click',function(){
  var button = $(this);
  button.text( button.text() + '.'  );
  });
});

console.log('JS STARTED');

var count = 0;
var inc = function() {
  count = count + 1
  console.log(count);
  setTimeout(inc, 1000);
};
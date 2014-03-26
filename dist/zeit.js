var conversion, conversions, method, set;

conversions = {
  second: function() {
    return this * 1000;
  },
  minute: function() {
    return this * 60..seconds;
  },
  hour: function() {
    return this * 60..minute;
  }
};

for (conversion in conversions) {
  method = conversions[conversion];
  set = function(conversion) {
    return Object.defineProperty(Number.prototype, conversion, {
      get: method
    });
  };
  set(conversion);
  set(conversion + 's');
}

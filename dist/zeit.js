Object.defineProperty(Number.prototype, 'seconds', {
  get: function() {
    return this * 1000;
  }
});

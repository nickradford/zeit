zeitjs
===
[![Build Status](https://travis-ci.org/nickradford/zeit.svg?branch=master)](https://travis-ci.org/nickradford/zeit)

zeitjs is a javascript library for using logical time values in JavaScript.

**It modifies `Number.prototype` to add properties on to a number.**

## Installation
```sh
$ npm install --save zeitjs
```


## Usage

```coffee
# Coffeescript

require 'zeitjs'

console.log 3.minutes
# => 180000
```

```js
// Javascript

require('zeitjs');

console.log(3..minutes)
// => 180000

console.log(3.5.minutes)
// => 210000
```

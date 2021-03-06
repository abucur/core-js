'use strict'
{module, test} = QUnit
module \ES7

test 'Array#includes' (assert)->
  {includes} = core.Array
  assert.ok typeof! includes is \Function, 'is function'
  arr = [1 2 3 -0 o = {}]
  assert.ok includes arr, 1
  assert.ok includes arr, -0
  assert.ok includes arr, 0
  assert.ok includes arr, o
  assert.ok !includes arr, 4
  assert.ok !includes arr, -0.5
  assert.ok !includes arr, {}
  assert.ok includes Array(1), void
  assert.ok includes [NaN], NaN
  if !(-> @)!
    assert.throws (-> includes null, 0), TypeError
    assert.throws (-> includes void, 0), TypeError
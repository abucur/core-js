{module, test} = QUnit
module \ES6

test 'Reflect.has' (assert)->
  {has} = Reflect
  assert.ok typeof! has is \Function, 'is function'
  assert.strictEqual has.length, 2, 'arity is 2'
  assert.ok /native code/.test(has), 'looks like native'
  assert.strictEqual has.name, \has, 'name is "has"'
  O = {qux: 987}
  assert.strictEqual has(O, \qux), on
  assert.strictEqual has(O, \qwe), no
  assert.strictEqual has(O, \toString), on
  assert.throws (-> has 42, \constructor), TypeError, 'throws on primitive'
{module, test} = QUnit
module \ES6

test 'Number.isFinite' (assert)->
  {isFinite} = Number
  {create} = Object
  assert.ok typeof! isFinite is \Function, 'is function'
  assert.strictEqual isFinite.name, \isFinite, 'name is "isFinite"'
  assert.strictEqual isFinite.length, 1, 'arity is 1'
  assert.ok /native code/.test(isFinite), 'looks like native'
  for [1 0.1 -1 2^16 2^16 - 1 2^31 2^31 - 1 2^32 2^32 - 1 -0]
    assert.ok isFinite(..), "isFinite #{typeof ..} #{..}"
  for [NaN, Infinity, \NaN, \5, no, new Number(NaN), new Number(Infinity), new Number(5), new Number(0.1), void, null, {}, ->, create(null)]
    assert.ok not isFinite(..), "not isFinite #{typeof ..} #{try String(..) catch e => 'Object.create(null)'}"
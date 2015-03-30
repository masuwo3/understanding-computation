require './expression.rb'

Number.new(23).evaluate({})

Variable.new(:x).evaluate({ x: Number.new(23) })

LessThan.new(
  Add.new(Variable.new(:x), Number.new(2)),
  Variable.new(:y)
).evaluate({ x: Number.new(2), y: Number.new(5) })

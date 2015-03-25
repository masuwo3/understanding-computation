require './expression.rb'
require './machine.rb'

Machine.new(
  Add.new(Variable.new(:x), Variable.new(:y)),
  { x: Number.new(3), y: Number.new(4) }
).run

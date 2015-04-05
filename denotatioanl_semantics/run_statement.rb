require './expression.rb'
require './statement.rb'

statement =
  While.new(
    LessThan.new(Variable.new(:x), Number.new(5)),
    Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
  )

statement.to_ruby

proc = eval(statement.to_ruby)
proc.call({x: 1})

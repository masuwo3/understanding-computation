require './expression.rb'

environment = { x: 3 }

proc = eval(Add.new(Variable.new(:x), Number.new(1)).to_ruby)

proc.call(environment)

proc = eval(
  LessThan.new(Add.new(Variable.new(:x), Number.new(1)), Number.new(3)).to_ruby
)

proc.call(environment)

class Animal
	(@name, kind) -> @kind = kind
	action: (what) -> "*#{@name} (a #{@kind}) #{what}*"

class Cat extends Animal
	(@name) -> super @name, 'cat'
	purr: -> @action 'purrs'

module.exports =
	class Model
		->
			const @Animal = Animal
			const @Cat = Cat

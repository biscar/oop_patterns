# oop_patterns
OOP Patterns

_Simple:_

require '/home/vital/dev/oop_patterns/lib/maze_game.rb'
maze = MazeGame.create_maze
maze.room(1)


**Patterns**

_AbstractFactory_

require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/maze_game.rb'

require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/maze_factory.rb'
factory = Patterns::Creational::AbstractFactory::MazeFactory
maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(factory)
maze.room(1)

require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/enchanted_maze_factory.rb'
factory = Patterns::Creational::AbstractFactory::EnchantedMazeFactory
maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(factory)
maze.room(1)

require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/bombed_maze_factory.rb'
factory = Patterns::Creational::AbstractFactory::BombedMazeFactory
maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(factory)
maze.room(1)

_Builder_

require '/home/vital/dev/oop_patterns/lib/patterns/creational/builder/maze_game.rb'

require '/home/vital/dev/oop_patterns/lib/patterns/creational/builder/standard_maze_builder.rb'
game = Patterns::Creational::Builder::MazeGame
builder = Patterns::Creational::Builder::StandardMazeBuilder.new
maze = game.create_maze(builder)

_Factory Method_

require '/home/vital/dev/oop_patterns/lib/patterns/creational/factory_method/maze_game.rb'

game = Patterns::Creational::FactoryMethod::MazeGame
maze = game.create_maze
maze.room(1)

require '/home/vital/dev/oop_patterns/lib/patterns/creational/factory_method/bombed_maze_game.rb'
game = Patterns::Creational::FactoryMethod::BombedMazeGame
maze = game.create_maze
maze.room(1)

require '/home/vital/dev/oop_patterns/lib/patterns/creational/factory_method/enchanted_maze_game.rb'
game = Patterns::Creational::FactoryMethod::EnchantedMazeGame
maze = game.create_maze
maze.room(2)
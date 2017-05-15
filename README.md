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

# oop_patterns
OOP Patterns

_Simple:_

require '/home/vital/dev/oop_patterns/lib/maze_game.rb'
maze = MazeGame.create_maze
maze.room(1)


_Patterns_

require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/maze_factory.rb'
require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/maze_game.rb'

factory = Patterns::Creational::AbstractFactory::MazeFactory

maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(factory)
maze.room(1)

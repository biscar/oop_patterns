# oop_patterns
OOP Patterns

_Simple:_

require '/home/vital/dev/oop_patterns/lib/maze_game.rb'
maze = MazeGame.create_maze
maze.room(1)


**Patterns**

_AbstractFactory_

_Builder_



_Factory Method_

require '/home/vital/dev/oop_patterns/lib/patterns/creational/factory_method/maze_game.rb'


_Prototype_
require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/maze_game.rb'

require '/home/vital/dev/oop_patterns/lib/patterns/creational/prototype/maze_prototype_factory.rb'

factory = Patterns::Creational::Prototype::MazePrototypeFactory

simple_prototype_factory = factory.new(maze: Maze::Maze.new, wall: Maze::Wall.new , door: Maze::Door.new , room: Maze::Room.new)
maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(simple_prototype_factory)
maze.room(1)

bombed_prototype_factory = factory.new(maze: Maze::Maze.new, wall: Maze::BombedWall.new , door: Maze::Door.new , room: Maze::RoomWithABomb.new)
maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(bombed_prototype_factory)
maze.room(2)

_Singleton_

require '/home/vital/dev/oop_patterns/lib/patterns/creational/abstract_factory/maze_game.rb'
require '/home/vital/dev/oop_patterns/lib/patterns/creational/singleton/maze_factory.rb'

ENV['MAZESTYLE'] = 'bombed'
singleton = Patterns::Creational::Singleton::MazeFactory.instance

maze = Patterns::Creational::AbstractFactory::MazeGame.create_maze(singleton.factory)
maze.room(1)
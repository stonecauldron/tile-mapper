# Abstract

# Introduction
Video games are a medium that combines the artifacts from many different fields.
Be it music, visual arts or architecture they all have their influence on the
overall feel of a given game.

This wide need for resources explains partly why games are so costly to develop.
Procedural content generation--the automatic creation of game content--has
emerged as an answer to this problem and is currently widely used. For example,
*No Man's Sky* is a space exploration game that has used procedural generation
to generate a whole universe of over 18 quintillion planets $1.8 \cdot 10^{19}$,
suffice to say that you would need many lifetimes to explore them all.

Tile maps are a staple of many genres of games, they are formed by individual
tiles of predefined size and assembled into a grid. Traditionally they are built
manually: the level designer chooses one tile for each cell of the grid. Given
that the grids can be very large, we can easily imagine that this is a
time-consuming process. It puts a human limit into the size of the maps that can
be used in a game. Being able to generate these maps procedurally would lift a
burden off the shoulders of the level designers and allow the generation of much
larger worlds.

In this paper we propose a method to assist in the creation of two-dimensional
tile-based world maps.

- We develop a graph based model that allows the level designers to specify the
  high level structure of the world map. Letting them concentrate on the general
  outline of the world rather than its appearance.

- There is an inherent repetition in tile maps that can be exploited to our
  advantage to create them. We show that a Markov chain based model allows not
  only procedural generation but also the reproduction of the style of a given
  game. This differs from common rule based methods that have a hard time
  appropriately capturing patterns not easily expressed.

Game development is a process that requires the creation many different types of
assets. At the micro-level we have the music, 3D models, textures and sprites
that will form the building blocks of the game; at the macro-level we have all
the meaningful arrangements of these atomic elements; be it the architecture of
a level, the structure of the world map or the objectives of the player.

This diversity comes at a cost, namely in terms of the resources and time needed
to create these assets. Procedural content generation has emerged as an answer
to this need by allowing the automatic creation of game content.

In our project we focus on the problem of world map generation. In particular
when applied to two-dimensional tile based maps. Tile maps are composed of
individual images of predefined size--the tiles--concatenated together in order
to form the spatial representation of the game. Our aim is not only to be able
to generate these maps with human intervention but also to allow the designer
to specify the higher level structure of the world. The objective is not to
replace the level designer but to automate the more repetitive parts of his
craft.

The macro structure of the world is specified with the help of graphs whose
nodes embody a spatial concept such as "city", "village", "forest". A connection
between nodes signifies they are spatially linked. This graph will form the
basic plan of the world to be created, in other words the world space of the
game. The creation of this world space is very flexible; it can simply be built
manually by the designer or we can easily imagine more automatic ways of
generating it with simple rule based approaches or even with graph grammars.

# Background

# Past work

# Design

# Conclusion
Can we automate the holistic feel of a level?

---
title: 'Generative maps: assisting the level designer in creating world maps'
---

## Abstract

## Introduction
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

## Describe problem in detail

## Describe the general idea

The macro structure of the world is specified with the help of graphs whose
nodes embody a spatial concept such as "city", "village", "forest". A connection
between nodes signifies they are spatially linked. This graph will form the
basic plan of the world to be created, in other words the world space of the
game. The creation of this world space is very flexible; it can simply be built
manually by the designer or we can easily imagine more automatic ways of
generating it with simple rule based approaches or even with graph grammars.

## Describe technical details of the idea

## Related work
Game companies generally do not publish their procedural content generation
methods so it is hard to evaluate what is common in the industry. In academia,
researchers have looked into various approaches for automatic level generation.
The game *Super Mario Bros.* in particular has received much attention.

@Shaker2012 kills many birds with one stone

Procedural content generation is usually done with rule based systems, machine
learning approaches have been quite recent. Researchers have focused their
efforts on using machine learning techniques to generate new levels for the
*Super Mario Bros.* game.

## Conclusion and further work
Can we automate the holistic feel of a level? How does one recreate themes in
design works successfully? Can machine learning capture the essence of
something?


---
references:
- id: Dahlskog2014
  type: article-journal
  author:
  - family: Dahlskog
    given: Steve
  - family: Togelius
    given: Julian
  - family: Nelson
    given: Mark J.
  issued:
  - year: '2014'
  title: <span class="nocase">Linear levels through n-grams</span>
  container-title: Proceedings of the 18th International Academic MindTrek Conference
    on Media Business, Management, Content & Services - AcademicMindTrek ’14
  page: '200-206'
  abstract: We show that novel, linear game levels can be created using n-grams that
    have been trained on a corpus of existing levels. The method is fast and simple,
    and produces levels that are recognisably in the same style as those in the corpus
    that it has been trained on. We use Super Mario Bros. as an example domain, and
    use a selection of the levels from the original game as a training corpus. We
    treat Mario levels as a left-to-right sequence of vertical level slices, allowing
    us to perform level generation in a setting with some formal similarities to n-gram-based
    text generation and music generation. In empirical results, we investigate the
    effects of corpus size and n (sequence length). While the applicability of the
    method might seem limited to the relatively narrow domain of 2D games, we argue
    that many games in effect have linear levels and n-grams could be used to good
    effect, given that a suitable alphabet can be found.
  keyword: n-grams,procedural content generation,videogames
  URL: http://dl.acm.org/citation.cfm?id=2676467.2676506
  DOI: 10.1145/2676467.2676506
  ISBN: '9781450330060'

- id: Dormans2010
  type: article-journal
  author:
  - family: Dormans
    given: Joris
  issued:
  - year: '2010'
  title: '<span class="nocase">Adventures in level design: generating missions and
    spaces for action adventure games</span>'
  container-title: … Workshop on Procedural Content Generation in Games
  page: '1-8'
  abstract: This paper investigates strategies to generate levels for action adventure
    games. This genre relies more strongly on well-designed levels than rule-driven
    genres such as strategy or roleplaying games for which procedural level generation
    has been successful in the past. The approach outlined by this paper distinguishes
    between missions and spaces as two separate structures that need to be generated
    in two individual steps. It discusses the merits of different types of generative
    grammars for each individual step in the process.
  keyword: action adventure games,level design,procedural generation
  URL: http://portal.acm.org/citation.cfm?id=1814257$\backslash$nhttp://dl.acm.org/citation.cfm?id=1814257
  DOI: 10.1145/1814256.1814257
  ISBN: '9781450300230'

- id: Guzdial2015
  type: article-journal
  author:
  - family: Guzdial
    given: Matthew
  - family: Riedl
    given: Mark O
  issued:
  - year: '2015'
  title: <span class="nocase">Toward Game Level Generation from Gameplay Videos</span>
  container-title: Proceedings of the Sixth Workshop on Procedural Content Generation
    in Games (PCG 2015)
  issue: '1'
  abstract: Algorithms that generate computer game content require game design knowledge.
    We present an approach to automatically learn game design knowledge for level
    design from gameplay videos. We further demonstrate how the acquired design knowledge
    can be used to generate sections of game levels. Our approach involves parsing
    video of people playing a game to detect the appearance of patterns of sprites
    and utilizing machine learning to build a probabilistic model of sprite placement.
    We show how rich game design information can be automatically parsed from gameplay
    videos and represented as a set of generative probabilistic models. We use Super
    Mario Bros. as a proof of concept. We evaluate our approach on a measure of playability
    and stylistic similarity to the original levels as represented in the gameplay
    videos.
  keyword: machine,probabilistic models,procedural content generation
  URL: http://www.cc.gatech.edu/{~}riedl/pubs/guzdial-pcg15.pdf
  ISBN: '9780991398256'

- id: Hoover2015
  type: article-journal
  author:
  - family: Hoover
    given: Amy K
  - family: Togelius
    given: Julian
  issued:
  - year: '2015'
  title: <span class="nocase">Composing Video Game Levels with Music Metaphors through
    Functional Scaffolding</span>
  container-title: Proceedings of 1st Computational Creativity & Games Workshop

- id: Shaker2014
  type: article-journal
  author:
  - family: Shaker
    given: Noor
  - family: Abou-zleikha
    given: Mohamed
  issued:
  - year: '2014'
  title: '<span class="nocase">Alone We Can Do So Little, Together We Can Do So
    Much: A Combinatorial Approach for Generating Game Content</span>'
  container-title: Aiide
  page: '167-173'
  abstract: In this paper we present a procedural content generator using Non-negative
    Matrix Factorisation (NMF). We use representative levels from five dissimilar
    content generators to train NMF models that learn patterns about the various components
    of the game. The constructed models are then used to automatically generate content
    that resembles the training data as well as to generate novel content through
    exploring new combinations of patterns. We describe the methodology followed and
    we show that the generator proposed has a more powerful capability than each of
    generator taken individually. The generator’s output is compared to the other
    generators using a number of expressivity metrics. The results show that the proposed
    generator is able to resemble each individual generator as well as demonstrating
    ability to cover a wider and more novel content space.
  keyword: Poster Papers
  URL: http://www.aaai.org/ocs/index.php/AIIDE/AIIDE14/paper/view/9000/8944
  ISBN: '978-1-57735-681-3'

- id: Shaker2012
  type: article-journal
  author:
  - family: Shaker
    given: Noor
  - family: Nicolau
    given: Miguel
  - family: Yannakakis
    given: Georgios N.
  - family: Togelius
    given: Julian
  - family: O’Neill
    given: Michael
  issued:
  - year: '2012'
  title: <span class="nocase">Evolving levels for Super Mario Bros using grammatical
    evolution</span>
  container-title: 2012 IEEE Conference on Computational Intelligence and Games, CIG
    2012
  page: '304-311'
  issue: '1'
  abstract: This paper presents the use of design grammars to evolve playable 2D platform
    levels through grammatical evolution (GE). Representing levels using design grammars
    allows simple encoding of important level design constraints, and allows remarkably
    compact descriptions of large spaces of levels. The expressive range of the GE-based
    level generator is analyzed and quantitatively compared to other feature-based
    and the original level generators by means of aesthetic and similarity based measures.
    The analysis reveals strengths and shortcomings of each generator and provides
    a general framework for comparing content generated by different generators. The
    approach presented can be used as an assistive tool by game designers to compare
    and analyze generators’ capabilities within the same game genre.
  DOI: 10.1109/CIG.2012.6374170
  ISBN: '9781467311922'

- id: Snodgrass2013
  type: article-journal
  author:
  - family: Snodgrass
    given: Sam
  - family: Ontañón
    given: Santiago
  issued:
  - year: '2013'
  title: Generating Maps Using Markov Chains
  container-title: Aiide
  page: '25-28'
  URL: http://www.aaai.org/ocs/index.php/AIIDE/AIIDE13/paper/viewPDFInterstitial/7447/7632

- id: Sorenson2010
  type: article-journal
  author:
  - family: Sorenson
    given: Nathan
  - family: Pasquier
    given: Philippe
  issued:
  - year: '2010'
  title: <span class="nocase">Towards a Generic Framework for Automated Video Game
    Level Creation Applications of Evolutionary Computation</span>
  page: 131-140 ST - Towards a Generic Framework for Auto
  volume: '6024'
  keyword: genetic algorithms,level design,procedural content,video games
  URL: http://dx.doi.org/10.1007/978-3-642-12239-2{\_}14
  DOI: 10.1007/978-3-642-12239-2_14
  ISBN: '978-3-642-12238-5'

- id: Sorenson2011
  type: article-journal
  author:
  - family: Sorenson
    given: Nathan
  - family: Pasquier
    given: Philippe
  - family: DiPaola
    given: Steve
  issued:
  - year: '2011'
  title: <span class="nocase">A generic approach to challenge modeling for the procedural
    creation of video game levels</span>
  container-title: IEEE Transactions on Computational Intelligence and AI in Games
  page: '229-244'
  volume: '3'
  issue: '3'
  abstract: This paper presents an approach to automatic video game level design consisting
    of a computational model of player enjoyment and a generative system based on
    evolutionary computing. The model estimates the entertainment value of game levels
    according to the presence of &\#x201C;rhythm groups,&\#x201D; which are defined
    as alternating periods of high and low challenge. The generative system represents
    a novel combination of genetic algorithms (GAs) and constraint satisfaction (CS)
    methods and uses the model as a fitness function for the generation of fun levels
    for two different games. This top&\#x2013;down approach improves upon typical
    bottom&\#x2013;up techniques in providing semantically meaningful parameters such
    as difficulty and player skill, in giving human designers considerable control
    over the output of the generative system, and in offering the ability to create
    levels for different types of games.
  keyword: Challenge modeling,fun,player enjoyment,procedural content creation,video
    games
  DOI: 10.1109/TCIAIG.2011.2161310
  ISBN: 1943-068X VO  - 3
  ISSN: 1943068X

- id: Summerville2015
  type: article-journal
  author:
  - family: Summerville
    given: Adam J
  - family: Mateas
    given: Michael
  issued:
  - year: '2015'
  title: '<span class="nocase">The Learning of Zelda : Data-Driven Learning of Level
    Topology</span>'
  issue: Fdg
  keyword: data-driven level design,games,level de-,machine learning,probabilistic
    learning,procedural content generation,sign
  ISBN: '9780991398249'

- id: Summerville2016
  type: article-journal
  author:
  - family: Summerville
    given: Adam James
  - family: Snodgrass
    given: Sam
  - family: Mateas
    given: Michael
  - family: Ontañón
    given: Santiago
  issued:
  - year: '2016'
  title: 'The VGLC: The Video Game Level Corpus'
  container-title: Arxiv
  abstract: Levels are a key component of many different video games, and a large
    body of work has been produced on how to procedurally generate game levels. Recently,
    Machine Learning techniques have been applied to video game level generation towards
    the purpose of automatically generating levels that have the properties of the
    training corpus. Towards that end we have made available a corpora of video game
    levels in an easy to parse format ideal for different machine learning and other
    game AI research purposes.
  keyword: corpus,level design,machine learning,procedural content genera-,tion,video
    games
  URL: http://arxiv.org/abs/1606.07487

- id: Summerville2015a
  type: article-journal
  author:
  - family: Summerville
    given: Adam
  - family: Mateas
    given: Michael
  issued:
  - year: '2015'
  title: '<span class="nocase">Sampling Hyrule: Sampling Probabilistic Machine Learning
    for Level Generation</span>'
  page: '1-5'
  abstract: 'Experimental AI in Games: Papers from the AIIDE 2015 Workshop'
  keyword: EXAG
  URL: http://www.exag.org/accepted-papers/$\backslash$npapers3://publication/uuid/6C73920E-C485-4CC6-9FDD-F455CEDC15B1

- id: Togelius2010
  type: article-journal
  author:
  - family: Togelius
    given: Julian
  - family: Preuss
    given: Mike
  - family: Yannakakis
    given: Gn
  issued:
  - year: '2010'
  title: <span class="nocase">Towards multiobjective procedural map generation</span>
  container-title: Proceedings of the 2010 Workshop on Procedural Content Generation
    in Games PCGames 10
  page: '1-8'
  abstract: A search-based procedural content generation (SBPCG) algorithm for strategy
    game maps is proposed. Two representations for strategy game maps are devised,
    along with a number of objectives relating to predicted player experience. A multiobjective
    evolutionary algorithm is used for searching the space of maps for candidates
    that satisfy pairs of these objectives. As the objectives are inherently partially
    conflicting, the algorithm generates Pareto fronts showing how these objectives
    can be balanced. Such fronts are argued to be a valuable tool for designers looking
    to balance various design needs. Choosing appropriate points (manually or automatically)
    on the Pareto fronts, maps can be found that exhibit good map design according
    to specified criteria, and could either be used directly in e.g. an RTS game or
    form the basis for further human design.
  URL: http://portal.acm.org/citation.cfm?doid=1814256.1814259$\backslash$nhttp://dl.acm.org/citation.cfm?id=1814259
  DOI: 10.1145/1814256.1814259
  ISBN: '9781450300230'
...

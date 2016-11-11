(* ::Package:: *)

BeginPackage["Tilemap`"]; 
ExtractTileset::usage = "extracts the tile set of a given tilemap image.";
FindClosestTile::usage = "Replace a given tile by the closest one in the set.";
GenerateDependencyMatrix::usage = "Genereate the dependency matrix when given an appropriate kernel.";
ExtractMapMatrix::usage = "Create an array representing a map encoded as text.";
PotentialPredecessors::usage = "Create all the possible predecessors for a given kernel and mapMatrix.";
PredecessorTilePairs::usage = "Gives a matrix with tiles and predecessor pairs.";
ProbabilityGivenPredecessor::usage = "Gives the probability of a tile given a set of predecessor.";
MapDistribution::usage = "Gives the conditional probability distribution of a map given in array form.";
Begin["Private`"]; 

ExtractTileset[img_Image, tileSize_Integer] := DeleteDuplicates[
    Flatten[ImagePartition[img, tileSize]]];
    
ExtractTileset[mapMatrix_List] := mapMatrix // Flatten // DeleteDuplicates;
    
TileMapToString[map_List]:=Append[#,"\n"]&/@map//StringJoin;

FindClosestTile[tileset_List,tile_Image]:=
	findClosest[tileset,tile] =
		MinimalBy[tileset,(ImageDifference[#,tile]//ImageData//Flatten//Total)&,1]
		
GenerateDependencyMatrix[kernel_List, mat_List]:= Module[
{paddedMatrix, reversedKernel},
	reversedKernel = Reverse[Reverse/@ kernel];
	paddedMatrix = ArrayPad[mat, {{2,0}, {2,0}}];
	ListConvolve[reversedKernel, paddedMatrix]]
	
ExtractMapMatrix[file_String]:=StringPartition[#,1]& /@ StringSplit[Import[file]];

PotentialPredecessors[tileset_List, numberPredecessors_Integer]:= Module[
	{temp},
	temp = Prepend[
			Flatten[
				Tuples[tileset, #]& /@ Table[x, {x, 1, numberPredecessors}],
				1],
			{0}];
	DeleteDuplicates[Fold[Plus, 0, #]& /@ temp]]
	
PredecessorTilePairs[dependencyMatrix_List, mapMatrix_List]:=
	Flatten[MapThread[List, {dependencyMatrix, mapMatrix}, 2], 1];
	
ProbabilityGivenPredecessor[predecessorTilePairs_List,predecessor_,tileset_List]:=
	Count[predecessorTilePairs,{predecessor,#}]&/@tileset->tileset
	
MapDistribution[kernel_List, mapMatrix_List]:= Module[
	{numberOnes = Count[kernel,1,2],
	tileSet = ExtractTileset[mapMatrix],
	potentialPredecessors,
	dependencyMatrix = GenerateDependencyMatrix[kernel,mapMatrix]},
	potentialPredecessors = PotentialPredecessors[tileSet,numberOnes];
	AssociationThread[
	potentialPredecessors -> 
		(ProbabilityGivenPredecessor
			[predecessorTilePairs,#,tileSet]& /@ potentialPredecessors)]];
	

End[]; 
EndPackage[]; 

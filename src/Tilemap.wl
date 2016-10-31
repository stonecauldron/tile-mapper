(* ::Package:: *)

BeginPackage["Tilemap`"]; 
ExtractTileset::usage = "extracts the tile set of a given tilemap image.";
FindClosestTile::usage = "Replace a given tile by the closest one in the set.";
Begin["Private`"]; 

ExtractTileset[img_Image, tileSize_Integer] := DeleteDuplicates[
    Flatten[ImagePartition[img, tileSize]]];
    
TileMapToString[map_List]:=Append[#,"\n"]&/@map//StringJoin;

FindClosestTile[tileset_List,tile_Image]:=
	findClosest[tileset,tile] =
		MinimalBy[tileset,(ImageDifference[#,tile]//ImageData//Flatten//Total)&,1]
End[]; 
EndPackage[]; 
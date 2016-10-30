(* ::Package:: *)

BeginPackage["Tilemap`"]; 
ExtractTileset::usage = "extracts the tile set of a given tilemap image."; 
Begin["Private`"]; 

ExtractTileset[img_Image, tileSize_Integer] := DeleteDuplicates[
    Flatten[ImagePartition[img, tileSize]]];
    
TileMapToString[map_List]:=Append[#,"\n"]&/@map//StringJoin;
End[]; 
EndPackage[]; 

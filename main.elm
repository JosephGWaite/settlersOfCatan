import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..) 


type Resource = Wheat | Sheep | Rock | Desert | Wood

type Tile = Resource (Int,Int) Int 
tile resource pos value = case resource of 
        Wheat -> 
                ngon 6 (45*scale) |> filled yellow |> move pos
        Sheep -> 
                ngon 6 (45*scale) |> filled blue |> move pos
        Rock ->  
                ngon 6 (45*scale) |> filled grey |> move pos
        Wood -> 
                ngon 6 (45*scale) |> filled brown |> move pos
        Desert -> 
                ngon 6 (45*scale) |> filled black |> move pos

scale = 1
yjump = 87 * scale
yshift = yjump/2
xjump = 75 * scale
tileSize = 47 * scale

--tilePositions = [
        

main : Element
main = collage 1000 1000 [
                          tile Wheat (0,0) 0
                         ,tile Sheep (0, yjump) 0
                         ,tile Rock (xjump, yshift) 0 
                         ,tile Desert (-xjump, yshift) 0  
                         ,tile Wood (xjump, yshift + yjump) 0 
                         ,tile Wood (0, yjump*2) 0
                         ,tile Rock (xjump * 2, yshift * -2) 0
                         ,tile Rock (xjump, -2*yjump+yshift) 0 
                         ,tile Rock (xjump, -yshift) 0
                         ,tile Wheat (2*xjump, 0) 0
                         ,tile Wheat (2*xjump, yjump) 0
                         ,tile Wheat (0,-yjump) 0
                         ,tile Sheep (-xjump, -yshift) 0
                         ,tile Rock (-xjump * 2, -2 * yshift) 0 
                         ,tile Rock (-xjump * 2,  yjump) 0 
                         ,tile Sheep (-xjump, -2* yjump+yshift) 0
                         ,tile Rock (-xjump * 2, 0) 0 
                         ,tile Rock (-xjump, yshift + yjump) 0 
                         ,tile Desert (-xjump, yshift) 0  
                         ,tile Wood (xjump, yshift + yjump) 0 
                         ,tile Wood (0, -yjump*2) 0
                         ] 

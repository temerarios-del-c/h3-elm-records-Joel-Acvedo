module Main exposing (..)

import Html
import Html.Attributes


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16 GB"
    , model = "Pavilon"
    , brand = "HP"
    , screenSize = "12 pulgadas"
    }


main : Html.Html msg
main =
    Html.div
        []
        [ Html.h1
            []
            [ Html.text "My laptop" ]
        , Html.div
            []
            [ Html.ul
                []
                [ Html.li
                    []
                    [ Html.text ("Ram: " ++ .ram myLaptop) ]
                , Html.li
                    []
                    [ Html.text ("Modelo: " ++ .model myLaptop) ]
                , Html.li
                    []
                    [ Html.text ("Marca: " ++ .brand myLaptop) ]
                , Html.li
                    []
                    [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]

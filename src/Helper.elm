module Helper exposing (..)


type alias Lenguaje =
    { name : String, releaseYear : Int, currentVersion : String }


langs : List Lenguaje
langs =
    [ { name = "Elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    ]


languageNames : List Lenguaje -> List String
languageNames lista =
    List.map .name lista

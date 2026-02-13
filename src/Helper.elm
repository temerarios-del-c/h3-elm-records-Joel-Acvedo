module Helper exposing (..)

--Ejercicio Simple 1


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



--Ejercicio Simple 2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3



--Ejercicio simple 3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- Ejercicios de Records
--Mostrar solo el nombre de una lista de records , es decir el nombre del lenguaje


type alias Lenguaje =
    { name : String, releaseYear : Int, currentVersion : String }


langs : List Lenguaje
langs =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]


languageNames : List Lenguaje -> List String
languageNames lista =
    List.map .name lista



--Ejercicio 2 de records
--Hacer un ejercicio que muestre si es Usuario
--Nota para mi , un record puede servirte muchisimo , se llama como una variable de un objeto en java
--user.name o user.edad o user.tipo
--Puede ser con el nombre de la variable que yo quiera y puedo ponerla por delante
--.uType perro


type alias Usuario =
    { name : String, uType : String }


listaUniversidad : List Usuario
listaUniversidad =
    [ { name = "Roberto"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
    ]


isStudent : Usuario -> String
isStudent user =
    if user.uType == "Student" then
        user.name

    else
        ""


onlyStudents : List Usuario -> List String
onlyStudents lista =
    List.map isStudent lista



--Ejercicio 3 de Records
--Definir un record para videojuegos


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


listVideogames : List Videogame
listVideogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 100
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of time"
      , releaseYear = 2019
      , available = True
      , downloads = 100
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres videojuego =
    List.map .genres videojuego

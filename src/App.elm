port module App exposing (..)

port getName : (String -> msg) -> Sub msg
port getVersion : (String -> msg) -> Sub msg
port getTauriVersion : (String -> msg) -> Sub msg


type alias Model =
  { name : String
  , version : String
  , tauriVersion : String
  }

init : Model
init =
    Model "-" "-" "-"

type Msg 
    = Name String
    | Version String
    | TauriVersion String

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    let newModel = case msg of
            Name n ->  {model | name = n}
            Version v ->  {model | version = v}
            TauriVersion tv ->  {model | tauriVersion = tv}
    in
        (newModel, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch [ getName Name
              , getVersion Version
              , getTauriVersion TauriVersion
                ]

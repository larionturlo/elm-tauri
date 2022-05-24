module Main exposing (..)


import Html exposing (Html, text, div, ul, h1 , h2, li)
import App
import Browser

type alias Model =  App.Model

init : () -> (Model, Cmd msg)
init _ = (App.init, Cmd.none)
main =
  Browser.element
    { init = init
    , update = App.update
    , subscriptions = App.subscriptions
    , view = view
    }

update : App.Msg -> Model ->  ( Model, Cmd App.Msg )
update = App.update

view : Model -> Html msg
view model =
      div [ ] 
        [ h1 [] [ text "Test" ]
        , h2 [] [ text "App info"]
        , ul [] 
            [ li [] [ text ("Name: " ++ model.name) ]
            , li [] [ text ("Version: " ++ model.version) ]
            , li [] [ text ("Tauri Version: " ++ model.tauriVersion) ]
            ]
        ]
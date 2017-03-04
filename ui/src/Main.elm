module Main exposing (..)

import Html exposing (..)


type alias Model =
    String


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( "TODO", Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    h1 [] [ text model ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }

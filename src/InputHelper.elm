module InputHelper exposing (inputs, unwrapToString)

import Element exposing (centerX, rgba, text)
import Element.Font as Font
import Element.Input as Input
import Html.Attributes exposing (placeholder)
import Maybe.Extra exposing (unwrap)


unwrapToString : Maybe Int -> String
unwrapToString =
    unwrap "" String.fromInt


inputs : String -> (String -> msg) -> String -> Element.Element msg
inputs description inputType getValue =
    Input.text
        [ Font.color (rgba 0 0 0 1)
        , Font.center
        , centerX
        ]
        { text = getValue
        , placeholder = Just << Input.placeholder [] <| text description
        , onChange = inputType
        , label = Input.labelAbove [] (text description)
        }

Use the `book` function and `Book` type when creating a new book and the custom `Chapter` type when creating a new chapter. Everything else should work the same as expected.

```elm
module MyBook exposing (main)


import Html.Styled exposing (div, text)
import ElmBook exposing (withChapters)
import ElmBook.ElmCSS exposing (Book, book, Chapter)
import ElmBook.Chapter exposing (chapter, renderComponent)


firstChapter : Chapter x
firstChapter =
    chapter "First Chapter"
        |> renderComponent
            (div [] [ text "Hello" ])


main : Book ()
main =
    book "ElmBook with Elm-CSS"
        |> withChapters
            [ firstChapter
            ]
```

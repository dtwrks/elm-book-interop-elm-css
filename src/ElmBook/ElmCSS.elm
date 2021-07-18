module ElmBook.ElmCSS exposing (Book, Chapter, book)

{-|

@docs Book, book, Chapter

-}

import ElmBook.Custom exposing (customBook)
import Html.Styled


type alias Html state =
    Html.Styled.Html (ElmBook.Custom.Msg state)


type alias BookBuilder state =
    ElmBook.Custom.BookBuilder state (Html state)

{-| Replaces `ElmBook.Book`
-}
type alias Book state =
    ElmBook.Custom.Book state (Html state)


{-| Replaces `ElmBook.Chapter`
-}
type alias Chapter state =
    ElmBook.Custom.Chapter state (Html state)


{-| Replaces `ElmBook.book`
-}
book : String -> BookBuilder state
book =
    customBook Html.Styled.toUnstyled

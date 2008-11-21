\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
    \tempo 4=108
    \time 2/4
    \key c \minor
    \relative c'' {
      r8 g g g
      ees2
      r8 f f f
      d2~
      d
      \bar "||"
    }
  }
  \layout { }
  \midi { }
}

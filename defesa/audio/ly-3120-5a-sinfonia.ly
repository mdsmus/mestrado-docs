\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
    \tempo 4=108
    \time 4/4
    \relative c'' {
      \bracketUp
      \override TextScript #'extra-offset = #'( 0 . 2 )
      \relative c'' {
        r8 g\startGroup^\markup{m1} g g
        ees2
        r8 f f f
        d2\stopGroup
        \bar "||"
      }
      g4.\startGroup^\markup{m2} a,,8
      g'2
      aes,\stopGroup
      \bar "||"
    }
  }
  \layout { }
  \midi { }
}
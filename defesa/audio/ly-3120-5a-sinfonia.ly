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
      r8 g'\startGroup^\markup{m2} g g
      aes,2
      r8 ges' ges ges a,2\stopGroup
      \bar "||"
    }
  }
  \layout { }
  \midi { }
}
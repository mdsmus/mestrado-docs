\version "2.10.33"

\include "lib.ly"

\score {
  \new Staff {
      \time 4/4
      \relative c''' {
        \set Score.currentBarNumber = #105
        \bar ""
        \partial 4
        \bracketUp
        \override TextScript #'extra-offset = #'( -6 . 4 )
        %% FIXME: inicia no sujeito
        %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
        gis4\p^\startGroup^\markup{rot-5 RP(5 3 4 1 2 0)}
        b8( ais4) d8( cis4)\stopGroup
        %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 4))
        \revert TextScript #'extra-offset
        \override TextScript #'extra-offset = #'( -1 . 0 )
        e8->(^\startGroup^\markup{rot-4 RP(5 3 4 1 2 0)} gis,)
        b( ais) d2 e4~\stopGroup
        \override TextScript #'extra-offset = #'( 0 . 2 )
        e\startGroup^\markup{rot-3 RP(5 3 4 1 2 0)} cis4 g' e,
        bes' g2.\stopGroup
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
  \midi {}
}
\paper {
  paper-width = 12.6\cm
  paper-height = 3\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}
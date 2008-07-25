\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 4/4
      \relative c''' {
        \set Score.currentBarNumber = #105
        \bar ""
        \bracketUp
        \override TextScript #'extra-offset = #'( 0 . 1 )
        %% sujeito do fugato
        %% #s(5 3 4 1 2 0)
        d4-^\startGroup^\markup{P(5 3 4 1 2 0)} b-^ cis-^ gis8( ais
        g?4.)\colcheteC
        %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
        \override TextScript #'extra-offset = #'( 0 . 3 )
        bes8->^\startGroup^\markup{rot-3 P(5 3 4 1 2 0)}( e,8) g'4( cis,8~
        cis e8~ e2)\stopGroup
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 9.6\cm
  paper-height = 3\cm
  line-width = 10.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}

\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 5/4
      \clef bass
      \relative c' {
        \set Score.currentBarNumber = #1
        \bar ""
        %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
        %% procedimentos utilizados: expansão de intervalos e transposição
        \bracketUp
%         \override TextScript #'extra-offset = #'( 0 . 2 )
        g1\startGroup^\markup{\italic{segmento 1}} e4(
        fis2.~ fis2)\stopGroup
        fis1\startGroup^\markup{\italic{segmento 2}} cis4(
        e1)\stopGroup r4
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 9.1\cm
  paper-height = 2\cm
  top-margin = -.3\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}

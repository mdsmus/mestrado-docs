\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 4/4
      \relative c' {
        \set Score.currentBarNumber = #150
        \bar ""
        \partial 16*9
        \bracketUp
%         \override TextScript #'extra-offset = #'( -6 . 4 )
        c16^\startGroup^\markup{Forma original}( ees des fis e g4~\stopGroup
        g bes4. a4.~
        a2~ a8.) cis,16^\startGroup^\markup{Expansão de 2ª para 3ª}( g' e bes' g
        cis2.\stopGroup bis4
        dis1)\trill
        fis4( e a g
        %% expansão de #s(5 3 4 1 2 0)
        bes2. a4~
        a2)^\startGroup^\markup{Expansão de 2ª para 4ª} bes,16( ees) e,?\<( a) bes,4~
        bes2.\stopGroup r4\!
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 12.6\cm
  paper-height = 3\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  print-page-number = #'nil
  indent = #0
}

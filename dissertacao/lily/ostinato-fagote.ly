\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 4/4
      \relative c {
        \set Score.currentBarNumber = #158
        \bar ""
        \bracketUp
        
        \clef bass
        %% idéia de INT_1(5 3 4 1 2 0)
        a4\p g8\st a4. g8\st a~
        a4 g8\st a4. cis8\st dis,\st
        a'4 g8\st a4. g8\st a~
        a4 g8\st a4. r4
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 13.6\cm
  paper-height = 2\cm
  line-width = 13.4\cm
  top-margin = -.5\cm
  left-margin = .2\cm
  tagline = 0
  indent = #0
}

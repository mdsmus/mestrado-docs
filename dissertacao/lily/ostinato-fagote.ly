\version "2.11.64"

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
        a4\p g8\st a8~ a4 g8\st a~
        a4 g8\st a8~ a4 cis8\st dis,\st
        a'4 g8\st a8~ a4 g8\st a~
        a4 g8\st a8~ a4 r4
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 14.9\cm
  paper-height = 1.9\cm
  top-margin = -.7\cm
  left-margin = .5\cm
  tagline = 0
  indent = #0
}

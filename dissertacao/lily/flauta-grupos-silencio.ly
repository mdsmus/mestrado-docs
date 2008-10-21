\version "2.10.33"

\include "../config/lib.ly"

#(set-global-staff-size 15.5)

\score {
  \new Staff {
      \time 4/4
      \relative c'' {
        \set Score.currentBarNumber = #199
        \bar ""
        \bracketUp
        \override TextScript #'extra-offset = #'( 0 . 1 )
        %% corrigir o nome do motivo
        r2 g16^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B1))}} e fis cis dis r8.
        r8. c?16\stopGroup g'16\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B1))}} e fis cis dis c?\stopGroup r8 r4
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
  head-separation = -1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}

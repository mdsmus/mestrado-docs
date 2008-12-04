\version "2.11.64"

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
  paper-width = 9.8\cm
  paper-height = 1.5\cm
  top-margin = -.7\cm
  left-margin = .4\cm
  tagline = 0
  indent = #0
}

\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 6/8
      \relative c'' {
        \set Score.currentBarNumber = #76
        \bar ""
        \bracketUp
        s4. g4.~^\markup{Ob.}
        g2.~
        g4.~ g4 fis8
        cis2.~
        cis4.~ cis8 c4~
        c4. s4.
        \bar "||"
        \cadenzaOn
        \override Stem #'transparent = ##t
        \override TextScript #'extra-offset = #'( -5 . 0 )
        e4^\markup{Notas omitidas} dis
        \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 14.5\cm
  paper-height = 1.8\cm
  top-margin = -.6\cm
  left-margin = .4\cm
  tagline = 0
  indent = #0
}

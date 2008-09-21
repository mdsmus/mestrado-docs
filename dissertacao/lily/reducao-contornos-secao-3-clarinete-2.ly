\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 6/8
      \relative c'' {
        \set Score.currentBarNumber = #81
        \bar ""
        \bracketUp
        s4. g4.~^\markup{Cl. (em dó)}
        g2.~
        g4.~ g8 e4~
        e4. cis
        c?2.
        \bar "||"
        \cadenzaOn
        \override Stem #'transparent = ##t
        fis4^\markup{Notas omitidas} dis
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
  paper-width = 10.1\cm
  paper-height = 3\cm
  line-width = 11\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}

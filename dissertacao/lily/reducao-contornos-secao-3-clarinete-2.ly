\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 6/8
      \relative c'' {
        \set Score.currentBarNumber = #81
        \bar ""
        \bracketUp
        s4. g4.~^\markup{Cl. (som real)}
        g2.~
        g4.~ g8 e4~
        e4. cis
        c?2.
        \bar "||"
        \cadenzaOn
        \override Stem #'transparent = ##t
        \override TextScript #'extra-offset = #'( -5 . 0 )
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
  paper-width = 11.8\cm
  paper-height = 1.8\cm
  top-margin = -.6\cm
  left-margin = .4\cm
  tagline = 0
  indent = #0
}

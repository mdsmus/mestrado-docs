\version "2.10.33"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 6/8
  \set Score.currentBarNumber = #68
  \bar ""
  \bracketUp
}

clarinete = {
  \relative c'' {
    g2.~\ppp\<(
    g2.~
    g4.\mp\> c,4.~
    c2.~
    c2.~
    c4.\pp) r
  }
}

trompa = {
  \relative c' {
    g4.\st r8 g4\st
    g4.\st g4.\st
    g4.\st g4.\st
    g4.\st r8 g4\st
    g4.\st g4.\st
    g4.\st g4.\st
  }
}

fagote = {
  \clef bass
  \relative c {
    a8-.->[ a-. a-. a-.] a'-.-> r
    a,8-.-> a'-. a-. cis-.-> a-. a-.
    a,-.-> a'-. a-. dis-.-> a-. a-.
    a,-.->[ a'-. a-. a-.] cis-.-> r
    a,8-.-> a'-. a-. cis-.-> a-. a-.
    a,-.-> a'-. a-. dis-.-> a-. a-.
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Cl.Bb"}
      \global
      \transposition bes
      \transpose c d {
        \clarinete
      }
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Tpa.F"}
      \global
      \transposition f
      \transpose c g {
        \trompa
      }
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Fg."}
      \global
      \fagote
    >>
  >>
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
  indent = #0
}

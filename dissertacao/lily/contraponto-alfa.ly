\version "2.11.64"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 5/4
  \set Score.currentBarNumber = #9
  \bar ""
  \bracketUp
}

oboe = {
  \relative c'' {
    g1\p e4(
    fis2.~ fis2~
    fis2.) r4 g~
  }
}

clarinete = {
  \relative c' {
    e2\p^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B1))}}( cis2.
    dis2) r4 a2(
    bes2 g2) r4
  }
}

fagote = {
  \clef bass
  \relative c' {
    g1\p e4(
    fis2.~ fis2)
    fis2.\espressivo cis2(
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Ob."}
      \global
      \oboe
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Cl.Bb"}
      \global
      \transpose c d {
        \clarinete
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
  paper-width = 6.2\cm
  paper-height = 3.4\cm
  top-margin = -1\cm
  left-margin = .9\cm
  tagline = 0
  indent = #0
}

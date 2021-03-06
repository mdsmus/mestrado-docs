\version "2.11.64"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 4/4
  \set Score.currentBarNumber = #208
  \bar ""
  \bracketUp
}

flauta = {
  \relative c' {
    cis16 dis c? r r2.
    R1*2
    r4 g'16 e fis cis dis c? r8 r4
  }
}

oboe = {
  \relative c'' {
    r2 cis16\ppp dis c? g e fis r8
    R1
    r4 cis'16 dis c? g r2
    R1
  }
}

clarinete = {
  \relative c' {
    R1
    e16 g, bes e,16 r4 g'16 cis, e16 r g, r8.
    r2. bes16 e, g' cis,
    R1
  }
}

fagote = {
  \clef bass
  \relative c' {
    R1*2
    e16 cis g' r r2.
    r2. e,16 bes' g r
  }
}

trompa = {
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Fl."}
      \global
      \flauta
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Ob."}
      \global
      \oboe
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Cl."}
      \global
      \clarinete
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Fg."}
      \global
      \fagote
    >>
  >>
  \layout {
    indent = #0
    line-width = #142
    ragged-last = ##f
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 15.1\cm
  paper-height = 4.5\cm
  line-width = 13.4\cm
  top-margin = -1\cm
  left-margin = .8\cm
  tagline = 0
  indent = #0
}

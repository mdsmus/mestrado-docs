\version "2.11.64"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 4/4
  \set Score.currentBarNumber = #162
  \override Score.BarNumber #'break-visibility = #end-of-line-invisible
  \bar ""
  \partial 4
  \bracketUp
  s4
  s1
  \revert Score.BarNumber #'break-visibility
}

flauta = {
  \relative c''' {
  }
}

oboe = {
  \relative c' {
  }
}

clarinete = {
  \relative c' {
    g4~\p
    g e8->\st fis8~ fis4 fis8 g
    e2 r4 g4~
    g e8->\st fis8~ fis4 fis8 g~
    g2 r4 g4~
    g e8->\st fis8~ fis4 fis8 g
  }
}

fagote = {
  \clef bass
  \relative c {
    r4
    a4 g8->\st a8~ a4 g8->\st a~
    a4 g8->\st a8~ a4 cis8->\st dis,->\st
    a'4 g8->\st a8~ a4 g8->\st a~
    a4 g8->\st a8~ a4 r4
    a4 g8->\st a8~ a4 g8->\st a~
  }
}

trompa = {
  \relative c {
    \clef bass
    ees4~\p
    ees c8->\st bes8~ bes4 cis8 dis
    c?2 r4 ees4~
    ees c8->\st bes8~ bes4 cis8 dis~
    dis2 r4 ees4~
    ees c8->\st bes8~ bes4 cis8 dis
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Cl."}
      \global
      \clarinete
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Tpa."}
      \global
      \trompa
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
  paper-height = 4\cm
  top-margin = -1.4\cm
  left-margin = .8\cm
  tagline = 0
  print-page-number = #'nil
  head-separation = -1\cm
  indent = #0
}

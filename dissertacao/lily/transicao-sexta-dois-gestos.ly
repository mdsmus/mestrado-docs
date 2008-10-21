\version "2.10.33"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 4/4
  \set Score.currentBarNumber = #223
  \bar ""
  \bracketUp
}

flauta = {
  \relative c''' {
    g2\ff g'16 e fis cis dis c? r8
    %% toca também material do fagote transposto oitava acima
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c? r8
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c? r8
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c? r8
  }
}

oboe = {
  \relative c' {
    e16 fis8.~\fp fis2\f cis'16 dis c? g
    e fis8.~\p fis2 cis'16\f dis c? g
    e fis8.~\p fis2 cis'16\mf dis c? g
    %% toca também material do clarinte transposto oitava acima
    e fis r8 e'16 g, bes e, g' cis, r8 cis16 dis c? g
  }
}

clarinete = {
  \relative c' {
    e4\ff e16 g, bes e, g' cis,8.~\fp cis4~
    cis4 e16\f g, bes e, g' cis,8.~\p cis4~
    cis4 e16\mf g, bes e, g' cis,8.~\p\> cis4
    \setTextCresc
    e,16\ppp( g fis bes a c a c bes e cis dis) r4
  }
}

fagote = {
  \clef bass
  \relative c' {
    e16\ff cis g' e, bes' g8.~\fp g2
    c,,16\ppp( ees des fis e g e g fis bes a c) r4
    c,16( ees des fis e g e g fis bes a c ees des fis e
    g4) r c,,16( ees des fis e g e g)
  }
}

trompa = {
  \relative c' {
    \setTextDecresc
    g8~\sfz\> g2..~
    g1~
    g8\ppp r8 r2.
    R1
  }
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
  print-page-number = #'nil
  head-separation = -1\cm
  indent = #0
}

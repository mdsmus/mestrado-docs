\version "2.11.64"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \override TextScript #'color = #red
  \override Staff.HorizontalBracket #'color = #blue
  \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-7 . 3)
  \time 5/4
  \set Score.currentBarNumber = #9
  \mark #1
  \bar ""
  \bracketUp
  \override Staff.TimeSignature #'style = #'()
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.MetronomeMark #'padding = #6
  s1*5/4*6
  \mark #2
  s1*5/4
}

oboe = {
  \relative c'' {
    %% variação sobre material do fagote seção AAA
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    \override TextScript #'extra-offset = #'( 0 . 1 )
    g1\p^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B2))}} e4(
    fis2.~ fis2~
    fis2.)\stopGroup r4 g~^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B2))}}
    g1 e4(
    fis2.)\stopGroup r4 fis~
    fis1 cis4(

    e2) r2.
  }
}

clarinete = {
  \relative c' {
    %% #s(5 3 4 1 2 0)
    \override TextScript #'extra-offset = #'( 0 . 1 )
    e2\p(^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B1)) transposto}} cis2.
    dis2) r4 a2(
    bes2 g2)\stopGroup r4

    %% repetição
    e'2(^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B1)) transposto}} cis2.
    dis2) a2.(
    bes2 g2)\stopGroup r4

    g1\p\espressivo e4
  }
}

fagote = {
  \clef bass
  \relative c' {
    %% repetição com variação do material utilizado em AAA
    g1\p\espressivo e4(
    fis2.~ fis2)
    fis2.\espressivo cis2(
    e1) r4
    g1\p\espressivo cis,4(
    e2.~ e2~
    e1) r4
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Ob. "}
      \global
      \oboe
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Cl.Bb "}
      \global
      \transposition bes
      \transpose c d {
        \clarinete
      }
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Fg. "}
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
  paper-width = 14.6\cm
  paper-height = 5\cm
  line-width = 13.5\cm
  head-separation = 0\cm
  left-margin = 1\cm
  tagline = 0
  indent = #0
}

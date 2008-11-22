\version "2.10.33"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \override Staff.HorizontalBracket #'color = #blue
  \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-7 . 3)
  \time 4/4
  \set Score.currentBarNumber = #167
  \bar ""
  \bracketUp
  \override Staff.TimeSignature #'style = #'()
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.MetronomeMark #'padding = #6
  s1*4/4*5
}

oboe = {
  \relative c' {
    R1*2
    %% preparação com retrogradação de #s(5 3 4 1 2 0)
    \override TextScript #'color = #red
    \override TextScript #'extra-offset = #'( 0 . 1 )
    r4 r8. c16\p(^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B2))}} ees des fis e) g4~
    g\stopGroup e8\st fis4. cis8 g'
    e2 r4 s
  }
}

clarinete = {
  \relative c' {
    e2 r4 g4~
    g e8\st fis4. e8 e~
    e2 r2
    R1*2
  }
}

trompa = {
  \relative c {
    c?2 r4 ees4~
    ees c8\st bes4. cis8 cis~
    cis2 r4 ees'4~
    %% junto com oboé
    ees c?8\st bes4. a8 dis
    c2 r4 s
  }
}

fagote = {
  \clef bass
  \relative c {
    a4 g8\st a4. cis8\st dis,\st
    a'4 g8\st a4. g8\st a~
    a4 g8\st a4. r4

    a4 g8\st a4. g8\st a~
    a4 g8\st a4. cis8\st dis,\st
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
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Tpa.F "}
      \global
      \transposition f
      \transpose c g {
        \trompa
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
  paper-height = 6\cm
  line-width = 13.5\cm
  head-separation = 0\cm
  left-margin = 1\cm
  tagline = 0
  indent = #0
}

\version "2.10.33"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 4/4
  \set Score.currentBarNumber = #257
  \bar ""
  \bracketUp
}

flauta = {
  \relative c'' {
    r4 r8. c'16\f( ees des fis e g4~
    g4) e8\st fis4. cis8\st e~
    e4 g8\st e\st r2
    g4 e8\st fis4. cis8\st e~
    e4 e8\st cis\st r4 g'~
  }
}

oboe = {
  \relative c'' {
    e4 e8\st cis\st r4 ees4~
    ees4 c8\st bes4. a8\st c~
    c4 ees8\st c\st r2
    ees4 c8\st bes4. a8\st c~
    c4 cis8\st a\st r4 ees'4~
  }
}

clarinete = {
  \relative c' {
    r4 ees8-.->[ r r ees-.->] r4
    ees8-.-> r8 r4 ees8-.-> r ees8-.->[ r
    r ees8-.->] r4 ees8-.->[ r r ees8-.->]
    r4 ees8-.-> r r4 ees8-.-> r
    %% repete padrão
    ees8-.->[ r r ees8-.->] r4 ees8-.-> r
  }
}

trompa = {
  \relative c {
    fis2. fis4~
    fis2. cis4
    e1
    r4 g2.~
    g4 e fis2
  }
}

fagote = {
  \clef bass
  \relative c {
    a4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. r4
    a4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. cis8->\st dis,->\st
    a'4 g8->\st a4. g8->\st a~
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
      \transpose c d {
        \clarinete
      }
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup {\hcenter-in #5 "Tpa."}
      \global
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
  print-page-number = #'nil
  head-separation = -1\cm
  indent = #0
}

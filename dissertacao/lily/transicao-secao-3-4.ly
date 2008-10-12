\version "2.10.33"

\include "../config/lib.ly"

#(set-global-staff-size 12.5)

global = {
  \time 6/8
  \set Score.currentBarNumber = #125
  \bar ""
  \bracketUp
  \override Staff.TimeSignature #'style = #'()
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.MetronomeMark #'padding = #6
  s1*6/8*4
  \bar "||"
  \mark #11
  \time 4/4
  \tempo 4=120
  s1*4
}

flauta = {
  \relative c''' {
    bes4.~( bes8 c4
    a2.~\p
    a2.) 
    r4. r16 a16\<( c bes dis cis
    %% seção BBA
    d?4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill\tris e2)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
    gis,4\p
    b8( ais4) d8( cis4)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 4))
    e8->( gis,)
  }
}

oboe = {
  \relative c'' {
    r8 g-. g-. g-.[ r g-.]
    r g-. g-. r g-. g-.
    r g-. g-. r g-. g-.
    r g-. g-. g-.[ r g-.]
    %% seção BBA
    r8[ g-. g-. r] g-.[ g-. r g-.]
    g8-.[ r g-. g-.] r2
    %% sujeito do fugato transposto a quinta
    \transpose d a' {
      \relative {
        %% #s(5 3 4 1 2 0)
        d4-^\f b-^ cis-^ gis8( ais
        g?4.)
        %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
        bes8->( e,8) g'4( cis,8~)
      }
    }
  }
}

clarinete = {
  \relative c'' {
    dis4.\st r16 c16\<( dis cis fis e
    g4.~\f e
    fis4. cis4.
    dis4.~ dis8 c4)
    %% seção BBA
    dis8-.->\p[ r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r r4 g,8-.-> r
    dis'8-.->\p[ r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r
  }
}

trompa = {
  \relative c'' {
    r4. r8 g4\st\p
    g,4.\st dis'4.\st
    g,4.\st cis4.\st
    g4.\st r8 dis'4\st
    %% seção BBA
    R1*4
  }
}

fagote = {
  \clef bass
  \relative c' {
    r8 a-. a-. a4-. a8-.
    r8 a-. a-. r a-. a-.
    r a-. a-. r a-. a-.
    r a-. a-. a4-. a8-.
    %% seção BBA
    r8[ a-. a-. r] a-.[ a-. r a-.]
    a-.[ r a-. a-.] r a-. a-. a-. r a-.
    r8[ a-. a-. r] a-.[ a-. r a-.]
    a-.[ r a-. a-.] r a-.
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
  head-separation = -1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}

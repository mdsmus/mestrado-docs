\version "2.10.0"

%% variáveis

global = {
  \tempo 4=60
  
}

segAA = {
  \relative c {
    %% contorno 1: segmento 1 em 3 notas (apoj). segmento 2 em 2 notas
    f2\pp\<\( \acciaccatura e'8 f8-.\)\mp r cis4~\pp\<
    %% contorno 2: segmento 1 em 3 notas. segmento 2 em 3 notas (apoj).
    cis8\! d~\p d4~ d8 \breathe bis'\( cis4 \acciaccatura b!8 a4~
    %% contorno 3: segmento 1 em 6 notas (ritmo variado e apoj). segmento em 5 notas (ritmo variado).
    a16\) b8\<( cis16~ cis f8.) \acciaccatura g8 a32\mf( aes) g8-. ges16-. f-. r8.
    %% contorno 4: segmento 1 em 12 notas. segmento 2 em 2 notas
    f,16->\pp\< fis g gis a32 ais b c cis d dis e f8-.\f r cis-. r
  }
}

%% partitura

\book {
  \header {
    title = "Contornando"
    instrument = "para Clarinete em Si bemol"
    opus = "Opus quase 3"
    composer = "Marcos di Silva"
    date = "2007"
    copyright = "© Marcos di Silva"
  }
  \score {
    \new Staff <<
      \set Staff.midiInstrument = "clarinet"
      \global
      {
        \segAA
      }
    >>
    \midi { }
    \layout {
      \context { \Score
                 \override MetronomeMark #'extra-offset = #'(-9 . 0)
                 \override MetronomeMark #'padding = #'3
               }
      \context { \Staff
                 \override TimeSignature #'style = #'numbered
               }
      \context { \Voice
                 \override Glissando #'thickness = #3
                 \override Glissando #'gap = #0.1
               }
      \context {
        \Staff \consists "Horizontal_bracket_engraver"
      }
    }
  }
  \paper {
    #(set-paper-size "a4")
    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}

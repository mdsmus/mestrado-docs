\version "2.10.0"

%% variáveis

global = {
  %% segA
  \tempo 4=60
  s1*4/4*12
  \bar "||"
  %% segB
  \tempo 4=80
  s1*4/4*12
  \bar "||"
  %% segC
  \tempo 4=100
  s1*4/4*16
  \bar "|."
}

segA = {
  \textSpannerUp
  \override TextSpanner #'edge-text = #'("accel " . "")
  \relative c {
    %% contorno 1: segmento 1 em 3 notas (apoj). segmento 2 em 2 notas
    f2\pp\<\( \acciaccatura e'8 f8-.\)\mp r cis4~\pp\<
    %% contorno 2: segmento 1 em 3 notas. segmento 2 em 3 notas (apoj).
    cis8\! d~\p d4~ d8 \breathe bis'\( cis4 \acciaccatura b!8 a4~
    %% contorno 3: segmento 1 em 6 notas (ritmo variado e apoj). segmento em 5 notas (ritmo variado).
    a16\) b8\<( cis16~ cis f8.) \acciaccatura g8 a32\mf( aes) g8-. ges16-. f-. r8.
    %% contorno 4: segmento 1 em 12 notas. segmento 2 em 2 notas
    f,16->\pp\< fis g gis a32 ais b c cis d dis e f8-.\f r cis-.\p r
    %% contorno 5: segmento 1 em 2 notas. segmento 2 em 2 notas. notas curtas
    f,,8-. r r4 f'8-. r cis4\espressivo r4
    %% contorno 6: segmento 1 em 2 notas. segmento 2 em 2 notas. notas longas
    cis2\p\<( cis'4\f a)
    %% contorno 7: segmento 1 em 3 notas (apoj). segmento 2 em 2 notas. notas curtas
    \setTextCresc
    f,8-. r r4 \acciaccatura e'8\p\( f4\< cis\)
    %% contorno 8: segmento 1 em 4 notas (uma no meio e apoj). segmento 2 em 2 notas. notas curtas
    f,8.-. d'16 r4 \acciaccatura e8\( f4 cis\)
    %% contorno 9: segmento 1 com repetição da primeira nota. duas no meio e apoj. segmento 2 em 2 notas.
    f,16 f\startTextSpan r8 r16 d' c8-. \acciaccatura e8 f8-. r cis-. r
    %% repetição contorno 7
    f,8-. r r4 \acciaccatura e'8\( f4 cis\)
    f,8-. r r4 \acciaccatura e'8\( f4 cis\f\)\stopTextSpan r2\fermata
  }
}

segB = {
  \textSpannerUp
  \override TextSpanner #'edge-text = #'("accel " . "")
  \relative c {
    %% compasso 13
    %% contorno 10: expandido (fator 2)
    f2\p\<\trill( f'\trill f'\trill\f f,8-.) r r4
    %% contorno 11: expandido (fator 2) 5 notas apoj e uso de motivo ritmico
    f,16\p\< f8.-. \acciaccatura {ais16[ c]} b16 b8.-. \acciaccatura e8 f16 f8.-. \acciaccatura {ais16[ c]} b16 b8.-. \acciaccatura e8 f8\f[ e32 ees d des] c b bes a aes g ges f~ f4 r
    %% repetição contorno 1:
    f2\pp\<\( \acciaccatura e'8 f8-.\)\mp r cis4
    %% contorno 12: usando motivos rítmicos
    f,,16-.\f f8-. f-. f16-. f8-. f'-. r f16-. f8-. f16-. f'2\trill f,8-. r
    %% contorno 13: desenvolvendo motivos rítmicos
    f,8-. f f16 f8-. \acciaccatura e'8 f16 r f8.-. f8-. f-. \acciaccatura { d'16[ dis e] } f4~\startTrillSpan f8\stopTrillSpan r8 f,-.\p r
    %% lembrete: continuar a desenvolver o ritmo.

    %% repetição contorno 11 com notas longas
    f,4\p\<\( \acciaccatura {ais16[ c]} b4 \acciaccatura e8 f4 \acciaccatura {ais16[ c]} b4 \acciaccatura e8 f8\)\f[ e32 ees d des] c b bes a aes g ges f~ f16 f8.-.
    %% repetição contorno 10
    f,2\p\<\trill( f'4~\startTrillSpan f\stopTrillSpan f'2\trill\f f,8-.) r
  }
}

segC = {
  \textSpannerUp
  \override TextSpanner #'edge-text = #'("accel " . "")
  \relative c {
    %% contorno 14: 3 notas (simples)
    e2\pp( ges4 f)
    %% contorno 15: com apoj
    e''2\f\( \acciaccatura g8 ges4 f\)
    %% contorno 16: longo/interrompido
    e,2\pp\<( ges8-.)\f r f-.\pp r
    %% contorno com muitas notas repetidas
    e,8( f) e( f) ges4( f)
    %% contorno com muitas notas repetidas (variado)
    \times 2/3 {e'8( f) e-.} \times 2/3 {f( e) f-.} ges4( f)
    
    %% contorno 17: interrompido/longo
    e,8-.\f r r4 ges4\pp( f)
    %% contorno 18: interrompido
    \setTextCresc
    e8-.\< r r4 ges8-. r f-. r
    %% contorno 19: interrompido 4 notas (repetido)
    e-. r f-. r ges-. r f-. r
    e-. r f-. r ges-. r f-. r
    e'-.\startTextSpan r f-. r ges-. r f-. r
    e-. r f-. r ges-. r f-. r
    e'-. r f-. r ges-. r f-. r
    e-. r f-. r ges-. r f-. r
    e'2\f\stopTextSpan\trill\fermata r
    %% contorno x: final
    f,,,16\p\<( fis g gis a ais b c cis d dis e f fis g gis a ais b cis d dis e f~\f f4)\trill
    r8 f,,-.
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
        \segA
        \segB
        \segC
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

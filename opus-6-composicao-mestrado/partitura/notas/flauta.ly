%% flauta.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAflauta = {
  R1*5/4*8
}

gestoAABflauta = {
  R1*5/4*6
}

gestoAACflauta = {
  \relative c'' {
    R1*5/4
    %% variação do material de AAB do clarinete
    %% #s(5 3 4 1 2 0)
    e2\p\dolce( cis dis4~
    dis2 a2.
    bes2 g2) g4
    e'2\trill\tris cis4 dis2\trill
    a2( bes4) g2~\startTrillSpan
    g4\stopTrillSpan \acciaccatura {a16[ cis dis]} e4( cis4 dis2~
    dis2.~ dis4) r4
  }
}

gestoAADflauta = {
  \relative c''' {
    %% dobramento do material da trompa
    %% variação da seção AAA - fagote.
    %% inclusão de transposição
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    g1\p\dolce\espressivo e4(
    fis2) fis cis4
    e1) r4
    bes'2.\espressivo fis2(
    a2. e4 g4~
    g1) r4
  }
}

gestoAAEflauta = {
  \relative c'''' {
    %% dobramento do material da trompa
    %% variação da seção AAA - fagote.
    %% inclusão de transposição
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    \setTextCresc
    g1\<\espressivo e4(
    fis2) fis cis4
    e1) r4
    bes'2.\espressivo fis2(
    a2. e4 g4~
    g1) r4
    g1\espressivo e4(
    fis2.~\f fis2)
  }
}

gestoABAflauta = {
  \relative c'''' {
    g1\p r4
    R1*5/4*2
    r2 bes,2.~
    bes2 r4 g'2~
    g1 r4
    r1 g4~
    g1 r4
  }
}

gestoABBflauta = {
  \relative c'''' {
    \setTextCresc
    g2.~\< g4 r
    g2. g2->~
    g4 g2.-> g4~->\f
    g2 g2.->
  }
}

gestoABCflauta = {
  \relative c''' {
    \setTextDecresc
    g2.\> r2
    g2. r2
    r2 g,2.~\mp
    g2. r2
    R1*5/4*4
  }
}

gestoBAAflauta = {
  \relative c' {
    R1
    R1*5/4
    cis8-.->\mp\energico cis-. cis-. cis-.-> cis-. cis-. cis-.-> cis-.
    cis-. cis-.-> cis-. cis-. cis-.-> cis-. cis-. cis-. cis-.-> cis-.
    cis4.-> cis-> cis4~->
    cis8 cis4.-> cis2-> cis4->
    g'8-.-> g-. g-. g-.-> g-. g-. g-.-> g-.
    g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.
    g4.-> g-> g4~->
    g8 g4.-> g2-> g4->
    g8-.-> g-. g-. g-.-> g-. g-. g-.-> g-.
    g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.
    g4.-> g-> g4~->
    g8 g4.-> g2-> g4->
    cis8-.-> cis-. cis-. cis-.-> cis-. cis-. cis-.-> cis-.
    cis-. cis-.-> cis-. cis-. cis-.-> cis-. cis-. cis-. cis-.-> cis-.
  }
}

gestoBABflauta = {
  \relative c''' {
    \repeat unfold 3 {
      g4.-> g-> g4~->
      g8 g4.-> g2-> g4->
      g8-.-> g-. g-. g-.-> g-. g-. g-.-> g-.
      g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.
    }
    g4.-> g-> g4~->
    g8 g4.-> g2-> g4->
    des'8-.-> des-. des-. des-.-> des-. des-. des-.-> des-.
    des-. des-.-> des-. des-. des-.-> des-. des-. des-. des-.-> des-.
  }
}

gestoBACflauta = {
  \relative c''' {
    \repeat unfold 4 {
      des4.-> des-> des4~->
      des8 des4.-> des2-> des4->
      des8-.-> des-. des-. des-.-> des-. des-. des-.-> des-.
      des-. des-.-> des-. des-. des-.-> des-. des-. des-. des-.-> des-.
    }
  }
}

gestoBBAflauta = {
  \relative c''' {
    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill\tris e2)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
    gis,4\p
    b8( ais4) d8( cis4)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 4))
    e8->( gis,)
    b( ais) d2 e4~
    e cis4 g' e,
    bes' g2.\trill
    %% #s(5 3 4 1 2 0)
    d'4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill\tris e2) r4

    %% repetição

    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
  }
}

gestoBBBflauta = {
  \relative c''' {
    %% continuação do sujeito do fugato
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill\tris e2) r4

    %% repetição

    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill\tris e2)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
    gis,4\p
    b8( ais4) d8( cis4)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 4))
    e8->( gis,)
    b( ais) d2 e4~
  }
}

gestoBBCflauta = {
  \relative c''' {
    %% continuação do sujeito do fugato
    e cis4 g' e,
    bes' g2.\trill
    %% #s(5 3 4 1 2 0)
    d'4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill\tris e2) r4

    g,?2~ g4

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g?2~ g4)

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g?4.) r8 

    d'4-^ b-^ 
    cis1\trill\tris\fermata
  }
}

gestoCAAflauta = {
  R1*15
}

gestoCABflauta = {
  \relative c'' {
    R1*8
    r4 r8. c16\p( ees des fis e? g4~
  }
}

gestoCACflauta = {
  \relative c''' {
    g4) e8->\st fis4. cis8->\st e~
    e4 g8->\st e->\st r2
    g4 e8->\st fis4. cis8->\st e~
    e4 e8->\st cis->\st r2
    %% repetição
    g'4 e8->\st fis4. cis8->\st e~
    e4 g8->\st e->\st r2
    \setTextCresc
    g4\< e8->\st fis4. cis8->\st e~
    e4 e8->\st cis->\st r8. c'16( ees des fis e?
    g4) e8->\st fis4. cis8->\st e~
    e4 g8->\st e->\st r8. c16( ees des fis e?
    g4) e8->\st fis4. cis8->\st e~
    e4 e8->\st cis->\st r8. c16( ees des fis e?
    g4) e8->\st fis4 r16 c16( ees des fis e?
    g4) e8->\st fis4 r16 c16( ees des fis e?
    cis2)\ff r
  }
}

gestoCBAflauta = {
  \relative c'' {
    %% #s(5 3 4 1 2 0)
    g16\ppp e fis cis dis c r8 r2
    g'16 e fis8-. r4 r16 cis8.-. dis16 c r8
    r2 g'16 e fis cis dis r8.
    r8. c?16 g'16 e fis cis dis c r8 r4
    r2 g'16 e fis cis r4
    dis16 c?8-. g'16 r4 e16 fis cis dis c r8.
    r2 g'16 e fis8-. cis8-. dis16 c
    r2. g'16 r8.
    e16 fis cis8-. r2.
    r4 dis16 c? g' e fis r8. r4
    r2. g16 e fis8-.
    cis16 dis c8-. r2.
    R1*2
    r4 g'16 e fis cis dis c r8 r4
    R1
  }
}

gestoCBBflauta = {
  \relative c''' {
    %% #s(5 3 4 1 2 0)
    %% continua seção anterior
    g16 e fis cis dis c r8 r2
    r4. g'16 e fis cis dis c r4
    R1
    g'16 e fis cis dis c r8 r2
    r2 g'16 e fis cis dis c r8
    r2 g'16 e fis cis dis c r8
    \setTextCresc
    r2 g'16\< e fis cis dis c r8
    r2 g'16 e fis cis dis c r8
    r2 g''16 e fis cis dis c r8
    r2 g'16 e fis cis dis c r8
  }
}

gestoCBCflauta = {
  \relative c''' {
    g2\ff g'16 e fis cis dis c r8
    %% toca também material do fagote transposto oitava acima
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c r8
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c r8
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c r8
    e,16 cis g' e, bes' g r8 g'16 e fis cis dis c r8
    e16 cis g' e, bes' g r8 g16\ppp e fis cis dis c r8
    R1*7
    r2 e'16\mf( g fis bes a c a c
    bes e cis dis) r2.
    e,16( g fis bes a c a c bes e cis dis fis e bes' g
  }
}

gestoCBDflauta = {
  \relative c'''' {
    a4)\f r2.
    R1*9
  }
}

gestoCBEflauta = {
  \relative c'' {
    r4 r8. c16\p( ees des fis e g4~
    g4) e8->\st fis4. cis8->\st e~
    e4 g8->\st e->\st r2
    g4 e8->\st fis4. cis8->\st e~
    e4 e8->\st cis->\st r2
    R1*3
    r4 r8. c'16\p( ees des fis e g4~
    g4) e8->\st fis4. cis8->\st e~
    e4 g8->\st e->\st r2
    g4 e8->\st fis4. cis8->\st e~
    e4 e8->\st cis->\st r2
    g'4( e4 fis cis8 dis
    c?1)
    g'4( e4 fis cis8 dis
    c?1)
    g'4( e4 fis cis8 dis
    c?1~
    c)
  }
}

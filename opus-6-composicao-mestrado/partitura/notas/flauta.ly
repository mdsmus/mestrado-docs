%% flauta.ly
\version "2.11.64"
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
    e'2\tris cis4 dis2\trill
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
    g1\p\dolce\espressivo( e4
    fis2) fis( cis4
    e1) r4
    bes'2.\espressivo( fis2
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
    \crescTextCresc
    g1\<\espressivo( e4
    fis2) fis( cis4
    e1) r4
    bes'2.\espressivo( fis2
    a2. e4 g4~
    g1) r4
    g1\espressivo( e4
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
    \crescTextCresc
    g1~\< r4
    g2. g2->~
    g4 g2.-> g4~->\f
    g2 g2.->
  }
}

gestoABCflauta = {
  \relative c''' {
    \dimTextDecresc
    g2.\> r2
    g2. r2
    r2 g,2.~\mp
    g2. r2
    R1*5/4*4
  }
}

gestoBAAflauta = {
  \relative c' {
    R1*6/8*24
  }
}

gestoBABflauta = {
  \relative c'' {
    R1*6/8*12
    r4. r8 \times 2/3 { r8 c\mf( ees }
    \times 2/3 { des fis e? } g8~ g4.~
    g2.~
    g8 e4~ e8 fis4~
    fis2.~
    fis2.)
    a,2.~\p
    a2.~
    a2.
    a2.~
    a2.~
    a2.
  }
}

gestoBACflauta = {
  \relative c'' {
    \repeat unfold 2 {
      a2.~
      a2.~
      a2.
    }
    a2.
    r16 c\mf( ees des fis e g4.~
    g2.)
    e4.( fis4.~
    fis4. cis4.
    dis4.~ dis8 c4~
    c4.~ c8) r4
    r4 a8~\p a4.~
    a2.~
    a2.
    a2.~
    a2.
    r16 a'16\mf( c bes dis cis e4.
    cis4. dis4.
    bes4.~ bes8 c4
    a2.~\p
    a2.)
    \crescHairpin
    r4. r16 a16\<( c bes dis cis)
  }
}

gestoBBAflauta = {
  \relative c''' {
    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d?4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\tris e2)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
    gis,4
    b8( ais4) d8( cis4)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 4))
    e8->( gis,)
    b( ais) d2 e4~
    e cis4 g' e,
    bes' g2.\trill
    %% #s(5 3 4 1 2 0)
    d'4-^ b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\tris e2) r4

    %% repetição

    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^ b-^ cis-^ gis8( ais
  }
}

gestoBBBflauta = {
  \relative c''' {
    %% continuação do sujeito do fugato
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\tris e2) r4

    %% repetição

    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^ b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\tris e2)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
    gis,4
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
    d'4-^ b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\tris e2) r4

    g,2.

    gis16( ais b cis)

    d4-^ b-^ cis-^ gis8( ais
    g?2.)

    gis16( ais b cis)

    d4-^ b-^ cis-^ gis8( ais
    g?4.) r8 

    d'4-^ b-^ 
    cis1\tris\fermata
  }
}

gestoCAAflauta = {
  R1*15
}

gestoCABflauta = {
  \relative c'' {
    R1*8
    r4 r8. c16\p( ees des fis e g4~
  }
}

gestoCACflauta = {
  \relative c''' {
    g4) e8\st fis8~ fis4 cis8\st e~
    e4 g8\st e\st r2
    g4 e8\st fis8~ fis4 cis8\st e~
    e4 e8\st cis\st r2
    %% repetição
    g'4 e8\st fis8~ fis4 cis8\st e~
    e4 g8\st e\st r2
    \crescTextCresc
    g4\< e8\st fis8~ fis4 cis8\st e~
    e4 e8\st cis\st r8. c'16( ees des fis e
    g4) e8\st fis8~ fis4 cis8\st e~
    e4 g8\st e\st r8. c16( ees des fis e
    g4) e8\st fis8~ fis4 cis8\st e~
    e4 e8\st cis\st r8. c16( ees des fis e
    g4) e8\st fis fis[ r16 c16]( ees des fis e
    g4) e8\st fis fis[ r16 c16]( ees des fis e
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
    \crescTextCresc
    r2 g'16\< e fis cis dis c8.~
    c4. r8 g'16 e fis cis dis c8.~
    c4. r8 g'16 e fis cis dis c8.~
    c4. r8 g'16 e fis cis dis c r8
  }
}

gestoCBCflauta = {
  \relative c''' {
    g2\ff g'16 e fis cis dis c r8
    %% toca também material do fagote transposto oitava acima
    e,16 cis g' e, bes' g r8 g''16 e fis cis dis c r8
    \dimTextDecresc
    e,16 cis g' e, bes' g r8 g''16\> e fis cis dis c r8
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
    g4) e8\st fis8~ fis4 cis8\st e~
    e4 g8\st e\st r2
    g4 e8\st fis8~ fis4 cis8\st e~
    e4 e8\st cis\st r2
    R1*3
    r4 r8. c'16\f( ees des fis e g4~
    g4) e8\st fis8~ fis4 cis8\st e~
    e4 g8\st e\st r2
    g4 e8\st fis8~ fis4 cis8\st e~
    e4 e8\st cis\st r4 g'~
    g4 e8\st fis8~ fis4 cis8\st e~
    e4 g8\st e\st r2
    g4 e8\st fis8~ fis4 cis8\st e~
    e4 e8\st cis\st r2
    g'4( e4 fis cis8 dis
    c?1)
    g'4 e8\st fis8~ fis4 cis8\st e~
    \crescTextCresc
    e4 g8\st e\st r8. c16\<( ees des fis e
    g4( e4 fis cis8 dis
    c?1)
    g'4( e4 fis cis8 dis
    c?1)
    g'4( e4 fis) ees16( des fis e
    g4\f( e4 fis) cis8( dis)
    \crescHairpin
    r4 c?2.~\p\<
    c1\f
  }
}

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
    e'2\trill cis4 dis2\trill
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
    g2.~\p\startTrillSpan g2~
    g2\stopTrillSpan r2 g4~\startTrillSpan
    g1\stopTrillSpan r4
    r2 g2.~\startTrillSpan
    g4\stopTrillSpan r2 g~\startTrillSpan
    g2.\stopTrillSpan r2
    r2 g2.~\startTrillSpan
    g2.\stopTrillSpan r2
  }
}

gestoABBflauta = {
  \relative c'''' {
    g2.~\startTrillSpan g2\stopTrillSpan
    r4 g1~\startTrillSpan
    g2\stopTrillSpan g2.->\trill
    g1->\trill r4
  }
}

gestoABCflauta = {
  \relative c''' {
    g2.~\startTrillSpan g2\stopTrillSpan
    r4 g1~\startTrillSpan
    g2\stopTrillSpan r2.
    r2. g2~\startTrillSpan
    g2.\stopTrillSpan r2
    R1*5/4*3
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
    g8-.-> g-. g-. g-.-> g-. g-. g-.-> g-.
    g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.

  }
}

gestoBABflauta = {
  \relative c''' {
    \repeat unfold 4 {
      g4.-> g-> g4~->
      g8 g4.-> g2-> g4->
      g8-.-> g-. g-. g-.-> g-. g-. g-.-> g-.
      g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.
    }
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
    cis e8~\trill e2)
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
    cis e8~\trill e2) r4

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
    cis e8~\trill e2) r4

    %% repetição

    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill e2)
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
    cis e8~\trill e2) r4

    g,?2~ g4

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g?2~ g4)

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g?4.) r8 

    d'4-^ b-^ 
    cis1\trill
  }
}

gestoCAAflauta = {
  R1*4
}

gestoCABflauta = {
  R1*4
}

gestoCACflauta = {
  R1*4
}

gestoCADflauta = {
  R1*4
}

gestoCAEflauta = {
  R1*4
}

gestoCBAflauta = {
  R1*4
}

gestoCBBflauta = {
  R1*4
}

gestoCBCflauta = {
  R1*4
}

gestoCBDflauta = {
  R1*4
}

gestoCBEflauta = {
  R1*4
}

gestoCBFflauta = {
  R1*4
}

gestoCBGflauta = {
  R1*4
}

gestoCBHflauta = {
  R1*4
}

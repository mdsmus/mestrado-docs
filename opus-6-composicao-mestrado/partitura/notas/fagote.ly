%% fagote.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAfagote = {
  \clef bass
  \relative c' {
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    g1\p\dolce\piacere\espressivo e4(
    fis2.~ fis2)
    fis1\espressivo cis4(
    e1) r4

    %% repetição variada
    g2. e4 e4
    fis2.~ fis2
    fis2.\espressivo cis4 cis4
    e1 r4
  }
}

gestoAABfagote = {
  \clef bass
  \relative c' {
    %% repetição com variação do material utilizado em AAA
    g1\p\espressivo e4(
    fis2.~ fis2)
    fis2.\espressivo cis2(
    e1) r4
    g1\p\espressivo cis,4(
    e2.~ e2~
  }
}
gestoAACfagote = {
  \clef bass
  \relative c {
    e1) r4
    R1*5/4*7
  }
}

gestoAADfagote = {
  \clef bass
  \relative c {
    g2\p( bes4 a2~
    a4) dis2( cis4 e4~
    e2) g2( bes4
    a2) \clef tenor dis2( cis4~
    cis e2) g2(
    bes4 a1)
  }
}

gestoAAEfagote = {
  \clef bass
  R1*5/4*8
}

gestoABAfagote = {
  \clef bass
  \relative c' {
    R1*5/4*2
    r2. e2~\p
    e1 r4
    R1*5/4
    r1 e4~
    e2. r2
    r2 e2.
  }
}

gestoABBfagote = {
  \clef bass
  \relative c' {
    r2. e2~
    e1 e4~->
    e2.~ e8 e~-> e4~
    e4. e8~-> e2.~
  }
}

gestoABCfagote = {
  \clef bass
  \relative c' {
    e4 r2 e,~
    e2 r2.
    r2 e2.
    R1*5/4*2
    r4 e1
    R1*5/4
    bes,2. r2\fermata
  }
}

gestoBAAfagote = {
  \clef bass
  \relative c {
    a8-.->\mp\energico a-. a-. a-.-> a-. a-. a-.-> a-.
    a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a4.-> a-> a4~->
    a8 a4.-> a2-> a4->
    a8-.-> a-. a-. a-.-> a-. a-. a-.-> a-.
    a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a4.-> a-> a4~->
    a8 a4.-> a2-> a4->
    a8-.-> a-. a-. a-.-> a-. a-. a-.-> a-.
    a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a4.-> a-> a4~->
    a8 a4.-> a2-> a4->
    a8-.-> a-. a-. a-.-> a-. a-. a-.-> a-.
    a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a4.-> a-> a4~->
    a8 a4.-> a2-> a4->
  }
}

gestoBABfagote = {
  \clef tenor
  \relative c' {
    \repeat unfold 3 {
      ees8-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.-> ees-.
      ees-. ees-.-> ees-. ees-. ees-.-> ees-. ees-. ees-. ees-.-> ees-.
      ees4.-> ees-> ees4~->
      ees8 ees4.-> ees2-> ees4->
    }
    g1~\mf
    g8 e4. fis2.
    cis4. dis c4~
    c1 r4
  }
}

gestoBACfagote = {
  \clef tenor
  \relative c' {
    \repeat unfold 4 {
      des8-.-> des-. des-. des-.-> des-. des-. des-.-> des-.
      des-. des-.-> des-. des-. des-.-> des-. des-. des-. des-.-> des-.
      des4.-> des-> des4~->
      des8 des4.-> des2-> des4->
    }
  }
}

gestoBBAfagote = {
  \clef tenor
  \relative c' {
    des8-.-> des-. des-. des-.-> des-. des-. des-.-> des-.
    des-. des-.-> des-. des-. des-.-> des-. des-. des-.
    des-.-> des-. des4.-> des->
    des4.-> des4.-> des4~->
    des4-> des4->
    %% repetição
    \setTextDecresc
    des8-.->\> des-. des-. des-.-> des-. des-. des-.-> des-.
    des-. des-.-> des-. des-. des-.-> des-. des-. des-.
    des-.-> des-. des4~->
    des8 des4.->
    des4.-> des8~->
    des4-> des2-> des4->
    %% repetição parcial
    des8-.-> des-. des-. des-.-> des-. des-. des-.-> des-.
    des-. des-.-> des-. des-. des-.-> des-. des-. des-.\pp
  }
}

gestoBBBfagote = {
  \relative c' {
    R1*1
    \clef bass
    %% sujeito do fugato transposto a quinta
    \transpose d a, {
      \relative {
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
      }
    }
  }
}

gestoBBCfagote = {
  \clef bass
  \relative c' {
    %% continuação do fugato transposto a quinta
    \transpose d a, {
      \relative {
        bes4 g2.\trill
        %% #s(5 3 4 1 2 0)
        d'4-^\f b-^ cis-^ gis8( ais
        g?4.)
        %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
        bes8->( e,8) g'4( cis,8~
        cis e8~\trill e2) r4

      }
    }
    d4-^ b-^ cis-^ gis8( ais
    g?2~ g4)

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g?2~ g4)

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g?4.) r8 

    d'4-^ b-^ 
    g1\trill\fermata
  }
}

gestoCAAfagote = {
  \clef bass
  \relative c {
    %% idéia de INT_1(5 3 4 1 2 0)
    a4\p g8->\st a4. g8->\st a~
    a4 g8->\st a4. cis8->\st dis,->\st
    a'4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. r4
    \repeat unfold 2 {
      a4 g8->\st a4. g8->\st a~
      a4 g8->\st a4. cis8->\st dis,->\st
      a'4 g8->\st a4. g8->\st a~
      a4 g8->\st a4. r4
    }
      a4 g8->\st a4. g8->\st a~
      a4 g8->\st a4. cis8->\st dis,->\st
      a'4 g8->\st a4. g8->\st a~
  }
}

gestoCABfagote = {
  \clef bass
  \relative c {
    a4 g8->\st a4. r4
    \repeat unfold 2 {
      a4 g8->\st a4. g8->\st a~
      a4 g8->\st a4. cis8->\st dis,->\st
      a'4 g8->\st a4. g8->\st a~
      a4 g8->\st a4. r4
    }
  }
}

gestoCACfagote = {
  \clef bass
  \relative c {
    %% repetição de CAA
    a4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. cis8->\st dis,->\st
    a'4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. r4
    a4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. cis8->\st dis,->\st
    \setTextCresc
    a'4\< g8->\st a4. g8->\st a~
    a4 g8->\st a4. r4
    a4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. cis8->\st dis,->\st
    a'4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. r4
    a4 g8->\st a4. g8->\st a~
    a4 g8->\st a4. cis8->\st dis,->\st
    a'2\ff r
  }
}

gestoCBAfagote = {
  \clef bass
  \relative c' {
    R1*8
    %% rot3 retr. #s(5 3 4 1 2 0)
    r2. e16\ppp cis g' e,
    bes' g r8 r2.
    r4 e'16 cis g' r e, r8. r4
    R1*2
    e'16 cis g' r r2.
    r2. e,16 bes' g r
    e'16 cis g' e, bes' g r8 r2
  }
}

gestoCBBfagote = {
  \clef bass
  R1*10
}

gestoCBCfagote = {
  \clef bass
  R1*16
}

gestoCBDfagote = {
  \clef bass
  R1*10
}

gestoCBEfagote = {
  \clef bass
  R1*16
}

%% clarinetebb.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAclarinetebb = {
  R1*5/4*8
}

gestoAABclarinetebb = {
  \relative c' {
    %% #s(5 3 4 1 2 0)
    e2\p( cis2.
    dis2) r4 a2(
    bes2 g2) r4

    %% repetição
    e'2( cis2.
    dis2) a2.(
    bes2 g2) r4
  }
}

gestoAACclarinetebb = {
  \relative c'' {
    %% repetição do material de AAA do fagote
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    g1\p\dolce\espressivo e4(
    fis2.~ fis2)
    fis1\espressivo cis4(
    e2.~ e4) r

    %% repetição variada
    g2. e4 e4
    fis2.~ fis2
    fis2.\espressivo cis4 cis4
    e2.~ e4 r
  }
}

gestoAADclarinetebb = {
  \relative c'' {
    g2\p( e fis4~
    fis cis2 dis2
    bes2.~ bes2)

    %% repetição
    g'2( e fis4~
    fis cis2 dis2
    c?2.~ c2)
  }
}

gestoAAEclarinetebb = {
  \relative c'' {
    \setTextCresc
    g2\<( e fis4~
    fis cis2 dis2
    bes2.~ bes2)

    %% repetição
    g'4( e fis cis dis
    bes2) g'4( e fis
    cis dis bes2) g'8( e
    fis cis dis bes g' e fis cis dis bes
    g'2.~\f g2)
  }
}

gestoABAclarinetebb = {
  \relative c''' {
    R1*5/4
    cis2.~\p cis2
    r2. g2~
    g1 r4
    R1*5/4
    r2 cis2.~
    cis2. r2
    r4 e,1
  }
}

gestoABBclarinetebb = {
  \relative c''' {
    \setTextCresc
    r4 bes4\< e,,2.
    r8 bes'~ bes2. a'4
    c,,2 a''2 a8->\f bes,~
    bes4 c,2 a''4 c,,~
  }
}

gestoABCclarinetebb = {
  \relative c' {
    \setTextDecresc
    c4\> c'2 a,~
    a4 r cis'2.
    r1 bes,4~
    bes1 r4
    fis1 r4
    r1 e4~\pp
    e2. r2
    R1*5/4
  }
}

gestoBAAclarinetebb = {
  \relative c'' {
    R1*6/8*11
    g2.~\ppp\<(
    g2.~
    g4.\mp\> c,4.~
    c2.~
    c2.~
    c4.\pp) r
    R1*6/8
    g4.\st dis'4.\st
    g,4.\st cis4.\st
    g4.\st r8 dis'4\st

    g,4.\st dis'4.\st
    g,4.\st cis4.\st
    g4.\st r8 dis'4\st
  }
}

gestoBABclarinetebb = {
  \relative c' {
    r8. c16\mp( cis e g4.~
    g2.~
    g4.~ g8 e4~
    e4. cis
    c?2.)
    r4. r8 g8-.\pp r

    %% alterna com fagote e trompa
      dis'8-.-> a-. a-. cis-.-> a-. a-.
      g'-.-> a,-. a-. dis-.-> a-. a-.
      dis-.->[ a-. a-. a-.] cis-.-> r

      dis4.\st g,4.\st
      cis4.\st g4.\st
      dis'4.\st r8 g,4\st

    \repeat unfold 4 {
      dis'4.\st g,4.\st
      cis4.\st g4.\st
      dis'4.\st r8 g,4\st
    }
  }
}

gestoBACclarinetebb = {
  \relative c' {
    \repeat unfold 2 {
      dis'4.\st g,4.\st
      cis4.\st g4.\st
      dis'4.\st r8 g,4\st
    }
    r16 c\mf( dis cis fis e g4.~
    g2.
    e4.~ e8 fis4~
    fis2.
    cis4. dis4.
    c2.)
    dis8-.->\p r4 g,4.\st
    cis4.\st g4.\st
    dis'4.\st r8 g,4\st
    dis'4.\st g,4.\st
    cis4.\st g4.\st
    dis'4.\st r8 g,4\st
    dis'4.\st g,4.\st
    cis4.\st g4.\st
    dis'4.\st r16 c16\<( dis cis fis e
    g4.~\f e
    fis4. cis4.
    dis4.~ dis8 c4)
  }
}

gestoBBAclarinetebb = {
  \relative c' {
    dis'8-.->\p[ r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r r4 g,8-.-> r
    dis'8-.->[ r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r r4 g,8-.-> r
    \setTextDecresc
    dis8-.->[\> r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r r4 g,8-.-> r
    dis'8-.->[ r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r r4 g,8-.->\pp r
    R1*2
  }
}

gestoBBBclarinetebb = {
  \relative c'' {
    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
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
  }
}

gestoBBCclarinetebb = {
  \relative c'' {
    %% continuação do fugato
    d4-^ b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\tris e2) r4

    d,4-^ b-^ cis-^ gis8( ais
    g?2~ g4.) r8 

    d'4-^ b-^ cis-^ gis8( ais
    g2~ g4.) r8 
    
    d'4-^ b-^ cis-^ gis8( ais
    g4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g4.) r8

    cis'1\tris\fermata
  }
}

gestoCAAclarinetebb = {
  \relative c' {
    R1*3
    %% junto à trompa
    r2. g4~\p
    g e8\st fis4. fis8 g
    e2 r4 g4~
    g e8\st fis4. fis8 g~
    g2 r4 g4~
    g e8\st fis4. fis8 g
    e2 r4 g4~
    g e8\st fis4. e8 e~
    e2 r2
    R1*3
  }
}

gestoCABclarinetebb = {
  \relative c'' {
    R1*8
    r4 r8. g16\p( bes a des c ees4~
  }
}

gestoCACclarinetebb = {
  \relative c'' {
    ees4) c8\st bes4. a8\st c~
    c4 ees8\st c\st r2
    ees4 c8\st bes4. a8\st c~
    c4 cis8\st a\st r2
    %% repetição
    ees'4 c8\st bes4. a8\st c~
    c4 ees8\st c\st r2
    \setTextCresc
    ees4\< c8\st bes4. a8\st c~
    c4 cis8\st a\st r8. g16( bes a des c
    ees4) c8\st bes4. a8\st c~
    c4 ees8\st c\st r8. g16( bes a des c
    ees4) c8\st bes4. a8\st c~
    c4 cis8\st a\st r8. g16( bes a des c
    ees4) c8\st bes4 r16 g16( bes a des c
    ees4) c8\st bes4 r16 g16( bes a des c
    ees2)\ff r
  }
}

gestoCBAclarinetebb = {
  \relative c' {
    R1*6
    %% rot2 #s(5 3 4 1 2 0)
    e16\ppp g, bes e, g' cis, r8 r2
    e16 g, bes8-. r8 e,16 g' cis,8-. r8 r8 e16 g,
    r4 bes16 e, g' cis, r2
    r2. e16 g, bes e,
    g' cis, r8 r2.
    R1
    e16 g, bes e,16 r4 g'16 cis, e8-. g,16 r8.
    r2. bes16 e, g' cis,
    R1
    r2 e16 g, bes e, g' cis, r8
  }
}

gestoCBBclarinetebb = {
  \relative c' {
    R1
    r8 e16 g, bes e, g' cis, r2
    r4 e16 g, bes e, g' cis, r8 r4
    r4 e16 g, bes e, g' cis, r8 r4
    r4 e16 g, bes e, g' cis, r8 r4
    r4 e16 g, bes e, g' cis, r8 r4
    \setTextCresc
    r4 e16 g, bes e, g' cis,8.~\< cis4~
    cis8 r e16 g, bes e, g' cis,8.~ cis4~
    cis8 r e16 g, bes e, g' cis,8.~ cis4~
    cis8 r e16 g, bes e, g' cis, r8 e4~
  }
}

gestoCBCclarinetebb = {
  \relative c' {
    e4\ff e16 g, bes e, g' cis,8.~\fp cis4~
    cis4 e16\f g, bes e, g' cis,8.~\p cis4~
    cis4 e16\mf g, bes e, g' cis,8.~\p\> cis4
    e,16\ppp( g fis bes a c a c bes e cis dis) r4
    e,16( g fis bes a c a c bes e cis dis fis e bes' g
    a4) r4 e,16( g fis bes a c a c
    bes e cis dis) r2 e,16( g fis bes
    a c a c bes e cis dis fis e bes' g a4)
    r2 e,16( g fis bes a c a c
    bes e cis dis) r2.
    \setTextCresc
    r4 e,16\<( g fis bes a c a c bes e cis dis
    fis e bes' g a4) r4 e16( g fis bes
    a c a c bes e cis dis) r2
    e,16( g fis bes a c a c bes e cis dis fis e bes' g
    a4) r4 e16( g fis bes a c a c
    bes e cis dis)\f r2.
  }
}

gestoCBDclarinetebb = {
  \relative c' {
    R1*3
    r2. ees8-.->\p r
    ees8-.->[ r r ees8-.->] r4 ees8-.->[ r
    r ees-.->] r4 r2
    ees8-.-> r ees-.->[ r r ees-.->] r4
    r4 r8 ees-.-> r2
    r4 ees8-.-> r ees-.-> r r4
    r4 ees8-.-> r r ees-.-> r4
  }
}

gestoCBEclarinetebb = {
  \relative c' {
    R1*4
    r8 ees-.->] r4 ees8-.-> r r4
    ees8-.-> r ees-.->[ r r ees-.->] r4
    ees8-.->[ r r ees-.->] r4 ees8-.-> r
    r4 ees8-.-> r ees-.->[ r r ees-.->]
    r4 ees8-.->[ r r ees-.->] r4
    ees8-.-> r8 r4 ees8-.-> r ees8-.->[ r
    r ees8-.->] r4 ees8-.->[ r r ees8-.->]
    r4 ees8-.-> r r4 ees8-.-> r
    %% repete padrão
    ees8-.->[ r r ees8-.->] r4 ees8-.->[ r
    r ees-.->] r4 ees8-.-> r r4
    ees8-.->[ r ees-.->] r r ees-.-> r4
    ees8-.->[ r r ees-.->] r4 ees8-.-> r
    r4 ees8-.-> r ees-.->[ r r ees-.->]
    r4 ees8-.->[ r r ees-.->] r4
    ees8-.->[ r r ees8-.->] r4 ees8-.->[ r
    r ees-.->] r4 ees8-.-> r r4
    ees8-.->[ r ees-.->] r r ees-.-> r4
    \setTextCresc
    ees8-.->\<[ r r ees-.->] r4 ees8-.-> r
    r4 ees8-.-> r ees-.->[ r r ees-.->]
    r4 ees8-.->[ r r ees-.->] r4
    ees8-.->[ r r ees8-.->] r4 ees8-.->[ r
    r ees-.->] r4 ees8-.-> r r4
    g'4\f( e4 fis) cis8( dis)
    r4 c?2.~\p\<
    c1\f
  }
}

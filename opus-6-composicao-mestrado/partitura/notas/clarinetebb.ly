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
    fis cis dis bes g' e fis cis dis bes)
    g'2.~\f g2)
  }
}

gestoABAclarinetebb = {
  \relative c''' {
    r1 g4~\p
    g2. r2
    r4 g1
    bes,2.~ bes2
    R1*5/4
    g'2.~ g2
    bes,2.~ bes2
    g'2. bes,2
  }
}

gestoABBclarinetebb = {
  \relative c''' {
    r4 g2. bes,4~
    bes2 g'2.
    bes,2~ bes8 g'~ g4 bes,~
    bes8 g'~ g4 bes,2.~
  }
}

gestoABCclarinetebb = {
  \relative c'' {
    bes4 g2. bes,4~
    bes2. g'2~
    g2. r4 bes4~
    bes,2 r2.
    r2 g'2.
    R1*5/4
    bes,1 r4
    %% FIXME: inserir fermata
    R1*5/4
  }
}

gestoBAAclarinetebb = {
  \relative c' {
    g8-.->\mp\energico g-. g-. g-.-> g-. g-. g-.-> g-.
    g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.
    g4.-> g-> g4~->
    g8 g4.-> g2-> g4->
    cis8-.-> cis-. cis-. cis-.-> cis-. cis-. cis-.-> cis-.
    cis-. cis-.-> cis-. cis-. cis-.-> cis-. cis-. cis-. cis-.-> cis-.
    cis4.-> cis-> cis4~->
    cis8 cis4.-> cis2-> cis4->
    cis8-.-> cis-. cis-. cis-.-> cis-. cis-. cis-.-> cis-.
    cis-. cis-.-> cis-. cis-. cis-.-> cis-. cis-. cis-. cis-.-> cis-.
    cis4.-> cis-> cis4~->
    cis8 cis4.-> cis2-> cis4->
    cis8-.-> cis-. cis-. cis-.-> cis-. cis-. cis-.-> cis-.
    cis-. cis-.-> cis-. cis-. cis-.-> cis-. cis-. cis-. cis-.-> cis-.
    dis4.-> dis-> dis4~->
    dis8 dis4.-> dis2-> dis4->
  }
}

gestoBABclarinetebb = {
  \relative c'' {
    \repeat unfold 4 {
      cis8-.-> cis-. cis-. cis-.-> cis-. cis-. cis-.-> cis-.
      cis-. cis-.-> cis-. cis-. cis-.-> cis-. cis-. cis-. cis-.-> cis-.
      cis4.-> cis-> cis4~->
      cis8 cis4.-> cis2-> cis4->
    }
  }
}

gestoBACclarinetebb = {
  \relative c'' {
    \repeat unfold 2 {
      ees8-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.-> ees-.
      ees-. ees-.-> ees-. ees-. ees-.-> ees-. ees-. ees-. ees-.-> ees-.
      ees4.-> ees-> ees4~->
      ees8 ees4.-> ees2-> ees4->
    }
    e1~
    e8 cis4. dis2.
    bes4. c a4~
    a1 r4
    ees8-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.-> ees-.
    ees-. ees-.-> ees-. ees-. ees-.-> ees-. ees-. ees-. ees-.-> ees-.
    ees4.-> ees-> ees4~->
    ees8 ees4.-> ees2-> ees4->
  }
}

gestoBBAclarinetebb = {
  \relative c' {
    ees8-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.-> ees-.
    ees-. ees-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.
    ees-.-> ees-. ees4.-> ees->
    ees4.-> ees4.-> ees4~->
    ees4-> ees4->
    %% repetição
    \setTextDecresc
    ees8-.->\> ees-. ees-. ees-.-> ees-. ees-. ees-.-> ees-.
    ees-. ees-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.
    ees-.-> ees-. ees4~->
    ees8 ees4.->
    ees4.-> ees8~->
    ees4-> ees2-> ees4->\pp
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
  }
}

gestoBBCclarinetebb = {
  \relative c'' {
    %% continuação do fugato
    d4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill e2) r4

    d,4-^\f b-^ cis-^ gis8( ais
    g?2~ g4.) r8 

    d'4-^ b-^ cis-^ gis8( ais
    g?2~ g4.) r8 
    
    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8

    cis'1\trill\fermata
  }
}

gestoCAAclarinetebb = {
  \relative c' {
    R1*3
    %% junto à trompa
    r2. g4~\p
    g e8->\st fis4. fis8 g
    e2 r4 g4~
    g e8->\st fis4. fis8 g~
    g2 r4 g4~
    g e8->\st fis4. fis8 g
    e2 r4 g4~
    g e8->\st fis4. e8 e~
    e2 r2
    R1*3
  }
}

gestoCABclarinetebb = {
  \relative c'' {
    R1*8
    r4 r8. g16\p( bes a des c? ees4~
  }
}

gestoCACclarinetebb = {
  \relative c'' {
    ees4) c8->\st bes4. a8->\st c~
    c4 ees8->\st c->\st r2
    ees4 c8->\st bes4. a8->\st c~
    c4 cis8->\st a->\st r2
    %% repetição
    ees'4 c8->\st bes4. a8->\st c~
    c4 ees8->\st c->\st r2
    \setTextCresc
    ees4\< c8->\st bes4. a8->\st c~
    c4 cis8->\st a->\st r8. g16( bes a des c?
    ees4) c8->\st bes4. a8->\st c~
    c4 ees8->\st c->\st r8. g16( bes a des c?
    ees4) c8->\st bes4. a8->\st c~
    c4 cis8->\st a->\st r8. g16( bes a des c?
    ees4) c8->\st bes4 r16 g16( bes a des c?
    ees4) c8->\st bes4 r16 g16( bes a des c?
    ees2)\ff r
  }
}

gestoCADclarinetebb = {
  R1*4
}

gestoCAEclarinetebb = {
  R1*4
}

gestoCBAclarinetebb = {
  R1*4
}

gestoCBBclarinetebb = {
  R1*4
}

gestoCBCclarinetebb = {
  R1*4
}

gestoCBDclarinetebb = {
  R1*4
}

gestoCBEclarinetebb = {
  R1*4
}

gestoCBFclarinetebb = {
  R1*4
}

gestoCBGclarinetebb = {
  R1*4
}

gestoCBHclarinetebb = {
  R1*4
}

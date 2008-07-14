%% trompa.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAtrompa = {
  R1*5/4*8
}

gestoAABtrompa = {
  R1*5/4*6
}

gestoAACtrompa = {
  R1*5/4*8
}

gestoAADtrompa = {
  \relative c'' {
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

gestoAAEtrompa = {
  \relative c'' {
    %% variação da seção AAA - fagote.
    %% inclusão de transposição
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    \setTextCresc
    g1\<\dolce\espressivo e4(
    fis2) fis cis4
    e1) r4
    bes'2.\espressivo fis2(
    a2. e4 g4~
    g1) r4
    g1\espressivo e4(
    fis2.~\f fis2)
  }
}

gestoABAtrompa = {
  \relative c' {
    %% lembrete: dimnuir duração das notas
    R1*5/4*3
    r4 bes1~\p
    bes1 r4
    R1*5/4
    r4 bes1
    r1 bes4~
  }
}

gestoABBtrompa = {
  \relative c' {
    bes2.~ bes2
    bes2.~-> bes2~
    bes4 bes2.~-> bes8 bes~->
    bes2~ bes8 bes~-> bes2~
  }
}

gestoABCtrompa = {
  \relative c' {
    bes2 r2.
    bes2. r2
    R1*5/4
    r4 bes1
    R1*5/4*3
    bes2. r2\fermata
  }
}

gestoBAAtrompa = {
  \relative c' {
    \repeat unfold 5 {
      R1
      R1*5/4
    }
    g1~\mf
    g8 e4. fis2.
    cis4. dis c4~
    c1 r4
    R1
    R1*5/4
  }
}

gestoBABtrompa = {
  \relative c' {
    bes1~
    bes8 g4. a2.
    e4. fis dis4~
    dis1 r4
    R1
    R1*5/4
    e'1~
    e8 cis4. dis2.
    bes4. c a4~
    a1 r4
    R1
    R1*5/4
    ees'8-.-> ees-. ees-. ees-.-> ees-. ees-. ees-.-> ees-.
    ees-. ees-.-> ees-. ees-. ees-.-> ees-. ees-. ees-. ees-.-> ees-.
    ees4.-> ees-> ees4~->
    ees8 ees4.-> ees2-> ees4->
    g,8-.-> g-. g-. g-.-> g-. g-. g-.-> g-.
    g-. g-.-> g-. g-. g-.-> g-. g-. g-. g-.-> g-.
    g4.-> g-> g4~->
    g8 g4.-> g2-> g4->
  }
}

gestoBACtrompa = {
  \relative c'' {
    R1
    R1*5/4
    bes1~
    bes8 g4. a2.
    e4. fis dis4~
    dis1 r4
    R1
    R1*5/4
    a'8-.-> a-. a-. a-.-> a-. a-. a-.-> a-.
    a-. a-.-> a-. a-. a-.-> a-. a-. a-. a-.-> a-.
    a4.-> a-> a4~->
    a8 a4.-> a2-> a4->
  }
}

gestoBBAtrompa = {
  R1*11
}

gestoBBBtrompa = {
  R1*7
}

gestoBBCtrompa = {
  \relative c' {
    d1\f
    b2 cis~
    cis gis4 ais
    g1~
    g2. r4

    d'1
    b2 cis
    d1
    b2 cis

    d2 b
    cis1\fermata
  }
}

gestoCAAtrompa = {
  \relative c {
    R1*3
    %% bifonia
    %% junto com clarinete. adaptação por causa da tessitura do cl.
    r2. ees4~\p
    ees c8->\st bes4. cis8 dis
    c?2 r4 ees4~
    ees c8->\st bes4. cis8 dis~
    dis2 r4 ees4~
    ees c8->\st bes4. cis8 dis
    c?2 r4 ees4~
    ees c8->\st bes4. cis8 cis~
    cis2 r4 ees'4~
    %% junto com oboé
    ees c8->\st bes4. a8 dis
    c?2 r4 ees4~
    ees c8->\st bes4. a8 a~
  }
}

gestoCABtrompa = {
  R1*9
}

gestoCACtrompa = {
  R1*15
}

gestoCADtrompa = {
  R1*4
}

gestoCAEtrompa = {
  R1*4
}

gestoCBAtrompa = {
  R1*4
}

gestoCBBtrompa = {
  R1*4
}

gestoCBCtrompa = {
  R1*4
}

gestoCBDtrompa = {
  R1*4
}

gestoCBEtrompa = {
  R1*4
}

gestoCBFtrompa = {
  R1*4
}

gestoCBGtrompa = {
  R1*4
}

gestoCBHtrompa = {
  R1*4
}

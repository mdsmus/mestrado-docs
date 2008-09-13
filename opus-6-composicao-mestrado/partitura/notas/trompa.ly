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
  \relative c'' {
    %% lembrete: dimnuir duração das notas
    R1*5/4*5
    r1 g4~-+\p
    g2.~-+ g2-+
    r1 a4~
  }
}

gestoABBtrompa = {
  \relative c'' {
    \setTextCresc
    a4.\< g,8~ g2.~
    g4 r8 cis,~ cis2~ cis8 cis~->
    cis2~ cis8 cis->~ cis4 cis~->\f
    cis8 cis->~ cis2~ cis8 cis4.->
  }
}

gestoABCtrompa = {
  \relative c {
    \setTextDecresc
    cis2~\> cis8 cis~ cis2
    r4 g''2.-+ g,4~
    g2 r2.
    r2. cis,2~
    cis2 r2.
    g'2. r2
    r1 bes,4~\pp
    bes2 r2.
  }
}

gestoBAAtrompa = {
  \relative c' {
    \repeat unfold 2 {
      R1*4/4
      R1*5/4
    }
    g8-.->\pp[ r8 r g-.->] r4 g8-.->[ r r g-.->] r4 g8-.-> r r4 g8-.-> r
    \repeat unfold 3 {
      g8-.->[ r8 r g-.->] r4 g8-.->[ r r g-.->] r4 g8-.-> r r4 g8-.-> r
    }
    \repeat unfold 2 {
      dis'8-.->[ r8 r g,-.->] r4 cis8-.->[ r r g-.->] r4 dis'8-.-> r r4 g,8-.-> r
    }
  }
}

gestoBABtrompa = {
  \relative c' {
    \repeat unfold 8 {
      R1*4/4
      R1*5/4
    }
  }
}

gestoBACtrompa = {
  \relative c'' {
    \repeat unfold 8 {
      R1*4/4
      R1*5/4
    }
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
  \relative c' {
    a2 r
    R1*8
  }
}

gestoCACtrompa = {
  \relative c' {
    R1*3
    r2 \times 2/3 {a2-+\p( bes4}
    a1~-+
    a1)-+
    R1
    r2 \times 2/3 {a2-+( bes4}
    a1)-+
    R1
    a1~-+\mp
    a1-+
    R1
    c2-+\mf\<( bes-+
    a-+)\ff r
  }
}

gestoCBAtrompa = {
  R1*16
}

gestoCBBtrompa = {
  \relative c'' {
    R1*6
    \setTextCresc
    g1~\ppp\<
    g~
    g~
    g~
  }
}

gestoCBCtrompa = {
  \relative c'' {
    \setTextDecresc
    g8~\sfz\> g2..~
    g1~
    g8\ppp r8 r2.
    R1*4
    g,1~\p
    g2 bes2~(
    bes4 a2.~
    a2) r
    cis1~
    cis2 bis2(
    dis1)
    fis2 e
    a g
  }
}

gestoCBDtrompa = {
  \relative c'' {
    bes1~\f
    bes2 r
    R1*4
    r4 g,2.~\mp
    g4 e fis2~
    fis2. fis4~
    fis2. cis4
  }
}

gestoCBEtrompa = {
  \relative c {
    e1
    r4 g2.~
    g4 e fis2~
    fis2. fis4~
    fis2. cis4
    e1
    r4 g2.~
    g4 e fis2~
    fis2. fis4~
    fis2. cis4
    e1
    g2 e
    fis cis4 dis
    c?1
    g'2 e
    fis cis4 dis
    c?1
    g'4 e4 fis cis8 dis
    c?1~
    c
  }
}

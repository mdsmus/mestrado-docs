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
    R1*5/4*6
    r2. dis2~\p
    dis2. cis2~
  }
}

gestoABBfagote = {
  \clef bass
  \relative c' {
    \setTextCresc
    cis4\< r2 bes,~
    bes2 r8 dis,~ dis2~
    dis8 dis->~ dis2~ dis8 dis-> dis4~->\f
    dis4. dis8->~ dis2~ dis8 dis->
  }
}

gestoABCfagote = {
  \clef bass
  \relative c, {
    \setTextDecresc
    dis2.~\> dis8 fis4.~
    fis2 r2.
    r4 cis2. r4
    R1*5/4
    r2 a'2.
    r2 cis2.
    r4 g2. r4
    r2. e2\pp\breathe
  }
}

gestoBAAfagote = {
  \clef bass
  \relative c {
    %% padrão de 3 compassos: 3+3|3+3|4+2
    a8-.->\pp a-. a-. a-.-> a-. a-.
    a-.-> a-. a-. a-.-> a-. a-.
    a-.->[ a-. a-. a-.] a-.-> r
    a8-.-> a-. a-. a'-.-> a,-. a-.
    a-.-> a-. a-. a'-.-> a,-. a-.
    a-.->[ a-. a-. a-.] a'-.-> r
    \repeat unfold 2 {
      a,8-.-> a-. a-. a'-.-> a,-. a-.
      a-.-> a-. a-. a'-.-> a,-. a-.
      a-.->[ a-. a-. a-.] a'-.-> r
    }

    %% alterna com trompa e clarinete
      a,8-.-> a'-. a-. cis-.-> a-. a-.
      a,-.-> a'-. a-. dis-.-> a-. a-.
      a,-.->[ a'-. a-. a-.] cis-.-> r

    a,4.\st g'4.\st
    a,4.\st g'4.\st
    a,4.\st r8 g'4\st

      a,8-.-> a'-. a-. cis-.-> a-. a-.
      a,-.-> a'-. a-. dis-.-> a-. a-.
      a,-.->[ a'-. a-. a-.] cis-.-> r

    a,4.\st g'4.\st
    a,4.\st g'4.\st
    a,4.\st r8 g'4\st

  }
}

gestoBABfagote = {
  \relative c' {
    \repeat unfold 2 {
      a,8-.-> a'-. a-. cis-.-> a-. a-.
      g'-.-> a,-. a-. dis-.-> a-. a-.
      a,-.->[ a'-. a-. a-.] cis-.-> r
    }
      a,4.\st g'4.\st
      cis4.\st g4.\st
      a,4.\st r8 g'4\st
    \repeat unfold 2 {
      a,8-.-> a'-. a-. cis-.-> a-. a-.
      g'-.-> a,-. a-. dis-.-> a-. a-.
      a,-.->[ a'-. a-. a-.] cis-.-> r
    }
    a,8-.-> a'-. a-. cis-.-> a-. a-.
    g'-.-> a,-. a-. dis-.-> r4
    g,,2.~\mf(
    g4. e
    fis2.~
    fis4) fis8~ fis4.~
    fis4. cis(
    dis4. c?4.~
    c4.~ c8) r4
  }
}

gestoBACfagote = {
  \clef bass
  \relative c' {
    r8 a-.\p a-. r a-. a-.
    r a-. a-. r a-. a-.
    r a-. a-. a4-. a8-.
    \repeat unfold 6 {
      r8 a-. a-. r a-. a-.
      r a-. a-. r a-. a-.
      r a-. a-. a4-. a8-.
    }

    g4.\st dis'4.\st
    g,4.\st cis4.\st
    g4.\st r8 dis'4\st
  }
}

gestoBBAfagote = {
  \relative c' {
    \repeat unfold 2 {
      r8[ a-. a-. r] a-.[ a-. r a-.]
      a-.[ r a-. a-.] r a-. a-. a-. r a-.
    }
    \setTextDecresc
    r8[ a-.\> a-. r] a-.[ a-. r a-.]
    a-.[ r a-. a-.] r a-. a-.[ a-. r a-.]
    r8[ a-. a-. r] a-.[ a-. r a-.]
    a-.[ r a-. a-.] r a-. a-.[ a-. r a-.]
    r8[ a-. a-. r] a-.[ a-. r a-.]
    a-.[ r a-. a-.] r a-. a-.[ a-.]\pp
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
        cis e8~\tris e2)
        %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
        gis,4
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
        d'4-^ b-^ cis-^ gis8( ais
        g?4.)
        %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
        bes8->( e,8) g'4( cis,8~
        cis e8~\tris e2) r4

      }
    }
    d4-^ b-^ cis-^ gis8( ais
    g?2~ g4)

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g2~ g4)

    gis16( ais b cis

    d4-^) b-^ cis-^ gis8( ais
    g4.) r8 

    d'4-^ b-^ 
    g1\trill\fermata
  }
}

gestoCAAfagote = {
  \clef bass
  \relative c {
    %% idéia de INT_1(5 3 4 1 2 0)
    a4\p g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    \repeat unfold 2 {
      a4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 cis8\st dis,\st
      a'4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 r4
    }
      a4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 cis8\st dis,\st
      a'4 g8\st a8~ a4 g8\st a~
  }
}

gestoCABfagote = {
  \clef bass
  \relative c {
    a4 g8\st a8~ a4 r4
    \repeat unfold 2 {
      a4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 cis8\st dis,\st
      a'4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 r4
    }
  }
}

gestoCACfagote = {
  \clef bass
  \relative c {
    %% repetição de CAA
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    \setTextCresc
    a'4\< g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'2\ff r
  }
}

gestoCBAfagote = {
  \clef bass
  \relative c' {
    R1*4
    c16-.\ppp g'-. r8 r2.
    R1*3
    %% rot3 retr. #s(5 3 4 1 2 0)
    r2. e16\ppp cis g' e,
    bes' g r8 r2.
    r4 e'16 cis g'8-. e,16 r8. r4
    R1*2
    e'16 cis g'8-. r2.
    r2. e,16 bes' g8-.
    e'16 cis g' e, bes' g r8 r2
  }
}

gestoCBBfagote = {
  \clef bass
  \relative c' {
    r2. r8 e16 cis
    g' e, bes' g r2.
    r2. e'16 cis g' e,
    bes' g r8 r2 e'16 cis g' e,
    bes' g r8 r2.
    e'16 cis g' e, bes' g r8 r2
    \setTextCresc
    e'16\< cis g' e, bes' g8.~ g4. r8
    \repeat unfold 3 {
      e'16 cis g' e, bes' g8.~ g4. r8
    }
  }
}

gestoCBCfagote = {
  \clef bass
  \relative c' {
    e16\ff cis g' e, bes' g8.~\fp g2
    c,,16\ppp( ees des fis e g e g fis bes a c) r4
    c,16( ees des fis e g e g fis bes a c ees des fis e
    g4) r c,,16( ees des fis e g e g
    fis bes a c) r2.
    c,16( ees des fis e g e g fis bes a c) r4
    c,16( ees des fis e g e g fis bes a c ees des fis e
    g4) r2.
    c,16( ees des fis e g e g fis bes a c) r4
    r2 c,16( ees des fis e g e g
    fis bes a c ees des fis e g4) r
    \clef tenor
    r4 c,16( ees des fis e g e g fis bes a c)
    \clef bass
    \setTextCresc
    r2 c,,16\<( ees des fis e g e g
    fis bes a c ees des fis e g4) r
    \clef tenor
    c,16( ees des fis e g e g fis bes a c)\mf r4
    R1
  }
}

gestoCBDfagote = {
  \clef bass
  \relative c {
    a4\mf g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
  }
}

gestoCBEfagote = {
  \clef bass
  \relative c {
    a4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    \repeat unfold 5 {
      a4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 cis8\st dis,\st
      a'4 g8\st a8~ a4 g8\st a~
      a4 g8\st a8~ a4 r4
    }
    \setTextCresc
    a4\< g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 cis8\st dis,\st
    a'4 g8\st a8~ a4 g8\st a~
    a4 g8\st a8~ a4 r4
    g'4\f( e4 fis) cis8( dis)
    r4 c?2.~\p\<
    c1\f
  }
}

%% oboe.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAoboe = {
  R1*5/4*8
}

gestoAABoboe = {
  \relative c'' {
    %% variação sobre material do fagote seção AAA
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    g1\p\dolce e4(
    fis2.~ fis2~
    fis2.) r4 g~
    g1 e4(
    fis2.) r4 fis~
    fis1 cis4(
  }
}

gestoAACoboe = {
  \relative c' {
    e2) r2.
    R1*5/4*7
  }
}

gestoAADoboe = {
  \relative c'' {
    %% repetição material seção AAB - clarinete
    %% #s(5 3 4 1 2 0)
    e2\p( cis2.
    dis2) r4 a2(
    bes2 g2) r4

    %% repetição
    e'2( cis2.
    dis2) r4 a2(
    bes2 g2) r4
  }
}

gestoAAEoboe = {
  \relative c'' {
    %% repetição material seção AAB - clarinete
    %% #s(5 3 4 1 2 0)
    \setTextCresc
    e2\<( cis2.
    dis2) r4 a2(
    bes2 g2) r4

    %% repetição
    e'2( cis2.
    dis2) r4 a2(
    bes2 g2) r4
    e'2( cis2.
    dis2.~\f dis2)
  }
}

gestoABAoboe = {
  \relative c''' {
    R1*5/4
    r1 e4~\p
    e2.~ e2
    R1*5/4
    r4 e,2. r4
    g2.~ g2
    r4 cis,1~
    cis4 r c'?2.~
  }
}

gestoABBoboe = {
  \relative c''' {
    \setTextCresc
    c8\< cis,~ cis1
    r4 a'4 c,,4. bes'4.~
    bes4. bes8~ bes4 c,4 c->\f
    a''2~ a8 bes,~ bes2~
  }
}

gestoABCoboe = {
  \relative c'' {
    \setTextDecresc
    bes8\> e,~e2. r4
    R1*5/4
    cis2. r2
    r4 dis1~\mp
    dis2 r2.
    R1*5/4*3
  }
}

gestoBAAoboe = {
  \relative c' {
    \repeat unfold 6 {
      R1*4/4
      R1*5/4
    }
    %% anacruze com #s(2 1 4 3) - retrógrado de subconjunto de #s(5 3 4 1 2 0)
    %% contorno com #s(5 4 1 0) - subconjunto de #s(5 3 4 1 2 0)
    r2 r4. dis16\mp( cis
    fis e g8~ g1~
    g2~ g8 fis8 cis4~
    cis2. c2)
  }
}

gestoBABoboe = {
  \relative c'' {
    \repeat unfold 8 {
      R1*4/4
      R1*5/4
    }
  }
}

gestoBACoboe = {
  \relative c''' {
    \repeat unfold 8 {
      R1*4/4
      R1*5/4
    }
  }
}

gestoBBAoboe = {
  \relative c'' {
    R1*2
    %% sujeito do fugato transposto a quinta
    \transpose d a' {
      \relative {
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
        bes' g2.\trill\tris
        %% #s(5 3 4 1 2 0)
        d'4-^\f b-^ cis-^ gis8( ais
        g?4.)
        %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
        bes8->( e,8) g'4( cis,8~
      }
    }
  }
}

gestoBBBoboe = {
  \relative c'' {
    %% continuação do fugato transposto a quinta
    \transpose d a' {
      \relative {
        cis8 e8~\trill\tris e2) r4

        R1*2

        %% repetição

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



      }
    }
  }
}

gestoBBCoboe = {
  \relative c'' {
    %% continuação do fugato transposto a quinta
    \transpose d a' {
      \relative {

        b8( ais) d2 e4~
        e cis4 g' e,
        bes' g2.\trill\tris

      }
    }
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
    g?2~ g4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?2~ g4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8

    g1\trill\fermata
  }
}

gestoCAAoboe = {
  \relative c' {
    R1*11
    %% preparação com retrogradação de #s(5 3 4 1 2 0)
    r4 r8. c16\p( ees des fis e) g4~
    g e8->\st fis4. cis8 g'
    e2 r4 g4~
    g e8->\st fis4. cis8 cis~
  }
}

gestoCABoboe = {
  \relative c' {
    %% preparação com retrogradação de #s(5 3 4 1 2 0)
    cis4.. c16( ees des fis e g4~
    g bes4. a4.~
    a2~ a8.) cis,16( g' e bes' g
    cis2. bis4
    dis1)\trill\tris
    fis4( e a g
    %% expansão de #s(5 3 4 1 2 0)
    bes2. a4~
    a2) bes,16( ees) e,?\<( a bes,4~
    bes2.) r4\!
  }
}

gestoCACoboe = {
  \relative c'' {
    g2\p( e
    fis1)
    cis2( dis
    c?2) \times 2/3 {r4 cis4( e}
    g2 e
    fis1)
    \setTextCresc
    cis2\<( dis
    c?2) \times 2/3 {r4 cis4( e}
    g4 e fis2)
    cis4( dis c?2)
    g'4 e fis2)
    cis4( dis c?2)
    g'8 e fis4 cis8 dis c?4)
    e2( fis
    g)\ff r
  }
}

gestoCBAoboe = {
  \relative c'' {
    R1*11
    \setTextCresc
    %% variação de rot3 #s(5 3 4 1 2 0)
    r2 cis16\ppp dis c g e fis r8
    R1
    r4 cis'16 dis c g r2
    R1*2
    %% contorno completa na seção seguinte
  }
}

gestoCBBoboe = {
  \relative c' {
    r2 e16 fis cis' dis c g e fis
    R1
    cis'16 dis c g e fis r8 r2
    r2 cis'16 dis c g e fis r8
    r2. cis'16 dis c g
    e fis r8 r2 cis'16 dis c g
    \setTextCresc
    e fis r8 r2 cis'16\< dis c g
    e fis r8 r2 cis'16 dis c g
    e fis r8 r2 cis'16 dis c g
    e fis r8 r2 cis'16 dis c g
  }
}

gestoCBCoboe = {
  \relative c' {
    e16 fis8.~\fp fis2\f cis'16 dis c g
    e fis8.~\p fis2 cis'16\f dis c g
    e fis8.~\p fis2 cis'16\mf dis c g
    %% toca também material do clarinte transposto oitava acima
    e fis r8 e'16 g, bes e, g' cis, r8 cis16 dis c g
    e fis r8 e'16 g, bes e, g' cis, r8 cis16 dis c g
    e fis r8 e'16\ppp g, bes e, g' cis, r8 r4
    R1*1
    r2 c,16( ees des fis e g e g
    fis bes a c) r2.
    c,16( ees des fis e g e g fis bes a c ees des fis e
    g4) r2 c,,16( ees des fis
    e g e g fis bes a c) r2
    c,16( ees des fis e g e g fis bes a c ees des fis e
    g4) r2 c,16( ees des fis
    e g e g fis bes a c) r4 c,16( ees des fis
    e g e g fis bes a c ees des fis e
    g4)
  }
}

gestoCBDoboe = {
  \relative c' {
    R1*10
  }
}

gestoCBEoboe = {
  \relative c'' {
    R1*4
    r4 r8. c16\p( ees des fis e g4~
    g4) e8->\st fis4. cis8->\st e~
    e4 g8->\st e->\st r2
    g4 e8->\st fis4. cis8->\st e~
    e4 e8->\st cis->\st r4 ees4~
    ees4 c8->\st bes4. a8->\st c~
    c4 ees8->\st c->\st r2
    ees4 c8->\st bes4. a8->\st c~
    c4 cis8->\st a->\st r2
    R1
    g'4( e4 fis cis8 dis
    c?1)
    g'4( e4 fis cis8 dis)
    g4( e4 fis cis8 dis
    c?1~
    c)
  }
}

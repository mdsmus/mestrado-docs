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
  R1*4
}

gestoABBoboe = {
  R1*4
}

gestoABCoboe = {
  R1*4
}

gestoABDoboe = {
  R1*4
}

gestoABEoboe = {
  R1*4
}

gestoBAAoboe = {
  R1*4
}

gestoBABoboe = {
  R1*4
}

gestoBACoboe = {
  R1*4
}

gestoBADoboe = {
  R1*4
}

gestoBAEoboe = {
  R1*4
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
      }
    }
  }
}

gestoBBBoboe = {
  \relative c'' {
    %% continuação do fugato transposto a quinta
    \transpose d a' {
      \relative {
        cis8 e8~\trill e2) r4

        R1*2

        %% repetição

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
        bes' g2.\trill

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

    g1\trill
  }
}

gestoCAAoboe = {
  R1*4
}

gestoCABoboe = {
  R1*4
}

gestoCACoboe = {
  R1*4
}

gestoCADoboe = {
  R1*4
}

gestoCAEoboe = {
  R1*4
}

gestoCBAoboe = {
  R1*4
}

gestoCBBoboe = {
  R1*4
}

gestoCBCoboe = {
  R1*4
}

gestoCBDoboe = {
  R1*4
}

gestoCBEoboe = {
  R1*4
}

gestoCBFoboe = {
  R1*4
}

gestoCBGoboe = {
  R1*4
}

gestoCBHoboe = {
  R1*4
}

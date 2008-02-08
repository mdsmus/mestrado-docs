\version "2.8.2"

\include "newcommand.ly"

tempoMark = #(define-music-function
       (parser location marktext padding) (string? number?)
     #{
       \once \override Score . RehearsalMark #'padding = $padding
       \once \override Score . RehearsalMark #'no-spacing-rods = ##t
       \mark \markup { \bold $marktext }
     #})

padraoglobal = {
  \override Staff.TimeSignature #'style = #'()
  \override Score.MetronomeMark #'padding = #4
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'padding = #0.5
}

gestoAglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*11
  \bar "||"
}

gestoBglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=80
  \time 4/4
  s1*11
  \bar "||"
}

gestoCglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1
  \time 3/4
  s1*3/4*13
  \bar "||"
}

gestoDglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=72
  \time 2/4
  s1*2/4*24
  \bar "||"
}

gestoEglobal = {
  %% gesto A %% duracao=?
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*7
  \bar "||"
}

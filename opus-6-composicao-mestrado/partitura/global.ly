\version "2.10.0"

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

gestoAAAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAABglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAACglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAADglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAAEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAAFglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAAGglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoAAHglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoABAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoABBglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoABCglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoABDglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoABEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBAAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBABglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBACglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBADglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBAEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBBAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBBBglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBBCglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCAAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCABglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCACglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCADglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCAEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBBglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBCglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBDglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBFglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBGglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBHglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "|."
}
\language "english"
\version "2.18.2"
\header {
  title = "Bolero de Sammi et Don"
  composer = "Maurice Ravel, arr. Chimerror"
}
\score {
  <<
    \new Staff = "Soprano" {
      \relative c'' {
        \set Staff.instrumentName = #"Guitar"
        \set Staff.shortInstrumentName = #"G"
        \set Staff.midiInstrument = #"overdriven guitar"
        \key c \major
        \time 3/4
        \tempo 4 = 66
        r2. | r2. | r2. | r2. |
        c4~ c8 b16 c16 d16 c16 b16 a16 | c8 c16 a16 c4~ c8 b16 c16 | a16 g16 e16 f 16 g2~ | g16 f16 e16 d16 e16 f16 g16 a16 g4~ |
        g4~ g16 a16 b16 a16 g16 f16 e16 d16 | e16 d16 c8~ c8 c16 d16 e8 f8 | d4 g2~ | g2~ g8 r8 |
        d'4~ d8. c16 b16 a16 b16 c16 | d16 c16 b8~ b16 c16 b16 a16 c16 b16 a16 f16~ | f8 f16 f16 f8 a8 c16 a16 b16 g16 | f8 f16 f16 f8 a8 b16 g16 a16 f16 |
        d8 d16 c16 d4~ d8 d16 d16 | d8 f8 a16 f16 g16 e16 d8 d16 c16 | d4~ d8 d16 c16 d8 e16 f16 | g2~ g16 f16 e16 d16 |
        c8 r8 r4 r4 | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. |
        bf''4~ bf16 a16 g16 f16 bf16 c16 a16 g16 | bf8 a16 g16 bf4 a16 bf16 a16 g16~ | g4~ g16 f16 e16 d16 e4~ | e4 r8 bf8 c8 df8~ |
        df8 df4 df8 df8 df8 | \tuplet 3/2 { df8 df8 df8 } df8 c16 bf16 df8 c16 bf16 | df16 c16 bf16 af16 g16 f16 e8~ e4~ | e2~ e8 r8 |
        d4. e8 d16 e16 f8~ | f4 g8 af8 \tuplet 3/2 { f8 g8 e8 } | d16 e16 d16 c16~ c8 bf8~ bf4~ | bf16 c16 bf16 c16 d16 e16 d16 c16 d16 c16 bf16 af16 |
        bf16 af16 g8~ g8 f8~ f4~ | f4~ f16 g16 f16 ef16~ ef4~ | ef4 f16 ef16 f16 df16~ df4~ | df4~ df16 df16 ef16 df16 f16 ef16 df16 c16~ |
        c4 e'4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4
      }
    }
    \new Staff = "Soprano2" {
      \relative c'' {
        \set Staff.instrumentName = #"Saxophone"
        \set Staff.shortInstrumentName = #"Sax"
        \set Staff.midiInstrument = #"soprano sax"
        \key c \major
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. | r2. | r2. |
        r2. | r2. |
        c4~ c8 b16 c16 d16 c16 b16 a16 | c8 c16 a16 c4~ c8 b16 c16 | a16 g16 e16 f 16 g2~ | g16 f16 e16 d16 e16 f16 g16 a16 g4~ |
        g4~ g16 a16 b16 a16 g16 f16 e16 d16 | e16 d16 c8~ c8 c16 d16 e8 f8 | d4 g2~ | g2~ g8 r8 |
        d'4~ d8. c16 b16 a16 b16 c16 | d16 c16 b8~ b16 c16 b16 a16 c16 b16 a16 f16~ | f8 f16 f16 f8 a8 c16 a16 b16 g16 | f8 f16 f16 f8 a8 b16 g16 a16 f16 |
        d8 d16 c16 d4~ d8 d16 d16 | d8 f8 a16 f16 g16 e16 d8 d16 c16 | d4~ d8 d16 c16 d8 e16 f16 | g2~ g16 f16 e16 d16 |
        c8 r8 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 | r4 e4 c4 | r4 e4 c4 |
        r4 e4 c4 | r4 e4 c4 |
        bf''4~ bf16 a16 g16 f16 bf16 c16 a16 g16 | bf8 a16 g16 bf4 a16 bf16 a16 g16~ | g4~ g16 f16 e16 d16 e4~ | e4 r8 bf8 c8 df8~ |
        df8 df4 df8 df8 df8 | \tuplet 3/2 { df8 df8 df8 } df8 c16 bf16 df8 c16 bf16 | df16 c16 bf16 af16 g16 f16 e8~ e4~ | e2~ e8 r8 |
        d4. e8 d16 e16 f8~ | f4 g8 af8 \tuplet 3/2 { f8 g8 e8 } | d16 e16 d16 c16~ c8 bf8~ bf4~ | bf16 c16 bf16 c16 d16 e16 d16 c16 d16 c16 bf16 af16 |
        bf16 af16 g8~ g8 f8~ f4~ | f4~ f16 g16 f16 ef16~ ef4~ | ef4 f16 ef16 f16 df16~ df4~ | df4~ df16 df16 ef16 df16 f16 ef16 df16 c16~ |
        c4 e'4 c4 | r4 e4 c4 |
      }
    }
    \new Staff = "Bass" {
      \relative c {
        \set Staff.instrumentName = #"Bass"
        \set Staff.shortInstrumentName = #"B"
        \set Staff.midiInstrument = #"electric bass (finger)"
        \key c \major
        \clef bass
        c4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 | c,4 r g' | c, r g'8 g8 |
        c,4 r g' | c, r g'8 g8 |
      }
    }
    \drums {
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn } sn8 sn8 |
      sn8 \tuplet 3/2 { sn16 sn sn } sn8 \tuplet 3/2 { sn16 sn sn sn sn sn sn sn sn } |
    }
  >>
  \layout { }
  \midi { }
}

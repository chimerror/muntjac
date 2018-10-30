\language "english"
\version "2.18.2"
\header {
  title = "Sammi's Theme"
  composer = "Chimerror"
}
\score {
  <<
    \new Staff = "Soprano" {
      \relative g' {
        \set Staff.instrumentName = #"Saxophone"
        \set Staff.shortInstrumentName = #"Sax"
        \set Staff.midiInstrument = #"Soprano Sax"
        \key g \major
        \time 4/4
        \tempo 4 = 95
        r1 | r1 |
        r1 | r1 |
        r4 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 b8 c8 d8 e8 fs4~ | fs8 r8 b,8 c8 d8 e8 fs4~ |
        fs8 r8 c8 d8 e8 fs8 g4~ | g8 r8 d8 e8 fs8 g8 a4 |

        r1 | r1 |
        r1 | r1 |
        r4 \tuplet 3/2 { g,4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 b8 c8 d8 e8 fs4~ | fs8 r8 b,8 c8 d8 e8 fs4~ |
        fs8 r8 c8 d8 e8 fs8 g4~ | g8 r8 d8 e8 fs8 g8 a4 |

        r1 | r1 |
        r1 | r1 |
        \tuplet 3/2 { g4 a4 fs4 } \tuplet 3/2 { fs4 a4 g4 } | \tuplet 3/2 { g4 fs4 e4 } \tuplet 3/2 { e4 d4 c4 } |
        \tuplet 3/2 { g'4 a4 fs4 } \tuplet 3/2 { fs4 a4 g4 } | \tuplet 3/2 { g4 fs4 e4 } \tuplet 3/2 { e4 d4 c4 } |
        \tuplet 3/2 { b4 c4 a4 } \tuplet 3/2 { a4 c4 b4 } | \tuplet 3/2 { b4 a4 g4 } \tuplet 3/2 { g4 fs4 e4 } |
        \tuplet 3/2 { c'4 d4 b4 } \tuplet 3/2 { b4 d4 c4 } | \tuplet 3/2 { d4 c4 e4 } \tuplet 3/2 { e4 d4 c4 } |

        r4 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 \tuplet 3/2 { g4 a4 fs4 } g4~ | g8 r8 \tuplet 3/2 { c4 e4 b4 } c4~ |
        c8 r8 b8 c8 d8 e8 fs4~ | fs8 r8 b,8 c8 d8 e8 fs4~ |
        fs8 r8 c8 d8 e8 fs8 g4~ | g8 r8 d8 e8 fs8 g8 a4 |
      }
    }
    \new Staff = "Tenor" {
      \relative g {
        \set Staff.instrumentName = #"Harpsichord"
        \set Staff.shortInstrumentName = #"H"
        \set Staff.midiInstrument = #"harpsichord"
        \key g \major
        r1 | r1 |
        r1 | r1 |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <d fs>16 <d fs>16 r2 r8. r8. | <d fs>16 <d fs>16 r2 r8. r8. |
        <e g>16 <e g>16 r2 r8. r8. | <fs a>16 <fs a>16 r2 r8. r8. |

        r1 | r1 |
        r1 | r1 |
        <b, fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <d fs>16 <d fs>16 r2 r8. r8. | <d fs>16 <d fs>16 r2 r8. r8. |
        <e g>16 <e g>16 r2 r8. r8. | <fs a>16 <fs a>16 r2 r8. r8. |

        <b, fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <d fs>16 <d fs>16 r2 r8. r8. | <d fs>16 <d fs>16 r2 r8. r8. |
        <e g>16 <e g>16 r2 r8. r8. | <fs a>16 <fs a>16 r2 r8. r8. |

        <b, fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <b fs>16 <b fs>16 r2 r8. r8. | <e g>16 <e g>16 r2 r8. r8. |
        <d fs>16 <d fs>16 r2 r8. r8. | <d fs>16 <d fs>16 r2 r8. r8. |
        <e g>16 <e g>16 r2 r8. r8. | <fs a>16 <fs a>16 r2 r8. r8. |
      }
    }
    \new Staff = "bass" {
      \relative g, {
        \set Staff.instrumentName = #"Bass"
        \set Staff.shortInstrumentName = #"B"
        \set Staff.midiInstrument = #"electric bass (finger)"
        \key g \major
        \clef bass
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        b8 b8 b8 b8 b8 d8 fs8 fs8 | b,8 b8 b8 b8 b8 d8 fs8 fs8 |
        c8 c8 c8 c8 c8 e8 g8 g8 | d8 d8 d8 d8 d8 fs8 a8 a8 |

        g,8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        b8 b8 b8 b8 b8 d8 fs8 fs8 | b,8 b8 b8 b8 b8 d8 fs8 fs8 |
        c8 c8 c8 c8 c8 e8 g8 g8 | d8 d8 d8 d8 d8 fs8 a8 a8 |

        g,8 a8 b8. r4 fs'8. g8 | c,8 b8. r4 e8. d8 c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 b8. r4 e8. d8 c8 |
        g'8 fs8. r4 b8. a8 g8 | c,8 b8. r4 e8. d8 c8 |
        g'8 fs8. r4 b8. a8 g8 | c,8 b8. r4 e8. d8 c8 |
        b8 c8 d8. r4 a'8. b8 | b,8 c8 d8. r4 a'8. b8 |
        c,8 d8 e8. r4 b'8. c8 | d,8 e8 fs8. r4 c'8. d8 |

        g,,8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        g8 a8 b8. r4 fs'8. g8 | c,8 d8 e8. r4 b8. c8 |
        b8 b8 b8 b8 b8 d8 fs8 fs8 | b,8 b8 b8 b8 b8 d8 fs8 fs8 |
        c8 c8 c8 c8 c8 e8 g8 g8 | d8 d8 d8 d8 d8 fs8 a8 a8 |
      }
    }
    \drums {
      r1 | r1 |
      r1 | r1 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |

      r1 | r1 |
      r1 | r1 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |

      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |

      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 | <bd sn hh>4 <bd hh>16 bd16 <bd sn hh>16 bd16 <bd hh>4 r4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |
      <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 | <bd sn hh>4 <bd hh>4 <bd sn hh>8 bd8 <bd hh>4 |
    }
%    \new Staff = "chcords" {
%      \relative g' {
%        \set Staff.instrumentName = #"Chords"
%        \set Staff.shortInstrumentName = #"Ch"
%        \set Staff.midiInstrument = #"acoustic grand"
%        \key g \major
%        \chordmode {
%          g1:maj7 | c1:maj7 |
%          g1:maj7 | c1:maj7 |
%          b1:m | b1:m |
%          c1 | d1 |
%        }
%      }
%    }
  >>
  \layout { }
  \midi { }
}

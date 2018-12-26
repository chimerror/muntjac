\language "english"
\version "2.18.2"
\header {
  title = "Don's Theme"
  composer = "Chimerror"
}
\score {
  <<
    \new Staff = "Soprano" {
      \relative g' {
        \set Staff.instrumentName = #"Guitar"
        \set Staff.shortInstrumentName = #"G"
        \set Staff.midiInstrument = #"overdriven guitar"
        \key d \major
        \time 4/4
        \tempo 4 = 190
        \clef treble
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        fs8 r fs r g g g g | g2 r2 | fs8 r fs r g g g g | g2 r2 |
        cs8 r cs r d d d d | d2 r2 | fs,8 r fs r g g g g | g2 r2 |
        fs8 r fs r g g g g | g2 r2 | fs8 r fs r g g g g | g2 r2 |
        cs8 r cs r d d d d | d2 r2 | fs,8 r fs r g g g g | g2 r2 |
        r1 | r1 | r1 | r1
        cs8 cs cs cs e r e r | d4 b g g | cs8 cs cs cs e r e r | d4 b g2 |
        cs8 cs cs cs e r e r | d4 b g g | cs8 cs cs cs e r e r | d4 b g2 |
        cs8 cs cs cs e r e r | d4 b g g | cs8 cs cs cs e r e r | d4 b g2 |
        cs8 cs cs cs e r e r | d4 b g g | cs8 cs cs cs e r e r | d4 b g2 |
        r1 | r1 | r1 | r1
        fs8 r fs r g g g g | g2 r2 | fs8 r fs r g g g g | g2 r2 |
        cs8 r cs r d d d d | d2 r2 | fs,8 r fs r g g g g | g2 r2 |
        fs8 r fs r g g g g | g2 r2 | fs8 r fs r g g g g | g2 r2 |
        cs8 r cs r d d d d | d2 r2 | fs,8 r fs r g g g g | g2 r2 |
        r1 | r1 | r1 | r1
      }
    }
    \new Staff = "Bass" {
      \relative g, {
        \set Staff.instrumentName = #"Bass Guitar"
        \set Staff.shortInstrumentName = #"B"
        \set Staff.midiInstrument = #"distorted guitar"
        \key d \major
        \clef bass
        g8 g g g a a a a | d8 d d d d d d d | g,8 g g g a a a a | d8 d d d d d d d |
        d8 d d d a a a a | g8 g g g g g g g | g8 g g g a a a a | d8 d d d d d d d |
        g,8 g g g a a a a | d8 d d d d d d d | g,8 g g g a a a a | d8 d d d d d d d |
        d8 d d d a a a a | g8 g g g g g g g | g8 g g g a a a a | d8 d d d d d d d |
        g,8 g g g a a a a | d8 d d d d d d d | g,8 g g g a a a a | d8 d d d d d d d |
        d8 d d d a a a a | g8 g g g g g g g | g8 g g g a a a a | d8 d d d d d d d |
        g,8 g g g a a a a | d8 d d d d d d d | g,8 g g g a a a a | d8 d d d d d d d |
        d8 d d d a a a a | g8 g g g g g g g | g8 g g g a a a a | d8 d d d d d d d |
        r1 | r1 | r1 | r1
        d8 d a a a a g g | g8 g g g g g g g | d'8 d a a a a g g | g8 g g g g g g g |
        g8 g g g a a a a | d8 d d d d d d d | d8 d a a a a g g | g8 g g g g g g g |
        d'8 d a a a a g g | g8 g g g g g g g | d'8 d a a a a g g | g8 g g g g g g g |
        g8 g g g a a a a | d8 d d d d d d d | d8 d a a a a g g | g8 g g g g g g g |
        r1 | r1 | r1 | r1
        g8 g g g a a a a | d8 d d d d d d d | g,8 g g g a a a a | d8 d d d d d d d |
        d8 d d d a a a a | g8 g g g g g g g | g8 g g g a a a a | d8 d d d d d d d |
        g,8 g g g a a a a | d8 d d d d d d d | g,8 g g g a a a a | d8 d d d d d d d |
        d8 d d d a a a a | g8 g g g g g g g | g8 g g g a a a a | d8 d d d d d d d |
        r1 | r1 | r1 | r1
      }
    }
    \drums {
      r1 | r1 | r1 | r1 |
      r1 | r1 | r1 | r1 |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <sn hh bd>16 sn sn sn <sn bd> sn sn sn <sn hh bd> sn sn sn <sn bd> sn sn sn |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <sn hh bd>16 sn sn sn <sn bd> sn sn sn <sn hh bd> sn sn sn <sn bd> sn sn sn |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> |
      <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <hh bd>4 <sn bd> <hh bd> <sn bd> | <sn hh bd>16 sn sn sn <sn bd> sn sn sn <sn hh bd> sn sn sn <sn bd> sn sn sn |
    }
%    \new Staff = "chords" {
%      \relative d' {
%        \set Staff.instrumentName = #"Chords"
%        \set Staff.shortInstrumentName = #"Ch"
%        \set Staff.midiInstrument = #"acoustic grand"
%        \key d \major
%        \chordmode {
%          g2 a2 | d2 d2 | g2 a2 | d2 d2 |
%          d2 a2 | g2 g2 | g2 a2 | d2 d2 |
%          g2 a2 | d2 d2 | g2 a2 | d2 d2 |
%          d2 a2 | g2 g2 | g2 a2 | d2 d2 |
%        }
%      }
%    }
  >>
  \layout { }
  \midi { }
}





\header {
  title = "Lesson I"
  composer = ""
}
\include "gregorian.ly"

chant = \relative c' {
  \set Score.timing = ##f
  %First Lines & Letter
  f4 g a2 bes4 a g a2 \break
  a2 g4 f g( f) f2 \finalis  a4( g f g2 f) \break
  %Verse Part 1
  f4 g a2 \break 
  a bes!4 a2 g4 a2 \divisioMaior \break
  %Verse Part 2
  f4 g a2 \break
  a2 bes!4(a ) g( f) f2 \divisioMaior \break
  %Verse Part 3
  f4 g a2 \break
  a4 g f g( f) f2 \break \finalis
  %New Line I guess
  R1
  \finalis



  % \divisioMinima
  %g4 b a2 f2 \divisioMaior
  %g4( f) f( g) a2 \finalis
}

reading = \lyricmode {
  A read -- ing_from_the La -- men -- ta -- tions
  of_Jeremi -- ah the Pro -- phet.  
}

heth = \lyricmode {
  A read -- ing_from_the La -- men -- ta -- tions
  of_Jeremi -- ah the Pro -- phet.  Heth __

  The Lord has_resolved_to_destroy
  the_walls_of_the daught -- er_of Zi -- on,

  stretch -- ing out_the_line,_not_staying_his_hand
  until_he_has_en -- gulfed ev'ry -- thing,

  thus bring -- ing_mourning_on_wall_and_rampart;
  a -- like they crum __ bled.
}

tet = \lyricmode {
  A read -- ing_from_the La -- men -- ta -- tions
  of_Jeremi -- ah the Pro -- phet.  Tet __

  Her gates have_sunk_into_the_ground;
    he_has_broken_and shat -- ered their bars.

  Her king and_her_princes_are_among_the_gentiles,
    theres_is no_in -- struc -- tion,

  fur -- ther -- more_her_prophets_cannot_find
   any_vi -- sion from the __ Lord. 
}

yod = \lyricmode {
 A read -- ing_from_the La -- men -- ta -- tions
  of_Jeremi -- ah the Pro -- phet.  Yod __

  Mute, they sit_on_the_ground
    the_elders_of_the daught -- er_of Zi -- on;
  
  they have put_dust_on_their_heads
    and_wrapped_them -- selves_in sack -- cloth.

  The young girls_of_Jerusalem_bow_their_heads
    to -- o the ground.
}

kaph = \lyricmode {
  A read -- ing_from_the La -- men -- ta -- tions
  of_Jeremi -- ah the Pro -- phet.  Kaph __

  My eyes are_worn_out_with_weeping,
    my_inmost be -- ing_is_in fer -- ment,

  My heart plummets
    at_the_destruction_of my_young peo -- ple,
  
  as the children_and_babies_grow_faint
    in_the_streets of the ci __ ty.
  

}

\score {
  \new Staff <<
    \new Voice = "melody" \chant
    \new Lyrics = "one" \lyricsto melody \heth
    \new Lyrics = "one" \lyricsto melody \tet
    \new Lyrics = "one" \lyricsto melody \yod
    \new Lyrics = "one" \lyricsto melody \kaph
  >>
    \layout {
    \once \override LyricText.self-alignment-X = #LEFT
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Bar_engraver"
      \hide Stem
      \RemoveEmptyStaves
    }
    \context {
      \Voice
      \override Stem.length = #0
    }
    \context {
      \Score
       barAlways = ##t
      
    }
  }
}
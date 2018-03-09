=begin

TASK 1: Define a function that has 5 parameters (four notes and one sleep time). Hit "Run" and nothing should play.

TASK 2: Call your function and give it five arguments (the four notes on lines 16, 18, 20, & 22 plus the sleep time). Hit run and you should hear four notes play.

TASK 3: Call your function twice in a live_loop so the entire Stranger Things Theme repeats.

=end

use_bpm 160
use_synth :saw

#define your function with parameters
define :play_eighth_notes do #the play_eighth_notes is what will be input after the notesin order for them to play. (line 37)
  
  # First set of eighth notes
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  # Second set of eigth notes
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end
play_eighth_notes #this is what allows the notes in the define function to play. 

# Married Life - Michael Ginacho
#https://musescore.com/user/1596896/scores/715646
=begin
TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.
TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.
=end

use_bpm 135
use_synth:piano
use_synth_defaults cutoff: 100
song_vocals ="C:/Users/destiny_ceja/Desktop/thing1.wav"
my_array = [:f5,:a5,:f5,:e5,:r,:f5,:a5,:f5,:d5,:r,:d5,:f5,:d5,:c5]# all of my notes are placed in an array
b = rrand_i(0.5, 2)
live_loop :up do
  index=0 #this is important because it is telling the computer to start from the first note/sleep provided in the array.
  14.times do
    sample song_vocals
    play my_array[index]
    index = index + 1 #this is what allows the following note in both of the arrways to change to the corresponding note/sleep in the array.
    sample song_vocals
    play my_array
    sleep b # choosing a sleep beween 0.5 and 2 everytime the loop starts back up.. line 8 is what shows its random between those two values
  end
end
#this doesnt sound 'in the pocket'because of randomization

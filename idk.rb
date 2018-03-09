# Married Life - Michael Ginacho
#https://musescore.com/user/1596896/scores/715646

use_bpm 135
use_synth:piano
use_synth_defaults cutoff: 100,  amp: rrand(2, 10)
song_vocals = "C:/Users/destiny_ceja/Desktop/thing1.wav"
my_array = [:f5,:a5,:f5,:e5,:r,:f5,:a5,:f5,:d5,:r,:d5,:f5,:d5,:c5]# all of my notes are placed in an array
my_sleeps = [0.5, 0.5, 0.5, 4, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 4]#all of the sleeps are placed here in order and line 12 allows the sleeps to happen in the array..

define :play_my_sample do
  sample song_vocals
end
play_my_sample# this is what calls my sample into play- the define function corresponds to this 

live_loop :up do
  index=0 #this is important because it is telling the computer to start from the first note/sleep provided in the array.
  14.times do
    play my_array[index]
    sleep my_sleeps[index] #line 7 plays and line 13 is what allows the sleep to be the next in the array play next.
    index = index + 1 #this is what allows the following note in both of the arrways to change to the corresponding note/sleep in the array.
  end
end

use_bpm 150
my_array= [:c2,:e2,:g2,:b2,:c3,:b2,:g2,:e2]
use_synth:saw

live_loop :abc do
  with_fx :octaver do
    index= 0 # the 0 is the first note in the array and thats what we start with  
    8.times do
      play my_array[index] #here the notes are playing starting with c2 and ending with e2
      sleep 0.5
      index= index +1 # this code allows the following notes to play (0,1,2,3,4...)
      puts index
    end
  end
end

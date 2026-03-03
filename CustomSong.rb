#custom song project
# VARIABLES TO STORE SAMPLES
mylife = "C:/Users/romeo_pearson/Downloads/In My Life (Remastered 2009).wav"
letbe = "C:/Users/romeo_pearson/Downloads/The Beatles - Let it be (Isolated Vocals).wav"

#define function
define :notesb3g4 do
  play :b3
  play :g4
end
#instrument
use_synth :piano
use_bpm 144
#let it be
live_loop :top do
  1.times do
    #mes1
    play :e4
    play :g4
    sleep 2
    play :e4
    play :g4
    sleep 2
    #mes2
    play :g4
    play :b3
    sleep 2
    play :g4
    play :b3
    sleep 2
    #mes3
    play :c4
    play :e4
    sleep 2
    play :c4
    play :e4
    sleep 2
    #mes4
    play :a3
    play :e4
    sleep 2
    play :a3
    play :d4
    sleep 2
    #mes5
    play :e4
    play :g3
    sleep 2
    play :e4
    play :g3
    #mes6
    play :g4
    play :b3
    sleep 2
    play :g4
    play :b3
    sleep 2
    #mes7
    play :f4
    play :a4
    sleep 2
    play :e4
    play :g4
    sleep 1
    play :d4
    play :f4
    sleep 1
    sample letbe, amp: 6
    #mes8
    play :c4
    play :e4
    sleep 4
  end
  stop
end
sleep 16
live_loop :low  do
  use_synth :sine
  use_bpm 144
  1.times do
    #mes5
    play :c2, amp:2
    sleep 4
    #mes6
    play :g1, amp:2
    sleep 4
    #mes7
    play :f1, amp:2
    sleep 4
    #mes8
    play :c2, amp:2
    sleep 3
    play :g2, amp:2
    sleep 0.5
    play :g2
    sleep 0.5
  end
  stop
end
#in my life
sleep 16

#in my life mes1
live_loop :guitartop do
  use_synth :pluck
  use_bpm 103
  1.times do
    play :c4
    sleep 1
    play :a4
    sleep 1
    play :c4
    sleep 0.5
    play :d4
    sleep 0.5
    play :e4
    sleep 0.5
    notesb3g4
    sleep 0.5
    #mes2
    notesb3g4
    sleep 4
    #mes3
    play :c4
    sleep 1
    play :a4
    sleep 1
    play :c4
    sleep 0.5
    play :d4
    sleep 0.5
    play :e4
    sleep 0.5
    notesb3g4
    sleep 0.5
  end
  stop
end
live_loop :guitarbotom do
  use_synth :pluck
  use_bpm 103
  1.times do
    #mes1
    play :a3
    sleep 4
    #mes2
    sleep 1
    play :e2
    sleep 1
    play :e3
    sleep 1
    play :e2
    sleep 1
    #mes3
    play :a2
    sleep 4
  end
  stop
end
sleep 16
sample mylife, amp: 2

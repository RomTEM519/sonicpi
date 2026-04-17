#custom song 2
#define functions
define :e_min_chord do
  play :e4
  play :g4
  play :b4
end
define :mes5and8 do
  play :f4
  play :a4
  play :c5
  sleep 0.5
  play :a4
  sleep 0.5
  play :a4
  sleep 1
  play :a4
  play :f4
  play :c4
  sleep 1
  play :c4
  play :f4
  play :g4
  sleep 1
  play :f4
  play :g4
  play :d5
  sleep 0.5
  play :d5
  sleep 0.5
  play :d5
  sleep 0.5
  play :d5
  sleep 0.5
  play :c5
  play :a4
  play :f4
  sleep 1
  play :d5
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  play :g4
  play :d4
  sleep 1
  play :g4
  sleep 1
  play :a4
  play :f4
  play :c4
  sleep 1
  play :d4
  play :g4
  play :b4
  sleep 1
  play :a4
  sleep 0.25
  play :c5
  sleep 0.25
  play :a5
  sleep 0.25
  play :d5
  sleep 0.5
  play :d5
  sleep 0.25
  play :c5
  sleep 0.5
  play :c5
  play :es4
  play :gs4
  sleep 1
  sleep 0.5
  play :a4
  sleep 0.5
end
use_bpm 60
somethingDrums = "C:/Users/romeo_pearson/Downloads/Something.wav"
firstVolume = 0.35
2.times do
  sample somethingDrums, amp: firstVolume
  sleep 2
  firstVolume = firstVolume + 2
end

live_loop :Righthand do
  use_synth :piano
  #layer 1 mesure1
  sleep 0.5
  play :a4
  sleep 0.5
  play :f4
  play :a4
  play :c5
  sleep 0.5
  play :a4
  sleep 0.5
  play :bb4
  play :eb4
  play :g4
  sleep 1
  e_min_chord
  sleep 1
  
  #layer 1 mesure2
  play :c5
  play :g4
  play :e4
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 0.5
  #layer1 mesure3
  e_min_chord
  sleep 2
  play :e4
  play :b3
  play :g3
  sleep 2
  #layer1 mesure4
  play :bb3
  play :d4
  sleep 0.5
  play :bb4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  e_min_chord
  sleep 0.5
  play :c5
  sleep 0.5
  play :d5
  sleep 0.5
  play :c5
  sleep 0.5
  #top mes5through8
  mes5and8
  stop
end

sleep 4
live_loop :LeftHand do
  use_synth :piano
  with_fx :ping_pong do
    #mes 2 layer 2
    play :c1
    sleep 0.5
    play :g2
    sleep 0.5
    play :e3
    sleep 1
    play :c1
    sleep 1
    play :g3
    play :e3
    play :c3
    sleep 1
    #mes 3 layer 2
    play :b3
    play :c3
    sleep 2
    play :c1
    sleep 0.5
    play :g2
    sleep 0.5
    play :e3
    sleep 1
    #mes 4 layer 2
    play :f3
    play :g2
    sleep 2
    play :b3
    play :c3
    sleep 2
    #mes 5 layer 2
    play :f2
    sleep 0.5
    play :c3
    sleep 0.5
    play :a3
    sleep 1
    play :f3
    play :f2
    sleep 1
    play :e3
    play :e2
    sleep 1
    #mes 6 layer 2
    play :d2
    sleep 0.5
    play :a2
    sleep 0.5
    play :fs3
    sleep 1
    play :c4
    play :d3
    sleep 2
    #mes 7 layer 2
    play :g2
    sleep 0.5
    play :d3
    sleep 0.5
    play :b3
    sleep 1
    play :a3
    play :a2
    sleep 1
    play :b3
    play :b2
    sleep 1
    #mes 8 layer 2
    play :a2
    sleep 0.5
    play :e3
    sleep 0.5
    play :c4
    sleep 1
    play :gs2
    sleep 0.5
    play :e3
    sleep 0.5
    play :c4
    sleep 1
  end
  stop
end

sleep 8
notesList = [:bb3,:bb4,:b4,:b4,:e4,:c5,:d5,:c5]
live_loop :stringMusic do
  use_synth :pluck
  with_fx :reverb, mix: 0.4, room: 0.6 do
    with_fx :lpf, cutoff: 95 do
      #layer1 mesure4
      num = 0
      7.times do
        play notesList[num]
        sleep 0.5
        num = num + 1
      end
      #string mesruew 5thru8
      mes5and8
      #mes 9
      v = 1
      3.times do
        play :e5, amp: v
        sleep 0.25
        play :d5, amp: v
        sleep 0.25
        play :c5, amp: v
        sleep 0.25
        play :b4, amp: v
        sleep 0.25
        
        play :c5, amp: v
        sleep 0.5
        play :d5, amp: v
        sleep 0.25
        play :c5, amp: v
        sleep 0.25
        
        play [:gs4, :b4, :e5], amp: v
        sleep 1.0
        
        play :a4, amp: v
        sleep 0.25
        play :b4, amp: v
        sleep 0.25
        play :a4, amp: v
        sleep 0.5
        
        v = v - 0.25
      end
      stop
    end
  end
end
sleep 32
sample somethingDrums

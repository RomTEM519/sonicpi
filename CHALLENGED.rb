# Welcome to Sonic Pi
# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano

#define reapeters
define :backmusic do |amp|
  play:E3, amp: amp
  sleep 1
  play:B3, amp: amp
  play:E4, amp: amp
  sleep 1
  play:B3, amp: amp
  sleep 1
  play:E4, amp: amp
  sleep 1
  sample :mehackit_robot1
  
end

define :measure2 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

define :measure3 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end

define :measure5 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

live_loop:background_notes do
  backmusic 0.25
  
  backmusic 0.5
  
  backmusic 0.75
  
  5.times do
    backmusic 1
  end
  stop
  
end

# Measure 1
sample :mehackit_robot1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2
measure2

# Measure 3
measure3

# Measure 4
measure3

# Measure 5
measure5

# Measure 6
measure3

# Measure 7
measure5

# Measure 8
measure2

#end
sample :arovane_beat_c

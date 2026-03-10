use_bpm 100
use_synth :piano
num = 21
mun = 108
88.times do
  play num
  sleep 0.1
  num = num + 1
end
sleep 0.25
88.times do
  play mun
  sleep 0.1
  mun = mun -1
end

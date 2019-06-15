live_loop :cymbal do
  use_real_time
  sync "/osc/a"
  sample :drum_cymbal_closed
end

live_loop :haus do
  use_real_time
  sync "/osc/b"
  sample :bd_haus
end

live_loop :dolf do
  use_real_time
  sync "/osc/c"
  sample :sn_dolf
end

live_loop :notes do
  use_real_time
  n = sync "/osc/d"
  note = n[0]
  notes = [:fs4, :e4, :d4, :c4, :b3, :a3, :g3, :fs3]
  synth :dark_ambience
  with_fx :bitcrusher do
    play notes[note], amp: 0.5, release: 0.1
  end
end
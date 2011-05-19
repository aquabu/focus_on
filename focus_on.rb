#!/opt/local/bin/ruby
@minutes_between_reminders = 5 
@minutes_to_stay_focused = 25
@chosen_focus = ARGV[0] || "something cool" 

def say(what)
  puts what
  `say #{what}`
end

def minutes_left_after(minutes_past)
  @minutes_to_stay_focused - minutes_past
end

def do_some_focusing_on(what)
  say "Lets get started!" 
  @minutes_to_stay_focused.times do |i|
    say("#{minutes_left_after(i)} minutes left. Stay focused on " + what) if i % @minutes_between_reminders == 0
    sleep 60 
  end
end

do_some_focusing_on(@chosen_focus)
say "Nice one! Take a little break."

# Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

def predict_weather
  sunshine = [true, false].sample

  if sunshine # == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

# sunshine is assigned a string, not truthy true or falsy false, so either  in either case, it evaluates as true... must make true/false boolean values not strings... or you could evaluate explicitly against the 'string' values (see comment on line 6).


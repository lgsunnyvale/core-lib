describe "MatchData#==", ->
  # it_behaves_like(:matchdata_eql, :==)

  it "returns true if both operands have equal target strings, patterns, and match positions", ->
    a = R(/hay/).match('haystack')
    b = R(/hay/).match('haystack')
    expect( a['=='](b) ).toEqual true

  it "returns false if the operands have different offsets", ->
    a = R(/hay/).match('haystack haystack')
    b = R(/hay/).match('haystack haystack', 3)
    expect( a['=='](b) ).toEqual false

  it "returns false if the operands have different target strings", ->
    a = R(/hay/).match('hay')
    b = R(/hay/).match('haystack')
    expect( a['=='](b) ).toEqual false

  it "returns false if the operands have different patterns", ->
    a = R(/h.y/).match('haystack')
    b = R(/hay/).match('haystack')
    expect( a['=='](b) ).toEqual false

  it "returns false if the argument is not a MatchData object", ->
    a = R(/hay/).match('haystack')
    expect( a['==']( new Object() ) ).toEqual false


  # it "returns true if both operands have equal target strings, patterns, and match positions", ->
  #   a = R('haystack').match(/hay/)
  #   b = R('haystack').match(/hay/)
  #   expect( a['=='](b) ).toEqual true

  # it "returns false if the operands have different target strings", ->
  #   a = R('hay').match(/hay/)
  #   b = R('haystack').match(/hay/)
  #   expect( a['=='](b) ).toEqual false

  # it "returns false if the operands have different patterns", ->
  #   a = R('haystack').match(/h.y/)
  #   b = R('haystack').match(/hay/)
  #   expect( a['=='](b) ).toEqual false

  # it "returns false if the argument is not a MatchData object", ->
  #   a = R('haystack').match(/hay/)
  #   expect( a['==']( new Object() ) ).toEqual false

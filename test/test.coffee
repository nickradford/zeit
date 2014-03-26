describe 'Zeit', ->
  describe 'Second', ->
    it 'converts to milliseconds', ->
      1.second.should.equal 1000

  describe 'Seconds', ->
    it 'converts to milliseconds', ->
    	10.seconds.should.equal 10000

  describe 'Minute', ->
    it 'converts to milliseconds', ->
      1.minute.should.equal 60.seconds

  describe 'Minutes', ->
    it 'converts to milliseconds', ->
      3.minutes.should.equal 180.seconds

  describe 'Hour', ->
    it 'converts to milliseconds', ->
      1.hour.should.equal 60.minutes

  describe 'Hours', ->
    it 'converts to milliseconds', ->
      2.hours.should.equal 120.minutes

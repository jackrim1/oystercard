require_relative 'journey'
class Oystercard

<<<<<<< HEAD
=======
# test push

>>>>>>> d95dac09adce8735f711d7fb499497a24f76ff80
  BALANCE_LIMIT = 90
  MINIMUM_FARE = 1
  attr_reader :balance, :journey

	def initialize(journey = Journey.new)
		@balance = 0
    @journey = journey
	end


  def top_up(amount)
    fail "Your balance cannot exceed £#{BALANCE_LIMIT}" if (amount + balance) > BALANCE_LIMIT
    @balance += amount
  end

  def touch_in(entry_station)
  	fail "You do not have the minimum balance for travel" if @balance < MINIMUM_FARE
    journey.start(entry_station)
  end

  def touch_out(exit_station)
    deduct(journey.finish(exit_station))
  end

<<<<<<< HEAD
=======
  def in_journey?
    journey.in_journey?
  end

>>>>>>> d95dac09adce8735f711d7fb499497a24f76ff80
  private

  def deduct(amount)
    @balance -= amount
  end

end
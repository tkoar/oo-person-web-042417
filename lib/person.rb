class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(caller)
    caller.happiness += 3
    self.happiness += 3
    return "Hi #{caller.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(callee, topic)
    if topic == "politics"
      callee.happiness -= 2
      self.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      callee.happiness += 1
      self.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end



















# class Person
#   attr_accessor :bank_account
#   attr_reader :name, :hygiene, :happiness
#
#   @@person = []
#
#   def clean?
#     @hygiene > 7 ? true : false
#   end
#
#   def happy?
#     @happiness > 7 ? true : false
#   end
#
#   def get_paid(salary)
#     self.bank_account += salary
#     self.happiness += 1
#     return "all about the benjamins"
#   end
#
#   def take_bath
#     self.hygiene += 4
#     return "♪ Rub-a-dub just relaxing in the tub ♫"
#   end
#
#   def work_out
#     self.happiness += 2
#     self.hygiene -= 3
#     return "♪ another one bites the dust ♫"
#   end
#
#   def initialize(name)
#     @name = name
#     @bank_account = 25
#     @happiness = 8
#     @hygiene = 8
#   end
#
#   def happiness=(num)
#   @happiness = num
#   @happiness = 10 if @happiness > 10
#   @happiness = 0 if @happiness < 0
#   end
#
#   def hygiene=(num)
#     @hygiene = num
#     @hygiene = 10 if @hygiene > 10
#     @hygiene = 0 if @hygiene < 0
#   end
#
#   def call_friend(caller)
#     caller.happiness += 3
#     self.happiness += 3
#     return "Hi #{caller.name}! It's #{self.name}. How are you?"
#   end
#
#   def start_conversation(callee, topic)
#     if topic == "politics"
#       callee.happiness -= 2
#       self.happiness -= 2
#       return 'blah blah partisan blah lobbyist'
#     elsif topic == "weather"
#       callee.happiness += 1
#       self.happiness += 1
#       return 'blah blah sun blah rain'
#     else
#       return 'blah blah blah blah blah'
#     end
#   end
#
# end

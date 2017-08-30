class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end



  def happiness=(happiness)

    @happiness = happiness

      if @happiness >= 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      else
        @happiness
      end

  end

  def hygiene=(hygiene)

    @hygiene = hygiene

      if @hygiene >= 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      else
        @hygiene
      end

  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene = @hygiene + 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene = @hygiene - 3
    self.hygiene=(@hygiene)
    @happiness = happiness + 2
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(instance)
    @happiness = @happiness + 3
    self.happiness=(@happiness)
    instance.happiness += 3
    "Hi #{instance.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(instance, topic)
      if topic == "politics"
        self.politics(instance)
    elsif topic == "weather"
        weather(instance)
    else
        "blah blah blah blah blah"
    end
  end

  def politics(instance)
    @happiness = @happiness - 2
    self.happiness=(@happiness)
    instance.happiness -= 2
    "blah blah partisan blah lobbyist"
  end

  def weather(instance)
    @happiness = @happiness + 1
    self.happiness=(@happiness)
    instance.happiness += 1
    "blah blah sun blah rain"
  end

end

danielle = Person.new("Danielle")

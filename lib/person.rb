# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def bank_account=(value)
        @bank_account = value
    end
    def happiness=(value)
        @happiness = proccess_value(value)
    end
    def hygiene=(value)
        @hygiene = proccess_value(value)
    end
    def proccess_value value
        return_value = 0
        if value > 10
            return_value = 10
        elsif value <0
            return_value = 0
        else
            return_value = value
        end
        return_value
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
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
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
abel = Person.new("Abel") 
abel.hygiene = 5
puts abel.hygiene
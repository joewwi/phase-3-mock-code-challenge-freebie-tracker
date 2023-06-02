class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies, through: :freebies

    def received_one?(item)
        self.freebies.include?(item)
    end

    def give_away(dev:, freebie:)
        freebie.dev = dev
    end
end

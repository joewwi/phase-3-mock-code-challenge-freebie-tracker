class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.include(item_name)
    end

    def give_away(dev:, freebie:)
        freebie.dev = dev
    end
end

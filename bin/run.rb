require_relative "../config/environment.rb"
# Object Association Methods
# Use Active Record association macros and Active Record query methods where appropriate (i.e. has_many, has_many through, and belongs_to).

# Note: The plural of "freebie" is "freebies" and the singular of "freebies" is "freebie".

    # Freebie

        # Freebie#dev
        # returns the Dev instance for this Freebie
        first_freebie = Freebie.first 
        puts first_freebie.dev()

        # Freebie#company
        # returns the Company instance for this Freebie
        puts first_freebie.company()

    # Company

        # Company#freebies
        # returns a collection of all the freebies for the Company
        first_company = Company.first
        puts first_company.freebies

        # Company#devs
        # returns a collection of all the devs who collected freebies from the Company
        puts first_company.devs

    # Dev

        # Dev#freebies
        # returns a collection of all the freebies that the Dev has collected
        first_dev = Dev.first 
        puts first_dev.freebies

        # Dev#companies
        # returns a collection of all the companies that the Dev has collected freebies from
        puts first_dev.companies

        # Use rake console and check that these methods work before proceeding. For example, you should be able to call Dev.first.companies and see a list of the companies for the first dev in the database based on your seed data; and Freebie.first.dev should return the dev for the first freebie in the database.

# Aggregate and Association Methods

    # Freebie

        # Freebie#print_details
        # should return a string formatted as follows: {insert dev's name} owns a {insert freebie's item_name} from {insert company's name}
        puts first_freebie.print_details

    # Company

        # Company#give_freebie(dev, item_name, value)
        # takes a dev (an instance of the Dev class), an item_name (string), and a value as arguments, and creates a new Freebie instance associated with this company and the given dev
        first_company.give_freebie(dev:first_dev, item_name: "Kokolate", value: 23)

        # Company.oldest_company
        # returns the Company instance with the earliest founding year
        puts Company.oldest_company

    # Dev

        # Dev#received_one?(item_name)
        # accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
        puts first_dev.received_one?("Cheked")

        # Dev#give_away(dev, freebie)
        # accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; your code should only make the change if the freebie belongs to the dev who's giving it away
        last_dev = Dev.last 
        last_dev.give_away(dev: first_dev, freebie: first_freebie)
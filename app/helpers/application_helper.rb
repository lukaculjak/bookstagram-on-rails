module ApplicationHelper
    def money(cents)
        number_to_currency(cents / 100.0, unit: "KM", precision: 2)
    end
end

class Network < ActiveRecord::Base
    has_many :shows

    def sorry
        if self.call_letters == "NBC"
            "We're sorry about passing on John Mulaney's pilot"
        end
    end
end

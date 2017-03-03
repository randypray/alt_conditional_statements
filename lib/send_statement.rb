module Conversions
  class SendStatement

    def convert_state_char_to_number(state_char)
      send(state_char)
    end

    def convert_true_false(true_false)
      send(true_false)
    end

    private

    def true
      'Y'
    end

    def false
      'N'
    end

    def AL
      '01'
    end

    def AK
      '02'
    end

    def AZ
      '02'
    end

    def AR
      '02'
    end

    def CA
      '02'
    end

    def CO
      '02'
    end

    def CT
      '09'
    end

    def DE
      '10'
    end

    def DC
      '11'
    end

    def FL
      '12'
    end

    def GA
      '13'
    end

    def HI
      '15'
    end

    def ID
      '16'
    end

    def IL
      '17'
    end

    def IN
      '18'
    end

    def IA
      '19'
    end
  end
end
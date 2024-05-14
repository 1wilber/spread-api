module Buda
  module Response
    class Market
      attr_reader :id

      def initialize(response)
        @id = response['id']
      end
    end
  end
end

# module SunspotWithKaminari
# end

module Sunspot
  module Search
    class AbstractSearch

      # ==== Returns
      #
      # Integer:: Current page number
      #
      def current_page
        @query.page
      end
  
      # ==== Returns
      #
      # Integer:: Total number of pages for matching documents
      #
      def num_pages
        (total.to_f / @query.per_page).ceil
      end
  
      # ==== Returns
      #
      # Integer:: Number of records displayed per page
      #
      def limit_value
        @query.per_page
      end
    end
  end
end

module HasOffersV3
  module Affiliate
    class AffiliateBilling < Base
      class << self
        def find_all_invoices(params = {})
          post_request 'findAllInvoices', params
        end

        def find_invoice_by_id(params = {})
          requires! params, [:id]
          post_request 'findInvoiceById', params
        end
      end
    end
  end
end

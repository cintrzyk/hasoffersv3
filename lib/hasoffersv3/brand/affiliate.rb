module HasOffersV3
  module Brand
    class Affiliate < Base
      class << self
        def find_all(params = {})
          post_request 'findAll', params
        end

        def find_by_id(params = {})
          requires! params, [:id]
          get_request 'findById', params
        end

        def update_payment_method_wire(params = {})
          post_request 'updatePaymentMethodWire', params
        end

        def update_payment_method_paypal(params = {})
          post_request 'updatePaymentMethodPaypal', params
        end

        def get_payment_methods(params = {})
          requires! params, [:id]
          get_request 'getPaymentMethods', params
        end

        def get_signup_answers(params = {})
          requires! params, [:id]
          get_request 'getSignupAnswers', params
        end

        def get_signup_questions(params = {})
          get_request 'getSignupQuestions', params
        end
      end
    end
  end
end

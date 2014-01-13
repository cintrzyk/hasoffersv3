require 'spec_helper'

describe HasOffersV3::Brand::AffiliateBilling do
  subject { described_class }

  let(:url)  { api_url 'AffiliateBilling' }

  describe '#find_all_invoices' do
    it 'makes a proper request call' do
      stub_call
      response = subject.find_all_invoices
      a_request(:post, url).with(body: hash_including({ 'Method' => 'findAllInvoices' })).should have_been_made
      validate_call response
    end
  end

  describe '#find_invoice_by_id' do
    it 'makes a proper request call' do
      stub_call
      response = subject.find_invoice_by_id id: 1
      a_request(:post, url).with(body: hash_including({ 'Method' => 'findInvoiceById' })).should have_been_made
      validate_call response
    end

    context 'there is no id' do
      it 'raises exception' do
        expect { subject.find_invoice_by_id failed_id: 1 }.to raise_error ArgumentError
      end
    end
  end
end

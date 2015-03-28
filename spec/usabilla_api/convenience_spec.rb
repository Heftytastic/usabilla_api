require 'spec_helper'

module UsabillaApi
  describe Convenience::ClassMethods do

    def expect_method_to_return_class(method, klass)
      returned_convenience_class = UsabillaApi.send(method)
      expect(returned_convenience_class).to be klass
    end

    def expect_method_to_return_type_of_class(method, klass, args = nil)
      returned_convenience_class = args ? UsabillaApi.send(method, args) : UsabillaApi.send(method)
      expect(returned_convenience_class).to be_a klass
    end

    context '#api_client' do
      it 'returns the main usabilla api client for api calls' do
        expect_method_to_return_class(:api_client, UsabillaApi::Client)
      end
    end

    context '#response' do
      it 'returns the model response class' do
        expect_method_to_return_class(:response, UsabillaApi::Models::Response)
      end
    end

    # context '#button' do
    #   it 'returns the button client class' do
    #     expect_method_to_return_class(:button, UsabillaApi::Clients::Button.retrieve({}))
    #   end
    # end
    #
    # context '#feedback_items' do
    #   it 'returns the feedback items client class' do
    #     expect_method_to_return_class(:feedback_items, UsabillaApi::Clients::Button.feedback({id: '1234'}))
    #   end
    # end
    #
    # context '#campaign' do
    #   it 'returns the campaign client class' do
    #     expect_method_to_return_class(:campaign, UsabillaApi::Clients::Campaign.retrieve({}))
    #   end
    # end
    #
    # context '#campaign_results' do
    #   it 'returns the campaign results client class' do
    #     expect_method_to_return_class(:campaign_results, UsabillaApi::Clients::Campaign.results({id: '1234'}))
    #   end
    # end

  end

end

module Shawarma
  #
  # This module is the heart of what Shawarma provides. Your classes should
  # mixin Shawarma::Function and define a `#perform` method. This module
  # prepends an `#initialize` method to do the essential setup and provides
  # convenience methods to allow you to access context, logging and other
  # runtime details from within your class' `#perform` method.
  #
  module Function
    def self.included(klass)
      klass.prepend Shawarma::Function::Initialization
      klass.extend Shawarma::Function::ClassMethods
    end

    # @return [Context] the execution context of the current function
    def context; end

    # @return [Logger] the current context's logger object
    def logger; end

    # @return [Request] the request sent to the current function
    def request; end

    module Initialization
      # The prepended initialization method is used as the primary entry point
      # for code run on AWS Lambda. It expects to receive the current request
      # as well as the execution context and it sets up the current object so
      # it is ready for its `#perform` method to be invoked.
      def initialize(request, context)
        super
      end
    end

    module ClassMethods

    end
  end
end

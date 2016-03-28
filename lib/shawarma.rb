require 'shawarma/version'

module Shawarma
  module AWS
    java_import 'com.amazonaws.services.lambda.runtime.Context'
    java_import 'com.amazonaws.services.lambda.runtime.LambdaLogger'
  end
end

require 'shawarma/context'
require 'shawarma/function'

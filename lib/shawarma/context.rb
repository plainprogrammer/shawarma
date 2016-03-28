module Shawarma
  #
  # Represents the context passed to the AWS Lambda function. This object
  # provides details about the execution state and environment of the Lambda
  # function.
  #
  class Context
    # This is the same ID returned to the client that called invoke(). This ID
    # is reused for retries on the same request.
    #
    # @return [String] AWS request ID associated with the request
    def request_id; end

    # @return [String, nil] name of CloudWatch log group container is configured to log to
    def log_group_name; end

    # @return [String, nil] name of CloudWatch log stream container is configured to log to
    def log_stream_name; end

    # @return [String] name of the function being executed
    def function_name; end

    # @return [String] version of the function being executed
    def function_version; end

    # @return [String] function Arn of the resource being invoked
    def invoked_function_arn; end

    # Provides information about the Amazon Cognito identity provider when
    # invoked through the AWS Mobile SDK.
    #
    # @return [CognitoIdentity, nil]
    def identity; end

    # Provides information about the client application and device when
    # invoked through the AWS Mobile SDK.
    #
    # @return [ClientContext, nil]
    def client_context; end

    # @return [Fixnum] time remaining for this execution in milliseconds
    def remaining_time; end

    # @return [Fixnum] memory size configured for the Lambda function in megabytes
    def memory_limit; end

    # @return [LambdaLogger] logger instance for this context
    def logger; end
  end
end

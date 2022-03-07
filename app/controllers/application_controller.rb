class ApplicationController < ActionController::Base
    include SessionsHelper

    helper_method :c
end

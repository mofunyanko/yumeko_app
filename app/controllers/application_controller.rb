class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        case resource
        when User
            users_pages_index_path
        when Admin
            admin_pages_index_path
        end
    end
end

module ApplicationHelper
    def setting
        Setting.first
    end

    def picture_home_path
        '/banner.png'
    end
end

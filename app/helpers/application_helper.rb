module ApplicationHelper
    def shape_create_time(created_at)
        created_at.strftime("%Y-%m-%d %H:%M")
    end
end

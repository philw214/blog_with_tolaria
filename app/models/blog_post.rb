class BlogPost < ActiveRecord::Base
  has_many :tags

  manage_with_tolaria using: {
    icon: "file-o",
    category: "Settings",
    priority: 5,
    permit_params: [
      :title,
      :body,
      tags_attributes: [
        :id,
        :_destroy,
        :description
      ]
    ]
  }

end

class JsonFeed::PostSerializer < BaseSerializer
  def initialize(@post : Post)
  end

  def render
    {
      id:             @post.guid.hexstring,
      title:          @post.title,
      content_text:   @post.summary,
      url:            @post.url,
      date_published: @post.created_at.to_rfc3339,
      author:         {name: @post.author},
      tags:           @post.categories.map(&.name),
    }
  end
end

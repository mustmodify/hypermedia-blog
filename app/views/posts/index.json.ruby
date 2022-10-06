{
  collection:
  {
    version: "1.0",
    href: request.original_url,
    links: [
      {rel: 'logout', href: '/api.json'},
    ],
    items: Post.all.map{|p| {
      href: "/posts/#{p.id}.json",
      data: [
	{name: 'title', value: p.title},
	{name: 'body', value: p.body},
	{name: 'published_at', value: p.published_at.to_s(:db)},
      ],
      links: [
	{rel: 'comments', href: "/posts/#{p.id}/comments.json"},
	{rel: 'delete', href: "/posts/#{p.id}", method: 'delete'}
      ]
    }},
    template: {
      data: [
	{name: 'title', value: '', prompt: 'Title'},
	{name: 'body', value: '', prompt: 'Post Body'},
	{name: 'publish', value: false, prompt: 'Publish?'}
      ]
    }
  }
}.to_json


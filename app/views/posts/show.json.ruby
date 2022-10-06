{
  collection:
  {
    version: "1.0",
    href: request.original_url,
    links: [
      {rel: 'logout', href: '/api.json'},
      {rel: 'posts', href: '/posts.json'},
    ],
    items: [{
      href: "/posts/#{@post.id}.json",
      data: [
	{name: 'title', value: @post.title},
	{name: 'body', value: @post.body},
	{name: 'published_at', value: @post.published_at.to_s(:db)},
      ],
      links: [
	{rel: 'comments', href: "/posts/#{@post.id}/comments.json"},
	{rel: 'delete', href: "/posts/#{@post.id}", method: 'delete'}
      ]
    }],
    template: {
      data: [
	{name: 'title', value: @post.title, prompt: 'Title'},
	{name: 'body', value: @post.body, prompt: 'Post Body'},
	{name: 'publish', value: true, prompt: 'Publish?'}
      ]
    }
  }
}.to_json


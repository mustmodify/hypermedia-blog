{
  collection:
  {
    version: "1.0",
    href: request.original_url,
    links: [
      {rel: 'logout', href: '/api.json'},
      {rel: 'parent-post', href: "/posts/#{params[:post_id]}.json"}
    ],
    items: @comments.map{|c| {
      href: "/comments/#{c.id}.json",
      data: [
	{name: 'author', value: c.author},
	{name: 'body', value: c.body},
	{name: 'created_at', value: c.created_at.to_s(:db)},
      ],
      links: [
        {rel: 'parent-post', href: "/posts/#{params[:post_id]}.json"},
	{rel: 'delete', href: "/comments/#{c.id}", method: 'delete'}
      ]
    }},
    template: {
      data: [
	{name: 'author', value: '', prompt: 'Author'},
	{name: 'body', value: '', prompt: 'Snark-ism'},
      ],
    }
  }
}.to_json


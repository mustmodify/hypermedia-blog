mrp = Post.last
mrpl = mrp ? {rel: 'most-recent-post', href: "/posts/#{mrp.id}.json"} : nil

{
  collection:
  {
    version: "1.0",
    href: request.original_url,

    links: [
      {rel: 'logout', href: '/api.json'},
      {rel: 'posts', href: '/posts.json'},
      mrpl].compact
  }
}.to_json

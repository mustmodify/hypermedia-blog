{
  collection:
  {
    version: "1.0",
    href: request.original_url,

    links: [
      {rel: 'login', href: '/api.json?admin=true'}
    ],
    items: []
  }
}.to_json

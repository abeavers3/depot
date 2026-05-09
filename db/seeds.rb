Product.delete_all

Product.create!(
  title: "Agile Web Development with Rails",
  description: "A practical guide to building Rails applications using Ruby, controllers, views, models, and databases.",
  image_url: "rails.png",
  price: 49.95
)

Product.create!(
  title: "Programming Ruby",
  description: "A helpful guide for learning Ruby syntax, objects, methods, classes, and common programming patterns.",
  image_url: "ruby.jpg",
  price: 39.95
)

Product.create!(
  title: "Docker for Rails Developers",
  description: "A guide to using Docker with Rails applications for local development and deployment.",
  image_url: "ridocker.jpg",
  price: 34.95
)

Product.create!(
  title: "Modern CSS with Tailwind",
  description: "A practical resource for styling modern web applications with utility-first CSS.",
  image_url: "tailwind.jpg",
  price: 29.95
)

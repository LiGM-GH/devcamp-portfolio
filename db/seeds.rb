# frozen_string_literal: true

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts '3 topics created'

10.times do |blog|
  Blog.create!(
    title: "my_blog_#{blog}",
    body: <<~BODY,
      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      Cras velit arcu, faucibus eget metus eu, eleifend volutpat purus.
      Maecenas at nulla sed mauris porttitor vulputate.
      Aenean et neque ut eros efficitur pulvinar at et massa.
      Fusce non aliquet lectus.
      In porttitor massa at dui ultricies pulvinar. Aenean id nunc ex.
    BODY
    topic_id: Topic.last.id
  )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts '5 skills created'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
      'Cras velit arcu, faucibus eget metus eu, eleifend volutpat purus. '\
      'Maecenas at nulla sed mauris porttitor vulputate. '\
      'Aenean et neque ut eros efficitur pulvinar at et massa. '\
      'Fusce non aliquet lectus. '\
      'In porttitor massa at dui ultricies pulvinar. Aenean id nunc ex. ',
    main_image: 'https://dummyimage.com/1040x740/fff/aaa',
    thumb_image: 'https://dummyimage.com/350x200/fff/aaa'
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title #{portfolio_item}",
    subtitle: 'Angular',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
      'Cras velit arcu, faucibus eget metus eu, eleifend volutpat purus. '\
      'Maecenas at nulla sed mauris porttitor vulputate. '\
      'Aenean et neque ut eros efficitur pulvinar at et massa. '\
      'Fusce non aliquet lectus. '\
      'In porttitor massa at dui ultricies pulvinar. Aenean id nunc ex. ',
    main_image: 'https://dummyimage.com/1040x740/fff/aaa',
    thumb_image: 'https://dummyimage.com/350x200/fff/aaa'
  )
end

puts '9 portfolio items created'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts '3 technologies created'

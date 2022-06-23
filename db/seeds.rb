10.times do |blog|
  Blog.create!(
    title: "my_blog_#{blog}",
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
    'Cras velit arcu, faucibus eget metus eu, eleifend volutpat purus. '\
    'Maecenas at nulla sed mauris porttitor vulputate. '\
    'Aenean et neque ut eros efficitur pulvinar at et massa. '\
    'Fusce non aliquet lectus. '\
    'In porttitor massa at dui ultricies pulvinar. Aenean id nunc ex. '
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

9.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title #{portfolio_item}",
    subtitle: "portfolio subtitle #{portfolio_item}",
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '\
      'Cras velit arcu, faucibus eget metus eu, eleifend volutpat purus. '\
      'Maecenas at nulla sed mauris porttitor vulputate. '\
      'Aenean et neque ut eros efficitur pulvinar at et massa. '\
      'Fusce non aliquet lectus. '\
      'In porttitor massa at dui ultricies pulvinar. Aenean id nunc ex. ',
    main_image: 'https://dummyimage.com/1040x740/fff/aaa',
    thumb_image: 'https://dummyimage.com/640x360/fff/aaa'
  )
end

puts '9 portfolio items created'

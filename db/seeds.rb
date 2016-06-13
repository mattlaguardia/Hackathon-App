require_relative '../model/hackathon'

Hackathon.destroy_all
User.destroy_all

Hackathon.create([
  {title: "Digital Journalism Hackathon", location: "Grafinger Str. 6, 81671 München, Deutschland", description: "Spend one weekend thinking outside the box and find new ways of storytelling and new tools. Become part of a team of journalists, designers and developers and develop a prototype, a new gadget or a new form. Your goal: Create a new kind of journalism that is purely digital and goes beyond improving the present but radically pushes forward into the future.", date: "Jun 10 – 12, 2016", image: "http://challengepost-s3-challengepost.netdna-ssl.com/photos/production/challenge_thumbnails/000/387/147/datas/medium.jpg", points: 0},

  {title: "Hack HPI", location: "August-Bebel-Str. 88, 14482 Potsdam, Germany", description: "Data is big. Really big. You just won't believe how vastly, hugely, mindbogglingly big it is. Thats why we are striving to develop new approaches to deal with that amount of information. One, perhaps the most notable, is machine learning. It doesn’t matter if you already wrote your own TensorFlow or have no real experience with machine learning besides flirting with Siri - we’d be happy to welcome you! For 24 hours of hacking we will bring students from Berlin, Brandenburg and the rest of the world together in the HPI School of Design Thinking, located on our campus. By providing world class sponsors (including workshops and access to their data and APIs), a great location and plenty of club mate to fuel your brain we will create a space for creativity, inspiring ideas and a passion for trying out new things.", date: "Jun 11 – 12, 2016", image: "http://challengepost-s3-challengepost.netdna-ssl.com/photos/production/challenge_thumbnails/000/385/645/datas/medium.jpg", points: 0},
  ])

  User.create([
    {}
    ])

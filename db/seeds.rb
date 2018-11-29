require 'rubygems'
require 'faker'
require 'httparty'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photographer.destroy_all
Image.destroy_all
# photographers
profiles = HTTParty.get('https://pixabay.com/api/?key=10795424-4f70630b2697df64766f08984&q=business+portrait&orientation=vertical')

puts "creating photographers"
profile_img = []
profiles["hits"].each do |profile|
  profile_img.push(profile["webformatURL"])
end

p1 = Photographer.create!(name:"Bryan Sargent", avg_rating:rand(4..5), about:"Capturing the Love!
Bryan Sargent is an award-winning wedding and engagement photographer from New York City. To Bryan, nothing compares to the privilege and fun of capturing the cherished memories of a couple on their wedding day! Bryan takes a journalistic approach to his wedding photography, letting the day flow naturally, all while capturing every wonderful moment by being a 'fly on the wall'. Bryan's couples have appeared in The New York Times, The New York Post, Buzzfeed, The Knot, Wedding Wire, PopSugar, A Practical Wedding, Carats & Cake, and various other wonderful wedding publications.", photo_video: "Digital Files, Film Photography, Online Proofing, Photo, Social Media Sharing", style:"Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern, Vintage",shoot_type: "Engagement", price:3000, phone:"(718) 496-5118", image: profile_img[0])

p2 = Photographer.create!(name: "Amma Rhea", avg_rating: rand(3..5),about: "A Visual Fairytale
Timeless photography for the romantic, joyful and playful couples. Amma Rhea Photo/'s philosophy is and always will be quite simple. Life is extraordinary! Without special effects, without staging- the tender moments shared are plentiful. The one you share your wedding day with, that special mother and son dance, the celebrations that shape your life, as well as the simple details that give it meaning. At Amma Rhea Photo we want you to look back and be able to really FEEL your memories from your wedding day.",photo_video: "Digital Files, Online Proofing, Photo, Printed Enlargements, Printed Proofs, Same-Day Edits, Second Shooter Available, Social Media Sharing, Wedding Albums",style: "Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern, Vintage", shoot_type: "Boudoir, Bridal Portraits, Day After Session, Engagement, Trash The Dress", price:2000, phone:"(802) 275-7605",image: profile_img[1])
p3 = Photographer.create!(name:"Arken Avan",avg_rating: rand(3..5),about: "Let's create your beautiful memories together
I was born in August 7, 1988 in former USSR, and grew up in a very young country called Kazakhstan. I live in NYC for past 7 years. I've been always surround by artistic and talented people, actors, movie directors and musicians. Photography been always my passion, i remember i used to take pictures on a small pocket camera since i was a kid. I studied a law, but used to shoot weddings on a weekends to raise some money to help my mother. I played baseball in a high school, but its became my dream to be a photographer in New York City. I've shot more than 100 classic and multicultural weddings.",photo_video: "Digital Files, Online Proofing, Printed Enlargements, Printed Proofs, Same-Day Edits, Second Shooter Available, Social Media Sharing, Wedding Albums", style: "Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern, Vintage", shoot_type: "Bridal Portraits, Engagement", price: 1000, phone: "(347) 681-9182",image: profile_img[2])
p4 = Photographer.create!(name:"Jolie",avg_rating:rand(3..5), about: "Capturing your best moments, forever.
As a self-taught photographer, I started with landscape photography more than 10 years ago and quickly developed into urban photography. Now I wish to go beyond and enter into the world of professional photography and therefore created Jolie Photography. I’ve always been dedicated to customer satisfaction. If you are happy, I’m happy. If ever there is an issue, I will do my best to ensure that you’re satisfied. I believe in quality over quantity and flexibility over strict guidelines. I will be guiding you through each step, from the first contact to the delivery of your gallery. I’m available for you at any time, should any questions or new ideas arise. Please do not hesitate to get in touch with me and I will provide you with all the information needed." , photo_video: "Digital Files, Online Proofing, Photo, Printed Enlargements, Second Shooter Available, Social Media Sharing, Wedding Albums", style:"Artistic, Classic", shoot_type: "Bridal Portraits, Day After Session, Engagement, Trash The Dress", price:800, address: "New York, NY", phone:"(646) 580-7675" , image: profile_img[3] )
p5 = Photographer.create!(name:"Casey Fatchett",avg_rating:rand(4..5), about: "I feel very awkward having my picture taken. Is that ironic? I've taken my own personal feelings about being photographed and translated them into how I treat my clients, making them feel comfortable and at ease. I want your wedding day to be as stress free as possible!", photo_video: "Digital Files, Film Photography, Online Proofing, Photo, Printed Enlargements, Printed Proofs, Second Shooter Available, Social Media Sharing, Wedding Albums", style:"Artistic, Documentary, Lifestyle, Modern", shoot_type: "Bridal Portraits, Day After Session, Engagement, Trash The Dress", price:4000, address:"New York, NY" , phone: "(212) 875-7599", image: profile_img[4] )
p6= Photographer.create!(name:"Kala Wilkins",avg_rating:rand(3..5), about: "Upstate NY and NYC Premier Wedding Photographer
With 8 years of experience photographing weddings and dozens of friends and family now planning their big days, it's safe to say Kala Wilkins Photography has a pretty good feel for what your day entails - it's a whirlwind! Our job is simple - to capture the natural happiness and excitement that comes with a wedding day, which includes a lot of candid photos and natural ear to ear smiles. We guarantee your personalities will shine through in our photographs so you will be able to re-live the day after it has come and gone. Weddings are expensive and you deserve beautiful photographs. We cater to any budget to meet your needs and expectations. Currently booking for all of 2019 and 2020 - reach out today for additional information!",  photo_video: "Digital Files, Online Proofing, Photo, Printed Enlargements, Printed Proofs, Same-Day Edits, Second Shooter Available, Social Media Sharing, Wedding Albums", style:"Artistic, Classic, Dramatic, Lifestyle, Modern, Vintage", shoot_type: "
Bridal Portraits, Day After Session, Engagement", price:800, address: "New York, NY", phone:"(585) 766-4069" , image: profile_img[5] )
p7 = Photographer.create!(name:"Matthew Sowa
",avg_rating:rand(4..5),about: "Capturing Art in Life
Matthew Sowa Photography in NYC is at the top of the ranks. His boutique style photography has caught the interest of not only couples looking for a local photographer, but people all over the country searching to bring along the best for their destination wedding. Providing uniqueness and style, along with highly creative and quality work. Matthew Sowa Photography is one of a kind. With his vast experience and unique perspective he can capture any event in his unobtrusive style. His organic, photojournalistic approach can set your day flow naturally, capturing every wonderful moment of the day”. His talented team is able to focus all of their energy to insure personal attention and individuality is achieved in every frame. -by zankyou.us", photo_video: "Digital Files, Online Proofing, Photo, Printed Enlargements, Second Shooter Available, Social Media Sharing, Wedding Albums",style:"Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern, Vintage", shoot_type:"Bridal Portraits, Day After Session, Engagement, Trash The Dress", price:4000, address:"265 canal Street # 206, New York, NY", phone:"(917) 488-1989" , image: profile_img[6] )
p8 = Photographer.create!(name:"Larisa Shorina",avg_rating:rand(3..5),about: "Love. Fun. Adventure.
I am in love with love and joyful wedding atmosphere, brides and grooms looking happy and excited, guests laughing, crying and dancing their feet off and hearts out! I love to capture that special bond two people have, the energy and electricity between them. I enjoy documenting an entire wedding day, and I think that the most ridiculous, emotional, silly, and sentimental moments are most valuable memories. Every single wedding detail makes me absolutely merry, and my goal is to photograph this day in a way that you fully experience it again when looking at your photos.", photo_video: "Digital Files, Online Proofing, Photo, Second Shooter Available, Social Media Sharing, Wedding Albums", style: "Artistic, Classic, Documentary, Lifestyle, Modern", shoot_type: "Bridal Portraits, Day After Session, Engagement", price:1000, address:"New York, NY", phone: "(917) 547-9668", image: profile_img[7] )
p9 = Photographer.create!(name:"Sydney",avg_rating:rand(4..5),about:"let's tell your love story
Hi, I'm Sydney and I want to photograph you just as you are. You can't beat capturing the reality of true love; laughter, kisses, tears, and the rush of all the feels. I embrace the art of documenting genuine or raw moments that can be missed in the blink of an eye. I'm the photographer who if asked or inspired WILL direct traffic around you and climb onto anything available to bring vision to reality. I call my clients my friends and i can't wait to spend time with them and my camera. I hail from San Francisco, live in New York, and will go on an adventure with you absolutely anywhere your heart desires. Please don't hesitate to connect; I would be honored to get to know you and hear your love story!",  photo_video: "Digital Files, Online Proofing, Photo, Second Shooter Available, Social Media Sharing, Wedding Albums", style:"Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern", shoot_type: "Bridal Portraits, Day After Session, Engagement, Trash The Dress", price:800, address:"New York, NY" , phone:"(415) 596-3381" , image: profile_img[8] )
p10 = Photographer.create!(name:"Eivan",avg_rating:rand(3..5), about: "Professional Storytellers of Weddings. ™
Every wedding day moment locks away thousands of untold emotions, thoughts, and memories that become priceless over time... Your local Eivan's Manhattan team will work with you to guarantee that your wedding photos + video capture your unique style & vision while staying within or below budget.", photo_video: "Digital Files, Online Proofing, Photo, Printed Enlargements, Second Shooter Available, Social Media Sharing, Wedding Albums", style:"Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern, Vintage", shoot_type: "Bridal Portraits, Engagement", price: 1000, address: "New York, NY", phone: "(708) 263-4349", image: profile_img[9] )
puts "done with photographers"
p11= Photographer.create!(name:"Noelle Andrews",avg_rating: 5, about:"Elegant. Romantic. Sophisticated.
We're a boutique Photography + Design studio based out of New York City and Philadelphia with a team of incredible artists specializing in photography, cinematography, and design. With over 10 years of experience, our reputation is built on honesty, attentiveness to every couple that comes through our doors, and an overall fun and personable approach to weddings. Combine that with stunning images displayed in sophisticated albums, and we consider it the perfect marriage of photography and design. This combination of beautiful images, cinematic films and high-end products is truly what makes the ultimate Femina wedding experience. *We proudly serve the Tri-State area and are available for Destination Weddings abroad", photo_video: "Digital Files, Online Proofing, Photo, Printed Enlargements, Printed Proofs, Second Shooter Available, Social Media Sharing, Wedding Albums", style: "Artistic, Classic, Documentary, Dramatic, Lifestyle, Modern", shoot_type: "Bridal Portraits, Day After Session, Engagement, Trash The Dress",price: 2600, address: "New York, NY", phone: "(631) 793-5521", image: profile_img[10])
#images
p1_imgs = ["https://media-api.xogrp.com/images/ef894f42-d75f-4495-8ddc-4f24bc3f628f~rs_720.480", "https://media-api.xogrp.com/images/5a7d43a1-2780-4017-8d8a-c9fa9110a368~rs_320.480","https://media-api.xogrp.com/images/073f74a8-8fa9-4b0f-aaab-c85447faea15~rs_319.480","https://media-api.xogrp.com/images/4285c29e-832c-469c-af80-2196b61518d1~rs_720.480","https://media-api.xogrp.com/images/b3639d3b-d068-4608-accf-a45871d4054c~rs_720.480","https://media-api.xogrp.com/images/abd25834-7903-4ff2-8935-fafaca26ef29~rs_720.480","https://media-api.xogrp.com/images/8c5bb088-b3b2-41ee-ba69-e08bc51e007c~rs_720.480","https://media-api.xogrp.com/images/99212a4e-aa50-4ea8-8c8e-a5b754b820dd~rs_720.480"]
p2_imgs=["https://media-api.xogrp.com/images/4656dba5-5e81-47d8-aac3-accfe32cf657~rs_720.480", "https://media-api.xogrp.com/images/3acf182f-6a39-4328-8bf6-c3f1a6b1d7c2~rs_720.480", "https://media-api.xogrp.com/images/3ee5615d-1d09-48de-97c0-4444ded1c94a~rs_720.480","https://media-api.xogrp.com/images/0128d568-bbe1-4f8b-bdef-5a9f57221f94~rs_720.480","https://media-api.xogrp.com/images/5af7a7e5-2964-4ff3-bcc0-d893cec0a86b~rs_320.480","https://media-api.xogrp.com/images/93d4ca46-614d-417c-8a66-45e73450c43f~rs_720.480","https://media-api.xogrp.com/images/8ae3d23c-b17f-4a59-b3bc-0ec680a14c30~rs_320.480"]
p3_imgs=["https://media-api.xogrp.com/images/69752662-aa3d-495f-b0f3-0986d7c6e611~rs_720.480","https://media-api.xogrp.com/images/66fdcb41-7ff2-4b47-a5d0-47d676ba4adc~rs_720.480","https://media-api.xogrp.com/images/48214dc0-68b5-48cc-a31d-9ca30a5b4619~rs_320.480","https://media-api.xogrp.com/images/4ad1de55-e053-4d6e-9fc6-076a246dc5d9~rs_720.480","https://media-api.xogrp.com/images/08e09ebc-186a-4317-a5f8-28bcf7148915~rs_720.480","https://media-api.xogrp.com/images/cc4ab61f-c2f1-4cb0-ba71-98ea4d018c07~rs_720.480","https://media-api.xogrp.com/images/9dbc677e-996d-4c9c-9d1d-d3bcbcff377a~rs_320.480","https://media-api.xogrp.com/images/8536ada8-5f0c-4a49-9250-3adfdd8edb6e~rs_720.480"]
p4_imgs=["https://media-api.xogrp.com/images/e3647a52-19b1-4a35-a7a1-ce547c498ec5~rs_720.480","https://media-api.xogrp.com/images/ac8a2eca-8b69-4410-a431-769eb141b489~rs_720.480","https://media-api.xogrp.com/images/193f10b2-dd5e-46c7-adb3-c369cb5b76f2~rs_320.480","https://media-api.xogrp.com/images/4ef43ae3-988d-4bae-a5fb-c2f73c816f21~rs_720.480","https://media-api.xogrp.com/images/b5550335-acb9-4efa-8655-173957111b1f~rs_720.480","https://media-api.xogrp.com/images/f8985b18-d4dd-41b6-8a63-aec69ad80d35~rs_720.480"]
p5_imgs=["https://media-api.xogrp.com/images/4d113bbd-6ff7-4c9a-af75-fe9cbfa5850a~rs_720.480","https://media-api.xogrp.com/images/7c927a7c-0e19-437a-9a86-4aab0637aa9e~rs_720.480","https://media-api.xogrp.com/images/8d7ab28d-3e8a-4385-8938-ebff33dce656~rs_720.480","https://media-api.xogrp.com/images/81453b45-23e5-4b21-9c45-d83acf2d572d~rs_320.480","https://media-api.xogrp.com/images/44e0720e-e058-426c-99b0-b1710f97370e~rs_720.480","https://media-api.xogrp.com/images/e32817da-f616-4715-a5c1-a9e9100dcc94~rs_720.480","https://media-api.xogrp.com/images/3f37622b-4883-47c2-aa7d-56cc86e7a789~rs_320.480","https://media-api.xogrp.com/images/56333682-f8d7-4c72-a072-6e3ce5f2ce6b~rs_720.480","https://media-api.xogrp.com/images/559f3265-aaaf-4716-be70-631f2487c18b~rs_320.480","https://media-api.xogrp.com/images/1aadf63c-602a-4e86-8e95-70e17d5bcebb~rs_720.480","https://media-api.xogrp.com/images/ff547182-8819-4af3-8924-e4fa00b10013~rs_320.480"]
p6_imgs= ["https://media-api.xogrp.com/images/7a272a10-f72d-4560-90b4-3dfe9f4afa48~rs_720.480","https://media-api.xogrp.com/images/02c48f0c-452e-4a43-accd-df5bf537c198~rs_720.480","https://media-api.xogrp.com/images/74f2ae8a-91a3-4ae2-bc75-67b55b6603d9~rs_720.480","https://media-api.xogrp.com/images/a0785162-0322-4158-bd9b-65e41bab1d4a~rs_348.480","https://media-api.xogrp.com/images/5567b41d-b2a9-45de-b30f-f09886232b44~rs_366.480","https://media-api.xogrp.com/images/ef8e9799-9530-4e3e-a484-bafb293f69ca~rs_320.480","https://media-api.xogrp.com/images/178327fa-babe-4132-bb5e-503389f5d333~rs_720.480","https://media-api.xogrp.com/images/13663858-69a7-4fb6-b9eb-00efde467a03~rs_720.480"]
p7_imgs=
["https://media-api.xogrp.com/images/5bf05412-be48-4f8e-a549-203796946d1e~rs_720.480", "https://media-api.xogrp.com/images/63f9b520-c9a8-48ed-b140-dfb8403d4f29~rs_720.480","https://media-api.xogrp.com/images/9849dc80-89f2-4785-a519-621662d260f9~rs_720.480","https://media-api.xogrp.com/images/6ece9341-ea7f-47a7-9b60-b4cd38c2a551~rs_720.480","https://media-api.xogrp.com/images/a3670944-c5ba-4a5a-87d4-ae771a4011e0~rs_720.480", "https://media-api.xogrp.com/images/bee5e763-1158-499c-8315-6664ea29835a~rs_720.480","https://media-api.xogrp.com/images/9e530d96-d1d2-4f73-90a7-384f9c5aaad5~rs_720.480","https://media-api.xogrp.com/images/10fed691-fd11-4733-91cd-a544715774f1~rs_720.480","https://media-api.xogrp.com/images/65c15f7d-5a20-47f2-9f8e-936db3f2e168~rs_720.480","https://media-api.xogrp.com/images/e7435ddf-ea59-4518-ace3-1a4ad782c449~rs_720.480","https://media-api.xogrp.com/images/34ff0f43-2d10-4f9c-bb2c-ab1412e5fa60~rs_720.480","https://media-api.xogrp.com/images/292f8f21-1726-434d-bb46-5c9bd704c111~rs_720.480","https://media-api.xogrp.com/images/f8e50eda-239e-4d77-9c6b-f7f9abb2f931~rs_720.480"]
p8_imgs= [
  "https://media-api.xogrp.com/images/989bc6dc-eddd-4d7f-8970-b84ea6386917~rs_720.480","https://media-api.xogrp.com/images/1674089f-83b0-4974-acb3-48b6a5a8454d~rs_320.480","https://media-api.xogrp.com/images/b21ee5a3-1f0f-4176-b42b-512618d84173~rs_720.480","https://media-api.xogrp.com/images/19b1812a-5a8d-46bb-bba3-36423aca32a9~rs_320.480","https://media-api.xogrp.com/images/7719491e-5144-4afb-9036-a105ee18b917~rs_320.480","https://media-api.xogrp.com/images/f4d999f2-595d-486c-99b9-b452788e63a0~rs_720.480","https://media-api.xogrp.com/images/5f74bdd3-2a08-492b-8e00-b617c33051bd~rs_720.480","https://media-api.xogrp.com/images/9cc5b3f2-ab55-4a52-abd0-16395ef69342~rs_720.480","https://media-api.xogrp.com/images/54a5e917-37a5-432e-87de-368312db8cf6~rs_720.480","https://media-api.xogrp.com/images/bc516460-e66d-49a7-b3bb-6d66bae547ce~rs_720.480","https://media-api.xogrp.com/images/e92d8866-f31c-439b-83e6-68fb24f7ddff~rs_720.480","https://media-api.xogrp.com/images/0fc62a0e-2289-4984-95e7-69a54a48fe40~rs_320.480","https://media-api.xogrp.com/images/bff672b1-2bc0-4c95-a79f-479f5a2616c1~rs_720.480","https://media-api.xogrp.com/images/fb15d746-ebca-49c7-8ba1-6cd7795756e1~rs_320.480","https://media-api.xogrp.com/images/338e6218-c058-4263-87c1-12181785c6af~rs_720.480","https://media-api.xogrp.com/images/08de5141-9a7e-4354-a993-28f70cb1e97b~rs_720.480"]
p9_imgs=[
  "https://media-api.xogrp.com/images/0fb6eb58-f4eb-4a51-8ccd-8a37bcc8bbc0~rs_320.480","https://media-api.xogrp.com/images/2c36b904-f885-4a23-98bd-f5289fb3db7e~rs_320.480","https://media-api.xogrp.com/images/9fc9ae46-1551-4b0d-91ee-441f6c3d593d~rs_320.480","https://media-api.xogrp.com/images/385e3407-bfc8-4b40-94e3-ac9d918b263b~rs_720.480","https://media-api.xogrp.com/images/0763f5e0-dd50-4c28-abbf-3b01584e216c~rs_313.480","https://media-api.xogrp.com/images/7cfd8745-8085-47a2-80a9-43f72e74755d~rs_320.480","https://media-api.xogrp.com/images/d732a8c4-ef48-4a57-8ec9-0713bf70813a~rs_320.480","https://media-api.xogrp.com/images/c10bdfc8-70cc-4dca-aa8c-ce61d4b051eb~rs_320.480","https://media-api.xogrp.com/images/b8f7f8de-4959-44f9-a802-d05f6077eaa4~rs_720.480","https://media-api.xogrp.com/images/8bae9300-9423-444d-a64d-587beb43c930~rs_720.480","https://media-api.xogrp.com/images/ed349c06-3098-44d4-a3ce-90ac27e674d6~rs_720.480"
]
p10_imgs=["https://media-api.xogrp.com/images/b96837f0-6208-4cf3-bb12-8af80828e1f3~rs_720.480","https://media-api.xogrp.com/images/3ce8668c-6393-4f46-80ac-6a71b432ed63~rs_720.480","https://media-api.xogrp.com/images/51b9e2f5-9fa7-4324-a1f8-83fc175a848c~rs_720.480","https://media-api.xogrp.com/images/6e932883-ecb7-418f-87d1-df95458913af~rs_720.480","https://media-api.xogrp.com/images/a184dc5d-9932-4ad5-9e32-65de21aeb93e~rs_720.480","https://media-api.xogrp.com/images/9295c9b7-930b-4acf-9ec1-2bc29b683024~rs_320.480","https://media-api.xogrp.com/images/6d9de270-7050-451c-b49e-6e3f9e07d679~rs_720.480","https://media-api.xogrp.com/images/0eb6d087-25a2-429d-8279-0b3d3bcabf73~rs_719.480","https://media-api.xogrp.com/images/ff70a13e-c8ba-473c-a229-10d7cb8b468d~rs_719.480","https://media-api.xogrp.com/images/d95940b7-685c-4628-b7fc-3589f2a480ef~rs_719.480","https://media-api.xogrp.com/images/2ca25a62-eee1-4ada-8522-48ef24a48589~rs_320.480",""]
p11_imgs = ["https://media-api.xogrp.com/images/ddd896fd-9f81-4b6a-9b5b-0170ec6f2c0a~rs_720.480","https://media-api.xogrp.com/images/23389e7f-ba33-44c7-8fbc-a8f1764fd717~rs_720.480","https://media-api.xogrp.com/images/31390c3b-8e34-4ac6-877a-7a0f476fd507~rs_720.480","https://media-api.xogrp.com/images/85c637aa-b0cd-46a5-a098-61c27f7bee71~rs_720.480","https://media-api.xogrp.com/images/bdd3e5a6-a7d6-4c20-93fa-7b22081ca9fd~rs_720.480","https://media-api.xogrp.com/images/9db6d3c2-ab27-4f41-b5db-441e143cdc04~rs_320.480","https://media-api.xogrp.com/images/a7e43091-ace2-442d-9f1c-ee8320b654c2~rs_307.480","https://media-api.xogrp.com/images/1f7a098b-fc56-4718-b1a7-12bda6d1a061~rs_720.480","https://media-api.xogrp.com/images/ded581af-c570-4854-8d11-a5abca8ffc8e~rs_720.480","https://media-api.xogrp.com/images/64c65f48-c96a-40a3-b6f4-db91035ecc61~rs_720.480","https://media-api.xogrp.com/images/74835c37-ff18-4233-8ec3-de78720390eb~rs_720.480","https://media-api.xogrp.com/images/2adfda0b-3aeb-448a-b64b-9eaeaa9d4f24~rs_720.480","https://media-api.xogrp.com/images/77594369-7826-4294-b772-3a16d5c5df7d~rs_720.480","https://media-api.xogrp.com/images/5ca4192e-c3ae-4732-b051-8ba62c3a917b~rs_720.480","https://media-api.xogrp.com/images/8feeaf17-03b8-4c36-b6bb-a80751fd98ad~rs_720.480","https://media-api.xogrp.com/images/2045c842-eae1-44bb-a4e0-4f97b7e32705~rs_720.480"]
puts "creating images"
  i =0
  p1_imgs.length.times do
    Image.create!(image_url: p1_imgs[i], photographer_id: p1.id)
    i += 1
  end
  i =0
  p2_imgs.length.times do
    Image.create!(image_url: p2_imgs[i], photographer_id: p2.id)
    i += 1
  end
  i =0
  p3_imgs.length.times do
    Image.create!(image_url: p3_imgs[i], photographer_id: p3.id)
    i += 1
  end
  i =0
  p4_imgs.length.times do
    Image.create!(image_url: p4_imgs[i], photographer_id: p4.id)
    i += 1
  end
  i =0
  p5_imgs.length.times do
    Image.create!(image_url: p5_imgs[i], photographer_id: p5.id)
    i += 1
  end
  i =0
  p6_imgs.length.times do
    Image.create!(image_url: p6_imgs[i], photographer_id: p6.id)
    i += 1
  end
  i =0
  p7_imgs.length.times do
    Image.create!(image_url: p7_imgs[i], photographer_id: p7.id)
    i += 1
  end
  i =0
  p8_imgs.length.times do
    Image.create!(image_url: p8_imgs[i], photographer_id: p8.id)
    i += 1
  end
  i =0
  p9_imgs.length.times do
    Image.create!(image_url: p9_imgs[i], photographer_id: p9.id)
    i += 1
  end
  i =0
  p10_imgs.length.times do
    Image.create!(image_url: p10_imgs[i], photographer_id: p10.id)
    i += 1
  end
  i =0
  p11_imgs.length.times do
    Image.create!(image_url: p11_imgs[i], photographer_id: p11.id)
    i += 1
  end

puts "done with images"

########################      Order #######################


Order.new(user_id: User.first.id, photographer_id: Photographer.first.id, date: Date.new(
rand(1950..2010), rand(1..12), rand(1..29)))

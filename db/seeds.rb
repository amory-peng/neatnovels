# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# harry potter
user_array = [];
50.times do
  new_user = {
    username: Faker::Superhero.name,
    password: 'password'
  }
  user_array << new_user
end
User.create(user_array)

User.create(username: 'jimbo', password: 'password');
Bookshelf.create(user_id: 1, name: "read", protect: true)
Bookshelf.create(user_id: 1, name: "currently reading", protect: true)
Bookshelf.create(user_id: 1, name: "to read", protect: true)

Shelving.create(bookshelf_id: 1, book_id: 1)



# bookArray = [];
# count = 0
# while bookArray.length < 100
#   newBook = {
#     title: "title#{count}",
#     author: "author#{count}",
#     description: Faker::ChuckNorris.fact,
#     year: rand(400) + 1610
#   }
#   count += 1
#   bookArray << newBook
#
# end
#
# Book.create(bookArray)

#dickens

#fifty shades
Book.create([{title: "Fifty Shades of Grey", author: "James", description: '
 MORE THAN 100 MILLION COPIES SOLD WORLD WIDE.

When literature student Anastasia Steele interviews successful entrepreneur Christian Grey, she finds him very attractive and deeply intimidating. Convinced that their meeting went badly, she tries to put him out of her mind – until he turns up at the store where she works part-time, and invites her out.

Unworldly and innocent, Ana is shocked to find she wants this man. And, when he warns her to keep her distance, it only makes her want him more.

As they embark on a passionate love affair, Ana discovers more about her own desires, as well as the dark secrets Christian keeps hidden away from public view ...

Motion Picture Artwork © 2014 Universal Studios. All Rights Reserved.

', image_url: "http://books.google.com/books/content?id=i396BwAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE726LYhsQLBrl9yAwQ9SrFGVTHwTnZsjOadNLlmFE3ELTFityKGkXqCkZC6oBPzqzxsjBhU4wlWyl-1_ojdqu-pTHnOgV0nL3aXqosc4NL6KuB3__r0L0w7XhxJDcF3ZarfijVfI&source=gbs_api", year: "2015"},{title: "Fifty Shades Darker", author: "E. L. James", description: 'Daunted by the dark secrets of the tormented young entrepreneur Christian Grey, Ana Steele has broken off their relationship to start a new career with a US publishing house. But desire for Grey still dominates her every waking thought, and when he proposes a new arrangement, she cannot resist.', image_url: "http://books.google.com/books/content?id=H4sKLwEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72EiJ8wITXL4grvRykud3tvJKHPhEkA9gCTc7TkJnSkOn7kLqbWPPIPWnNwPuu7ksO3y6hiGD3G3qEqEqgJ0R8dr0ykSnNqDEl5pjFq5Qbri-IU58itQXfKsCeblouMgJNA-9cy&source=gbs_api", year: "2012"},{title: "Fifty Shades Freed", author: "E. L. James", description: '
MORE THAN 100 MILLION COPIES SOLD WORLDWIDE
FIFTY SHADES OF GREY IS NOW A MAJOR MOTION PICTURE

When unworldly student Anastasia Steele first encountered the driven and dazzling young entrepreneur Christian Grey it sparked a sensual affair that changed both of their lives irrevocably. Shocked, intrigued, and, ultimately, repelled by Christian\'s singular erotic tastes, Ana demands a deeper commitment. Determined to keep her, Christian agrees.

Now, Ana and Christian have it all--love, passion, intimacy, wealth, and a world of possibilities for their future. But Ana knows that loving her Fifty Shades will not be easy, and that being together will pose challenges that neither of them would anticipate. Ana must somehow learn to share Christian\'s opulent lifestyle without sacrificing her own identity. And Christian must overcome his compulsion to control as he wrestles with the demons of a tormented past.

Just when it seems that their strength together will eclipse any obstacle, misfortune, malice, and fate conspire to make Ana\'s deepest fears turn to reality.

This book is intended for mature audiences.

', image_url: "http://books.google.com/books/content?id=bfZrvjLVJgIC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE701tDg3hEdy8RkrPP9rrbFoTD-auBx7GF_SjlXtEgoyLbzrOtrW2YiVL7ZeqJwk8RDd6pNVoFatyiH84ZewTHg_I2jX60xOjlQRNBS0ihoFVtI1ybKEdocZTgDDHJi3eg-FrcBD&source=gbs_api", year: "2012"}])
#dickesn
Book.create([{title: "Great Expectations", author: "Charles Dickens", description: 'One of the finest novels by iconic British author Charles Dickens, this Victorian tale follows the good-natured orphan Pip as he makes his way through life. As a boy, Pip crosses paths with a convict named Magwitch, a man who will heavily influence Pip’s adulthood. Meanwhile, the earnest young man falls for the beautiful Estella, the adoptive daughter of the affluent and eccentric Miss Havisham. Widely considered to be Dickens\'s last great book, the story is steeped in romance and features the writer\'s familiar themes of crime, punishment, and societal struggle.', image_url: "http://books.google.com/books/content?id=fhUXAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72yyFiKIiD7V5bQjGoHfRXHsl9RKaiihDkygn6orSUJZezAGNgQ9a75PECqWjY8IGlpAsIJza5fzlqjYZqCeggFIQQ9SHpLHPDBdEKNm-MaFxWJu_U2wTHY8DPYtSDzZWscnirn&source=gbs_api", year: "1881"},{title: "Tales from Dickens", author: "Charles Dickens", description: 'Unlike some other reproductions of classic texts (1) We have not used OCR(Optical Character Recognition), as this leads to bad quality books with introduced typos. (2) In books where there are images such as portraits, maps, sketches etc We have endeavoured to keep the quality of these images, so they represent accurately the original artefact. Although occasionally there may be certain imperfections with these old texts, we feel they deserve to be made available for future generations to enjoy.', image_url: "http://books.google.com/books/content?id=AY3_vQAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71s_fmxWapQEp6jMCGBa2KbHSXncFF1t5W7VZHN771qdvhBYMylTcF6MpNcPQThFrjEtbeXjW1GzOd20Lul-qUttr-tDVaCjMtTCB5mQ-6ELX6Tvo6LbiC4lDU-SvB0njpVy-5r&source=gbs_api", year: "2016"},{title: "The Complete Works of Charles Dickens", author: "Charles Dickens", description: 'It is impossible to overstate the importance of British novelist CHARLES DICKENS (1812-1870) not only to literature in the English language, but to Western civilization on the whole. He is arguably the first fiction writer to have become an international celebrity. He popularized episodic fiction and the cliffhanger, which had a profound influence on the development of film and television. He is entirely responsible for the popular image of Victorian London that still lingers today, and his characters-from Oliver Twist to Ebenezer Scrooge, from Miss Havisham to Uriah Heep-have become not merely iconic, but mythic. But it was his stirring portraits of ordinary people-not the upper classes or the aristocracy-and his fervent cries for social, moral, and legal justice for the working poor, and in particular for poor children, in the grim early decades of the Industrial Revolution that powerfully impacted social concerns well into the 20th century. Without Charles Dickens, we may never have seen the likes of Sherlock Holmes, Upton Sinclair, or even Bob Dylan. Here, in 30 beautiful volumes-complete with all the original illustrations-is every published word written by one of the most important writers ever. The essential collector\'s set will delight anyone who cherishes English literature...and who takes pleasure in constantly rediscovering its joys. This volume contains Sketches by Boz, a collection of interconnected short stories first published between 1836 and 1839, with illustrations by famous British caricaturist George Cruikshank. It features some of Dickens\'s earliest work, and was so popular that the author himself was cheerfully known as "Boz" to his readers for the rest of his working life.', image_url: "http://books.google.com/books/content?id=XA-J1XhYv6gC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE727M2FlGRY1nQbcLwsyq0j9BQPWXfw8QGEVI6x7NjFIDkCkylttrGkAAA6bJpdFCboF9xRPAupGBDLg4ZYMsg6gNiEYsaqkZ8jCHCImU7z226kaN7Pia_xa8Q26r_t3GTRuIjYq&source=gbs_api", year: "2009"},{title: "The British Academy/The Pilgrim Edition of the Letters of Charles Dickens: Volume 12: 1868-1870", author: "Charles Dickens", description: 'This final volume presents 1,151 letters, many previously unpublished or published only in part, for the years 1868 to Dickens\'s death from a stroke on 9 June 1870; also included is an Addenda of 235 letters belonging to earlier volumes, discovered since the publication of the first such collection in Volume 7, and a Cumulative Index of Correspondents for the entire edition. The volume begins with the final four months of Dickens\'s American tour of 75 readings, which had been conspicuously successful throughout, despite the appalling weather and his sufferings from "American" catarrh. The tour culminated on 18 April 1868 when the American Press held a dinner in his honour in New York. In July he rented Windsor Lodge, Peckham for Ellen Ternan, where she remained until after his death; he was to give two more English reading tours before his collapse at Preston on 22 April 1869. In early January 1869 he was elected President of the Birmingham and Midland Institute; and a dinner in his honour was given in St George\'s Hall, Liverpool. Between January and March 1870 he gave a series of Farewell readings in London, and on 31 March Edwin Drood, No. 1 was published, illustrated by Luke Fildes; it continued monthly until 31 August. Of the friends who died during this period, much the closest were the painter Daniel Maclise, to whom Dickens paid especial tribute at the Royal Academy Banquet of 30 April 1870; Mark Lemon, who died only 18 days before Dickens himself, and with whom he had a brief reconciliation after their bitter quarrel in 1858; and Chauncy Hare Townshend, who left him £2,000 to publish, as his Literary Executor, Religious Opinions of the Late Chauncy Hare Townshend, which appeared in November 1870.', image_url: "http://books.google.com/books/content?id=hpJSVNy7jx8C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE7305kS8ltO2_--AniCwIixqLfkblzRgWYtzRaA8QVfpOwcdADYfQgLfYoReLEl3gjBkGRkc1SKjU7pARqbyligDSrSEXm0U8qtKe0m3AMurs08w3gGeaER_vB2ZpA20PXwIjgrb&source=gbs_api", year: "2002"},{title: "The Old Curiosity Shop", author: "Charles Dickens", description: 'In this tale, first published serially in 1841 and 1842, Dickens follows Nell Trent, an angelic and unfailingly virtuous girl of "nearly fourteen" and her grandfather as they navigate a world populated by villains, criminals and ne\'er-do-wells. The public response at the time equalled modern reactions to the Harry Potter books, the audience rapt to learn of Nell\'s fate. Does she live a life of comfort, of which her grandfather dreams? Or does fate have something less noble in store for poor Nell?

This is a free digital copy of a book that has been carefully scanned by Google as part of a project to make the world\'s books discoverable online. To make this print edition available as an ebook, we have extracted the text using Optical Character Recognition (OCR) technology and submitted it to a review process to ensure its accuracy and legibility across different screen sizes and devices. Google is proud to partner with libraries to make this book available to readers everywhere.', image_url: "http://books.google.com/books/content?id=2dUNAAAAQAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73XXfoxaloW-oc3l5lGKAFoRb4P3Al8ODLgSSiHel-dzsxjQX3aCc67uPAA2F9V2Gpq0mWDvVhWTsWEyu4zQaXrW6hBjxRReGdj2A9qBR_wFmfncOA0LMwWyDA101J7aouRgGdg&source=gbs_api", year: "1841"},{title: "Charles Dickens's A Tale of Two Cities", author: "Polly Alison Morrice", description: 'Plot synopsis of this classic is made meaningful with analysis and quotes by noted literary critics, summaries of the work\'s main themes and characters, a sketch of the author\'s life and times, a bibliography, suggested test questions, and ideas for essays and term papers.', image_url: "http://books.google.com/books/content?id=ZKn5Is4QfngC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72fvn1Ru_13kULhjpdrbIKNUMVxSVB6op3-UgjgeqC9ASFjdbgNx9sGcA39BBL61FQbre9WVE7XKHNYhESoiRpAIBMisu68cnqdq7a3HMx0KPexwTArhji2JZ9kDie9LoAHz4t4&source=gbs_api", year: "1984"},{title: "The Pilgrim Edition of the Letters of Charles Dickens: Volume 6: 1850-1852", author: "Charles Dickens", description: 'This volume presents 1,592 letters, 668 of them previously unpublished, for the years 1850 to 1852. This was a time of great activity for Dickens, who completed the serial publication of David Copperfield, began work on Bleak House, successfully established the weekly Household Words (in which his own serial A Child\'s History of England appeared), and wrote about 100 articles and stories for the journal, including many uncollected pieces. In April 1851 he and Sir Edward Bulwer Lytton founded the Guild of Literature and Art, a scheme to help writers and artists. He also suffered a number of personal blows: the deaths of his father, his baby daughter Dora, and two of his close friends, Richard Watson and Alfred D\'Orsay; there was also anxiety over the illness of his wife Catherine.', image_url: "http://books.google.com/books/content?id=vBB4ywGx_IoC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72s2ACVG916iM5sbxXTfiruSi1om0gtKQogx5R-YdnXPGBSz8KN7_IxqDAUXf0zeydU78HxzABBicVdcnymbN0OU7pn0jmUBhaUP59ls_XqLlBR8InwvL3tEzrs7HXGHTvMeVsf&source=gbs_api", year: "1988"}]);

#some cs stuff
Book.create([{title: "Cracking the Coding Interview", author: "Gayle Laakmann McDowell", description: 'Now in the 5th edition, Cracking the Coding Interview gives you the interview preparation you need to get the top software developer jobs. This book provides:
150 Programming Interview Questions and Solutions: From binary trees to binary search, this list of 150 questions includes the most common and most useful questions in data structures, algorithms, and knowledge based questions.
5 Algorithm Approaches: Stop being blind-sided by tough algorithm questions, and learn these five approaches to tackle the trickiest problems.
Behind the Scenes of the interview processes at Google, Amazon, Microsoft, Facebook, Yahoo, and Apple: Learn what really goes on during your interview day and how decisions get made.
Ten Mistakes Candidates Make -- And How to Avoid Them: Don\'t lose your dream job by making these common mistakes. Learn what many candidates do wrong, and how to avoid these issues.
Steps to Prepare for Behavioral and Technical Questions: Stop meandering through an endless set of questions, while missing some of the most important preparation techniques. Follow these steps to more thoroughly prepare in less time.
', image_url: "http://books.google.com/books/content?id=anhAXwAACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73rZUlbpsyePV9QpT2rzR8Y0t_DS8Hl8UE2PdMLDEF7kIhKizdiUC2873ks2c7yyxnk3LB7K-H7ohBIX3dYTSs1_-5UFZ6k3ljCHb0A7PO-SnHulsx6b9vxjlIyu_pSY4bI4_Wg&source=gbs_api", year: "2011"},{title: "Data Structures and Algorithms", author: "Shi Kuo Chang", description: 'This is an excellent, up-to-date and easy-to-use text on data structures and algorithms that is intended for undergraduates in computer science and information science. The thirteen chapters, written by an international group of experienced teachers, cover the fundamental concepts of algorithms and most of the important data structures as well as the concept of interface design. The book contains many examples and diagrams. Whenever appropriate, program codes are included to facilitate learning.This book is supported by an international group of authors who are experts on data structures and algorithms, through its website at http: //www.cs.pitt.edu/jung/GrowingBook/, so that both teachers and students can benefit from their expertise', image_url: "http://books.google.com/books/content?id=1lCHYj5eV-EC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE713sxDVvEWzkWlqwPD0oPn2kaVqaWagTa4x8EOQjeVMaPvV0VT2q-FQ-7k_Wyhgz1UEA5nYu-i0pfmg7xybdGeLhlAwr-6U1etY8skeF3afiS-gKUDELG-4v1B32JaSqEaYHGbP&source=gbs_api", year: "2003"}]);
#magic school bus

Book.create([{title: "The Magic School Bus and the Electric Field Trip", author: "Joanna Cole", description: 'To celebrate its 20th anniversary, Scholastic is re-releasing the ten original Magic School Bus titles in paperback. With updated scientific information, the bestselling science series ever is back!

Small enough to squeeze through power lines, Ms. Frizzle\'s class learns how electric current travels through the town, lights up a light bulb, heats up a toaster, and runs an electric motor. Fans of the Magic School Bus won\'t be left behind by this simple and informative introduction to the generation and distribution of electricity.', image_url: "http://books.google.com/books/content?id=1ZZXDqAFfM4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71pXEOAI4bJCkRyxPEov2xwhj_-PQ3FV0y8DX6GXS90c-9z-JclhMdk0IR24-8zvPUDY0U_Bem1K98ggMz3VGRdqupWviJpEuN-OweG2eRetlUvJcFhFljeTg-bJXaDKaoN74Hv&source=gbs_api", year: "1997"},{title: "The Magic School Bus at the Waterworks", author: "Joanna Cole", description: 'To celebrate its 20th anniversary, Scholastic is re-releasing the ten original Magic School Bus titles in paperback. With updated scientific information, the bestselling science series ever is back!

The classic title that started the award-winning series! Join Ms. Frizzle and her students as they follow the trail of water, from its sky-high source to the school bathroom sink on this wet and wild fieldtrip. After parking the school bus on a cloud and shrinking to raindrop size, Ms. Frizzle\'s class gets to see the waterworks from the water\'s point of view.', image_url: "http://books.google.com/books/content?id=cY61ffuA9z8C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71j_3oI1ZDw-6yf_UK3haA8D26a6fuFrWqeiF83PBWrV3ZzY5SIDUE-VjLr7eZj4QOoR3QVnA8OlW917Mg6yH7p7pX80ondBcLGqSS6AjkrSm4TzcAEnL-GpIffWnJEaclsMWM1&source=gbs_api", year: "1986"},{title: "The Magic School Bus in the Time of the Dinosaurs", author: "Joanna Cole", description: 'To celebrate its 20th anniversary, Scholastic is re-releasing the ten original Magic School Bus titles in paperback. With updated scientific information, the bestselling science series ever is back!

The classroom is decorated as Dinosaur Land, but Ms. Frizzle-inspired by an archeological dig-craves a more authentic experience. The Magic School Bus turns into a time machine and transports the class back millions of years to an adventure where they learn about dinosaurs, their habitats and diets, and even a Maiasaura nesting ground.', image_url: "http://books.google.com/books/content?id=pBwOYGZMgjsC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73Fm5UX6QKGy0LRvQkPK4eVMMwZ2TtoN6kNTHwnzlJg2_SIj5B6OCNnX8UfeUpDsj-GgzT8_Al0mHRoM-mmAYrFAsZsYlsSIy8juo7lnsoSXOkGbDXsoV6FJwhIqpDoGCGKXLK9&source=gbs_api", year: "1995"},{title: "The Magic School Bus and the Climate Challenge", author: "Joanna Cole", description: 'Like it or not, global warming is a hot topic, and it will affect the younger generation the most. So why not turn to the teacher kids like the most, Ms. Frizzle! Only the Friz can boil all the hoopla down to the scientific facts in a fun and informative way.
With trademark simplicity and wit, Joanna Cole explains why the earth is getting warmer, and Bruce Degen\'s bright, action-filled illustrations make the science easy to understand and fun to learn. This team brings a new, improved understanding to climate change, engaging kids and empowering all. Teachers will cheer!

Kids already love the Magic School Bus, and the love to do what\'s right by the planet. At last, a way to teach the curriculum and make an impact!

A note from Joanna Cole:

While I was writing The Magic School Bus and the Climate Change Challenge, all I could think about was the kids who will read it. I wanted to give them hope. More than that, I wanted to tell them how their own actions as children can help solve the crisis of global warming. You will see a real blueprint for this in the book.

Our young readers will be voters before we know it, and educating them today will influence their actions as they grow older. Wouldn\'t it be wonderful if The Magic School Bus could help change the climate for the better?

', image_url: "http://books.google.com/books/content?id=DX8QTkEeiDAC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71eMGu5Ws7DNBSxWbkiqE-2KCw1yPBDDyoBX66wCiVo-vSe5W8sw3nCUOYlpnM4u-xl4iP5do522u5WNcLGrVX2cm8uKrwPv-lbMmbQ808J_szZYqXYMdjJ2vOOyizfZqnCfKQj&source=gbs_api", year: "2010"},

{title: "The Magic School Bus Wet All Over", author: "Patricia Relf", description: 'Ms. Frizzle\'s class is learning all about water. And when Wanda suggests they take a trip to Waterland, Ms Frizzle gets that funny look in her eyes. But instead of taking her class to the water theme park, she takes them on a seriously wet and wild ride - through the water cycle! Join the class as they evaporate, condense, rain, and make their way back to the ocean...only to evaporate all over again!', image_url: "http://books.google.com/books/content?id=8xWGSKwcYJkC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70Oy0JigSm8gz4zTjKgUR9dF0IHvTbqoXCZu3lE6QjFhP1nWA76K-YgWbsP2pU9OnJF_jUVjgctY1arpv0Q6WgUSgOW5zW6270dIC1-n5wGrHBcK91iQef490EPGg1_-PCpc_q5&source=gbs_api", year: "1996"},{title: "A Guide for Using The Magic School Bus Inside a Beehive", author: "Ruth M. Young", description: 'Contains hands-on science lessons, pre- and post-reading activities, and assessments for a unit on honeybees, ants, and butterflies.', image_url: "http://books.google.com/books/content?id=mxwG_zcuyPMC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE717ABioiEh35Rd3Q7C1YYzlyfk_6g6nNKPYz-huxpVKPF-zk-9_f3X4AKHsO-13aPqNynsh8jeXZ-_Jp9zC_LcNsdIwJHD-lJVPhuAbYtGuij2pWBCLe4OzvdKKSjVfgRWeh3aE&source=gbs_api", year: "1997"},{title: "The Magic School Bus Inside a Beehive", author: "Joanna Cole", description: 'To celebrate its 20th anniversary, Scholastic is re-releasing the ten original Magic School Bus titles in paperback. With updated scientific information, the bestselling science series ever is back!

When the Magic School Bus turns into a beehive, Ms. Frizzle\'s class learns firsthand about how workers, drones, and the queen bees live together. Readers will be abuzz with knowledge as they discover how honeybees find food; make a comb, honey, and beeswax; and care for their young, all from the bee\'s perspective.', image_url: "http://books.google.com/books/content?id=VhMpXbpoPn0C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70YKXz5kCY3YppUFNFwEddwURH5EfQbkorJc-fre3AbwkgUiwwBWEfX42yINEzvlEQcRXEasZoeRYpwVkpZiGO-hNC21gh3X50uMxCH3VHaA2x6cqHWrH15qC2zL3vXrd01GDPu&source=gbs_api", year: "1996"},{title: "The Magic School Bus Taking Flight", author: "Joanna Cole", description: 'In order to discover how things fly, Ms. Frizzle and her class are shrunk inside Wanda and Tim\'s model airplane and learn about how wings and moving air affect flight in a series of high adventure. Original.', image_url: "http://books.google.com/books/content?id=dleoxOJhvpkC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE7349lKdUEWG7qNW16rvcYWcktOXxevmey92y9qkwz9yuURlg6tX--vp_HCmocqgm8hUAIl1-E2Kx98-1f5nfxJ57Jv2xuwZfTv5m5hA4y9DH_MEh2-laLBvnqQSHDPIie7AyDXJ&source=gbs_api", year: "1997"},{title: "The Magic School Bus", author: "Joanna Cole", description: 'To celebrate its 20th anniversary, Scholastic is re-releasing the ten original Magic School Bus titles in paperback. With updated scientific information, the bestselling science series ever is back!

Arnold has swallowed the Magic School Bus! Now, instead of seeing an exhibit of the human body at a museum, the class is taking a look at Arnold\'s stomach, his intestines, his bloodstream, and more from the inside on this heart-stopping fieldtrip - one the reluctant Arnold would be happy to miss.', image_url: "http://books.google.com/books/content?id=n5ugVMTQe38C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70RS174bNX3ZyKlk-IwDb6S8Drh3ezDnFuPEEbJSbyWNnTQaQ5pgi7ROiiYTVYiyhkfZvLdVuKIFDjHsLTEFiqa8bBCXK0bRe1eZ-psDZ6rHtUO5KtOCwQihKhHVn3eXJCCpHxU&source=gbs_api", year: "1989"},{title: "Amazing Magnetism", author: "Rebecca Carmi", description: 'Get ready for some serious science fun when the Friz takes on the most attractive topic of all: Magnetism!

Hi, I\'m Carlos - one of the kids in Ms. Frizzle\'s class. I know Ms. Frizzle thinks of some weird ways to teach about science, but challenging Mr. O\'Neatly\'s class to a science contest was her craziest idea to date. Mr. O\'Neatly\'s class always wins everything!

The contest topic was magnetism, and we hadn\'t even started our unit yet. The Friz said she thought we\'d have a natural attraction to the topic, but nothing could have prepared us for what happened next. Wait til\' you hear about this!', image_url: "http://books.google.com/books/content?id=a84taVl1bZQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70RHTYUewUYR8sr45vpev4pzhR0DrvZDjbalVu1AK4_6v4NmwhqhO4aOTZV1G0EJeVXZFQqGMWEiiFsV-no2aJ_OMK5asrOHWg9O3Oi6AbridA9kQfaBmWIilHrYcQR1VnlTZ5o&source=gbs_api", year: "2001"},{title: "Magic School Bus Presents: Insects", author: "Tom Jackson", description: 'THE MAGIC SCHOOL BUS PRESENTS INSECTS is a photographic nonfiction companion book to the original bestselling title, THE MAGIC SCHOOL BUS INSIDE A BEEHIVE. INSIDE A BEEHIVE from the bestselling Magic School Bus series taught thousands of kids about bees. MAGIC SCHOOL BUS PRESENTS INSECTS will expand upon the original title with fresh and updated content about all the incredible insects flying and crawling around the earth. With vivid full-color photographs on each page as well as illustrations of the beloved Ms. Frizzle and her students, the Magic School Bus Presents series will enthrall a whole new generation of Magic School Bus readers.', image_url: "http://books.google.com/books/content?id=mFP2AwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72ZAnyebAsbm1QPaqq47Ws3-itYYLEhipdpMUk3T1DnXKDdZuf4KV-gsgHEeszKEnLlCJrAtUTKRyDdbnTsTletYQV-FCEz1uwxsfy4YYfn-DiI10uxYaF4CYqCWQ04m6UDWHtJ&source=gbs_api", year: "2014"},{title: "The Magic School Bus Gets Programmed", author: "Nancy White", description: 'Mr. Ruhle, the school principal, has just gotten a super-duper computer. And Carlos\'s brother, Mikey, programs it to go a little wacky-- it\'s doing their chores over and over and over again! So Ms. Frizzle turns the kids into a floppy disk and sends them inside the computer to find out what has gone wrong. Join the class on a wild ride, and learn a lot about computers along the way!--[Résumé de l\'éditeur].', image_url: "http://books.google.com/books/content?id=DrNygnr6gogC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70O6p8dXZQLoQv-rUXlfSJ9eKQcpeYUfhgqa_3fbecGHWOXFbtKirNApUAVL_2DPWXohIQBbNDPmngoSKXaAQ7bUWZIKwjI20sgJgkdCUQm5KERj2SxA-L6XUB55fDlxajfjUde&source=gbs_api", year: "1999"},{title: "Guide for Using the Magic School Bus (R) and the Electric Field Trip in the Classroom (New)", author: "Ruth M. Young", description: 'Part of the Literature Unit giving lesson plans, reading activities and unit assessments for using The Magic School Bus and The Electric Field Trip in the classroom.', image_url: "http://books.google.com/books/content?id=QBYUAQAAMAAJ&printsec=frontcover&img=1&zoom=3&imgtk=AFLRE73An_tFtIv4DXc1IWjixwR1FjZ7qhNWhlLGN2spM5E-CON811OGSFuf6-1q494y5MdkuxeJEKgE5EU1cxhymFDTxFjW-iiu1JvIpy8QJ1eaBZs9pQG1-7He2U_eJgXmCtcUTJoV&source=gbs_api", year: "1999"},{title: "The Magic School Bus All Dried Up", author: "Joanna Cole", description: 'Phoebe\'s worried about the animals in the desert. Will they die from lack of food and water? Once again, Ms. Frizzle\'s class is off on another field trip. The kids are going to a real desert. Will they be able to save the animals? Do the animals really need to be saved? Join the class as they learn how plants and animals survive in the desert.', image_url: "http://books.google.com/books/content?id=M4ekwE55teMC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71-Sv5cpp3X9dMQmRQFrMOigUoR6qWs0Veia-uLzsWgLkh1pOmdazfBJMsq6Qz-eTsHVa8rqKb0H4XUdFrIPnew69GhMp07JmYwOUBdSRlr9e41kANRKkTvr8lYPdYN5rU1lfd0&source=gbs_api", year: "1996"},{title: "Scholastic's the Magic School Bus Gets a Bright Idea", author: "Nancy White", description: 'Ms. Frizzle\'s class thinks the PTA light show is pretty wild, but really surprising things happen when the show is over. Ms. Frizzle and the Magic School Bus arrive just in time to help solve the mystery and teach about the properties of light.', image_url: "http://books.google.com/books/content?id=ffFBCLcDcd4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71c3ttdN4gxGTFbkzCjKbP2TlvnYifO5-JQDwkoOhsFe9GihPjL05AC4ZjTIY3MPyAtmo9rjoGsBghQywlnEY8a0VDlJTfhwlSpwEcaqArD3l7ucnOJVSfnZwMYascz6_dY35wp&source=gbs_api", year: "1999"},{title: "The Magic School Bus Shows and Tells", author: "Joanna Cole", description: 'Ms. Frizzle\'s class is in a Show and Tell contest. Arnold brings in an old artifact to show. But since nobody knows what it is, there\'s nothing to tell! So the class makes guesses as to what the object is, and they go on a wild adventure to find out if their guesses are correct. Full color.', image_url: "http://books.google.com/books/content?id=XoBGxTlkwm4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE703NqSOOwu2IiMLagH6SPxg8FP9YOE4ty1c3D4vpUizKKpuSMexzZOOmIoG8DThmp__FRui_x6Qyr5mGDUytF4zcZ2xsZPoM1h6yXdxi9ry1MfZfjWFuPMsnDgWdLRl7LB_Tfck&source=gbs_api", year: "1997"},{title: "Scholastic's The Magic School Bus in the Haunted Museum", author: "Linda Beech", description: 'The class is going to give a concert at the Sound Museum.
On the way, the Magic School Bus breaks down -- in front of a big, old haunted house. The class hears lots of weird sounds. Ms. Frizzle and the kids enter at their own risk! But, once inside, they learn all about sound. You will, too, when you read this book.', image_url: "http://books.google.com/books/content?id=GFTtzuZmEtEC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73gxunD_51R0drrbhFl43gq-QcCc7ux7m3lNElg2Tk5MEZ5d-qDWe-_Z-Yjq9qzC8e4itpJK8e7czI35ED1H_HQqD-AiWSAE_O_H0H2v6t3CXPt1prL3G04n4slAZfD1NmUa85Y&source=gbs_api", year: "1995"}]);

#compsci books
Book.create([
  {title: "Clojure Reactive Programming", author: "Leonardo Borges", description: 'If you are a Clojure developer who is interested in using Reactive Programming to build asynchronous and concurrent applications, this book is for you. Knowledge of Clojure and Leiningen is required. Basic understanding of ClojureScript will be helpful for the web chapters, although it is not strictly necessary.', image_url: "http://books.google.com/books/content?id=1tePBwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72wRRkyxMD14rpMHgr0FwiGoIFwsOvFCUDWOHZVwV2C-odPt39Jnv3So-Pj05_BM0tG8MAhVJ29c-Y8OesbzpX3BxS2m1EoGz_EbTvBady9NAJ00homSoFYc_nszFPe3wkXMFBl&source=gbs_api", year: "2015"},{title: "Learning Behavior-driven Development with JavaScript", author: "Enrique Amodeo", description: 'This book is ideal for any JavaScript developer who is interested in producing well-tested code. If you have no prior experience with testing, Node.js, or any other tool, do not worry, as they will be explained from scratch.', image_url: "http://books.google.com/books/content?id=Fru9BgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE701Pp2KuHtqgTwMflCLbkJMJpooIP2A5CvTAmCAMMVPlVKdceVi3-YBQ3sdnHOWGBFHiVNoOmaK4OimjO8H3ahyo5JjqZY1mbDWcDeFTbATfaDSLofVLJkU0TGkl3qnU0Mq5-2R&source=gbs_api", year: "2015"},
  {title: "Reactjs", author: "Nathan Hull", description: 'This book is a discussion about React.js, which is a JavaScript library. This library is very useful for the development of web apps. The first chapter of this book is an exploration of how to use React.js together with the Bootstrap framework. Bootstrap is very important in the development of responsive web pages. This book will guide you on how to use these two tools together for development of very amazing apps. In this section, you will learn how to create an editor similar to the one you use when composing an email. The two tools have been combined together and then a guide on how to create a form for composing an email created. Unit testing is also explored in this book. The book guides you on how to carry out unit testing in React.js. However, the guide covers how to do this using both React.js and Redux. The various tests which fall under unit testing are examined, including the middleware test and the Reduce tests. . The book also guides you on how to create a time picker in React.js. The various functions and libraries which can be used for doing this are discussed. An explanation of the classes used has been provided after each. The process of creating isomorphic apps in React.js has been presented step by step. React.js has been combined with the Baobab tree so as to do this. You will learn how to inject state into your app by the use of either "props" or "context." Here is preview of what you\'ll learn: - React and Bootstrap - Unit Testing - Creating a Time Picker - Isomorphic Apps', image_url: "null", year: "2016"},
  {title: "JavaScript and JQuery", author: "Jon Duckett", description: 'A visual and accessible guide to JavaScript and jQuery in a built-to-last hardcover edition
In JavaScript & jQuery renowned author Jon Duckett discards the traditional programming book template and approaches writing code in a more relevant, less intimidating way. Full-color and packed with instructional graphics and photos, his books have gained a loyal following by illustrating programming in a way both instructive for newcomers and invaluable for seasoned coders.

By discussing JavaScript and jQuery in a single text, Duckett ensures you will quickly be writing your own working scripts. Yet the book doesn\'t assume you have experience in either JavaScript or jQuery. By making use of popular jQuery plugins, Duckett illustrates techniques that would require pages upon pages of detailed explanation if you were being taught to create the plugins yourself. This durable and attractive hardcover edition is a book you will have open on your desk as a reference for years to come.

A timeless and lasting version of a classic "Duckett" book in a hardbound, dust-jacketed edition
Completely accessible to those who feel intimidated by the subject matter and relevant to all front-end designers and developers who need to understand JavaScript
Discusses applying responsive design techniques, leveraging APIs to save you time and work in coding, and identifying when to use CSS transforms over pure JavaScript
Beautiful 4-color illustrations and examples make this a terrific academic resource for those of all experience levels
JavaScript & jQuery clearly explains the jargon of programming, addressing the vocabulary without making it a prerequisite for readers. Duckett speaks directly to readers, making this an invaluable resource.

This book is also available as a set, Web Design with HTML, CSS, JavaScript and jQuery Set 978119038634 along with HTML and CSS Design and Build Websites 9781118871645.

', image_url: "http://books.google.com/books/content?id=_uTRAwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70y0enZb81tPtxSchMEN-WO95RIWbhIqIKzG77UySK4QUMq1BH5HVHsu085pcrMAOIjE4B5ZcJoodTGwo-QmhCKIEf2LOXznvr-L7ESUDfj2YTYL4er_zCLXRuXcZJWuQD9cxvA&source=gbs_api", year: "2014"},{title: "Eloquent JavaScript, 2nd Ed.", author: "Marijn Haverbeke", description: '
JavaScript lies at the heart of almost every modern web application, from social apps to the newest browser-based games. Though simple for beginners to pick up and play with, JavaScript is a flexible, complex language that you can use to build full-scale applications.

Eloquent JavaScript, 2nd Edition dives deep into the JavaScript language to show you how to write beautiful, effective code. Author Marijn Haverbeke immerses you in example code from the start, while exercises and full-chapter projects give you hands-on experience with writing your own programs. As you build projects such as an artificial life simulation, a simple programming language, and a paint program, you’ll learn:

The essential elements of programming, including syntax, control, and dataHow to organize and clarify your code with object-oriented and functional programming techniquesHow to script the browser and make basic web applicationsHow to use the DOM effectively to interact with browsersHow to harness Node.js to build servers and utilities
This edition is thoroughly revised and modernized to reflect the current state of Java­Script and web browsers, with brand-new material, such as a chapter on code performance in Java­Script, and expanded coverage of recursion and closures. All source code is available online in an inter­active sandbox, where you can edit the code, run it, and see its output instantly.

Isn’t it time you became fluent in the language of the Web?

', image_url: "http://books.google.com/books/content?id=mDzDBQAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72Dq3OoJAC404rjWsfT_YPdmDFJ4t5bAiLay2u0Gh_MtYkLz0-vEtvwVEeCOfuPWOWMQTDy8vgRo25CUdoTcAPxjAaOQPpvCAznmAuE4hYloeXdLy-wBqTwYJuZDdIZY2szWFtj&source=gbs_api", year: "2014"},{title: "JavaScript: The Good Parts", author: "Douglas Crockford", description: '
Most programming languages contain good and bad parts, but JavaScript has more than its share of the bad, having been developed and released in a hurry before it could be refined. This authoritative book scrapes away these bad features to reveal a subset of JavaScript that\'s more reliable, readable, and maintainable than the language as a whole—a subset you can use to create truly extensible and efficient code.

Considered the JavaScript expert by many people in the development community, author Douglas Crockford identifies the abundance of good ideas that make JavaScript an outstanding object-oriented programming language-ideas such as functions, loose typing, dynamic objects, and an expressive object literal notation. Unfortunately, these good ideas are mixed in with bad and downright awful ideas, like a programming model based on global variables.

When Java applets failed, JavaScript became the language of the Web by default, making its popularity almost completely independent of its qualities as a programming language. In JavaScript: The Good Parts, Crockford finally digs through the steaming pile of good intentions and blunders to give you a detailed look at all the genuinely elegant parts of JavaScript, including:

Syntax
Objects
Functions
Inheritance
Arrays
Regular expressions
Methods
Style
Beautiful features
The real beauty? As you move ahead with the subset of JavaScript that this book presents, you\'ll also sidestep the need to unlearn all the bad parts. Of course, if you want to find out more about the bad parts and how to use them badly, simply consult any other JavaScript book.

With JavaScript: The Good Parts, you\'ll discover a beautiful, elegant, lightweight and highly expressive language that lets you create effective code, whether you\'re managing object libraries or just trying to get Ajax to run fast. If you develop sites or applications for the Web, this book is an absolute must.

', image_url: "http://books.google.com/books/content?id=PXa2bby0oQ0C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71plkGqpKq95jw1d9wpFPr5GJDQSuV_jYBuhBNFr90BYFOv0xBvRDIBI798zVcpti_z93qdtftclemDfpYl1I1n0uF-AwrQ0y7ABpI-NP8RyAO0KaPFVqXfvAbpwvvTD0HtvXKw&source=gbs_api", year: "2008"},{title: "JavaScript", author: "David Flanagan", description: '
JavaScript is a powerful, object-based scripting language; JavaScript programs can be embedded directly in HTML web pages. When combined with the Document Object Model (DOM) defined by a web browser, JavaScript allows you to create Dynamic HTML content and interactive client-side web applications. JavaScript syntax is based on the popular programming languages C, C++, and Java, which makes it familiar and easy to learn for experienced programmers. At the same time, JavaScript is an interpreted scripting language, providing a flexible, forgiving programming environment in which new programmers can learn.

JavaScript: The Definitive Guideprovides a thorough description of the core JavaScript language and both the legacy and standard DOMs implemented in web browsers. The book includes sophisticated examples that show you how to handle common tasks, like validating form data, working with cookies, and creating portable DHTML animations. The book also contains detailed reference sections that cover the core JavaScript API, the legacy client-side API, and the W3C standard DOM API, documenting every JavaScript object, method, property, constructor, constant, function, and event handler in those APIs.

This fourth edition of the bestselling JavaScript book has been carefully updated to cover JavaScript 1.5 (ECMAScript version 3). The book also provides complete coverage of the W3C DOM standard (Level 1 and Level 2), while retaining material on the legacy Level 0 DOM for backward compatibility.

JavaScript: The Definitive Guideis a complete programmer\'s guide and reference manual for JavaScript. It is particularly useful for developers working with the latest standards-compliant web browsers, like Internet Explorer 6, Netscape 6, and Mozilla. HTML authors can learn how to use JavaScript to build dynamic web pages. Experienced programmers can quickly find the information they need to start writing sophisticated JavaScript programs. This book is an indispensable reference for all JavaScript programmers, regardless of experience level.

', image_url: "http://books.google.com/books/content?id=vJGlu9t9LNYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72yc7dDly8q6K0zNRXZKObHov0qpcrQqgltoh0yif913qju4jS7Y9xed6HiebGSt7bBZ_oriOXbr2-Sbkxb9WY2rK4uky1kmcQGoUM01Awjcwr45_XPaTGFUT6w0rRUgv4hSvXF&source=gbs_api", year: "2002"},{title: "Learning JavaScript Design Patterns", author: "Addy Osmani", description: '
With Learning JavaScript Design Patterns, you’ll learn how to write beautiful, structured, and maintainable JavaScript by applying classical and modern design patterns to the language. If you want to keep your code efficient, more manageable, and up-to-date with the latest best practices, this book is for you.

Explore many popular design patterns, including Modules, Observers, Facades, and Mediators. Learn how modern architectural patterns—such as MVC, MVP, and MVVM—are useful from the perspective of a modern web application developer. This book also walks experienced JavaScript developers through modern module formats, how to namespace code effectively, and other essential topics.

Learn the structure of design patterns and how they are written
Understand different pattern categories, including creational, structural, and behavioral
Walk through more than 20 classical and modern design patterns in JavaScript
Use several options for writing modular code—including the Module pattern, Asyncronous Module Definition (AMD), and CommonJS
Discover design patterns implemented in the jQuery library
Learn popular design patterns for writing maintainable jQuery plug-ins
"This book should be in every JavaScript developer’s hands. It’s the go-to book on JavaScript patterns that will be read and referenced many times in the future."—Andrée Hansson, Lead Front-End Developer, presis!

', image_url: "http://books.google.com/books/content?id=L46fX62D5qYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70gx3tkFEJWCWsA80NOphdJSOm5deHsEKKQckgT2MylLIoLCVUx9xz8nB5fiCqHEwunw8GgsBEABLkoefiP4hlGa3XG2sLhITaa9vHVR-tF5cpoPm9LX-sjYmyss1c3drY5Jlwj&source=gbs_api", year: "2012"}
  ]);
#game of thrones
Book.create([{title: "The Ice Dragon", author: "George R. R. Martin", description: '
The Ice Dragon is an enchanting tale of courage and sacrifice for young readers and adults by the wildly popular author of the #1 New York Times bestselling Song of Ice and Fire series, George R.R. Martin. Lavish illustrations by acclaimed artist Luis Royo enrich this captivating and heartwarming story of a young girl and her dragon.

In the world of A Song of Ice and Fire the ice dragon was a creature of legend and fear, for no man had ever tamed one. When it flew overhead, it left in its wake desolate cold and frozen land. But Adara was not afraid. For Adara was a winter child, born during the worst freeze that anyone, even the Old Ones, could remember.

Adara could not remember the first time she had seen the ice dragon. It seemed that it had always been in her life, glimpsed from afar as she played in the frigid snow long after the other children had fled the cold. In her fourth year she touched it, and in her fifth year she rode upon its broad, chilled back for the first time. Then, in her seventh year, on a calm summer day, fiery dragons from the North swooped down upon the peaceful farm that was Adara\'s home. And only a winter child—and the ice dragon who loved her—could save her world from utter destruction.
This new edition of The Ice Dragon is sure to become a collector\'s item for fans of HBO\'s megahit Game of Thrones.

At the Publisher\'s request, this title is being sold without Digital Rights Management Software (DRM) applied.

', image_url: "http://books.google.com/books/content?id=6SniBAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73Vy4q64UzlxobwYjOTct4JrETf4yddv65XTGL0IeLmjwuB955x8ngdqhYaPKjUacuJqqfzRnojT4sdGFfFK3iC5PGbYXdqQpZIWC1xBFzZ0fwamVZstnTjrNvoKvlgixR7TrtJ&source=gbs_api", year: "2014"},{title: "Windhaven", author: "George R. R. Martin", description: '“Told with a true storyteller’s voice: clear, singing, persuasive, and wonderfully moving . . . a truly wonderful book.”—Jane Yolen

From #1 New York Times bestselling author George R. R. Martin and acclaimed author Lisa Tuttle comes a timeless tale that brilliantly renders the struggle between the ironbound world of tradition and a rebellious soul seeking to prove the power of a dream.

Among the scattered islands that make up the water world of Windhaven, no one holds more prestige than the silver-winged flyers, romantic figures who cross treacherous oceans, braving shifting winds and sudden storms, to bring news, gossip, songs, and stories to a waiting populace. Maris of Amberly, a fisherman’s daughter, wants nothing more than to soar on the currents high above Windhaven. So she challenges tradition, demanding that flyers be chosen by merit rather than inheritance. But even after winning that bitter battle, Maris finds that her troubles are only beginning. Now a revolution threatens to destroy the world she fought so hard to join—and force her to make the ultimate sacrifice.

“Martin and Tuttle make wonderful professional music together . . . shifting easily from moments of almost unbearable tension to others of sheer poetry and exhilaration.”—Fort Worth Star-Telegram

“A powerful flight of the imagination . . . an entirely enjoyable reading experience, wrought by a pair of writers noted for excellence.”—Roger Zelazny

“It’s romance. It’s science fiction. It’s beautiful.”—A. E. van Vogt

“I didn’t mean to stay up all night to finish Windhaven, but I had to!”—Anne McCaffrey', image_url: "null", year: "2003"},{title: "Fevre Dream", author: "George R. R. Martin", description: '
A THRILLING REINVENTION OF THE VAMPIRE NOVEL BY THE MASTER OF MODERN FANTASY, GEORGE R. R. MARTIN

Abner Marsh, a struggling riverboat captain, suspects that something\'s amiss when he is approached by a wealthy aristocrat with a lucrative offer. The hauntingly pale, steely-eyed Joshua York doesn\'t care that the icy winter of 1857 has wiped out all but one of Marsh\'s dilapidated fleet; nor does he care that he won\'t earn back his investment in a decade. York\'s reasons for traversing the powerful Mississippi are to be none of Marsh\'s concern—no matter how bizarre, arbitrary, or capricious York\'s actions may prove. Not until the maiden voyage of Fevre Dream does Marsh realize that he has joined a mission both more sinister, and perhaps more noble, than his most fantastic nightmare—and humankind\'s most impossible dream.

', image_url: "http://books.google.com/books/content?id=C--7ZhrnIlUC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71tKPKqVjtRu7vsUnBnnx-oh-SFbo0-9RzAYqHbylQOqAvNy-DRhg-JGyMJmww6BxH7BCA7_auaHZunAa-tUmwAUDUapVZzPuPw9kgYn4ZneTHZm0bLWj4A3kpzIU8BBTC4gG5X&source=gbs_api", year: "2012"},{title: "George RR Martin's Wild Cards", author: "Daniel Abraham", description: 'In 1946, an alien virus is accidentally unleashed that changes the world forever. Most of those infected die horribly, said to have drawn the Black Queen as their fated card. Ninety percent of those who survive mutate into JokersaÑ"deformed, broken, hated, and feared. But a handful are lucky enough to become Aces, gaining superpowers that allow them to achieve almost anything the mind can conceiveaÑ"both in dreams and in nightmares. Sixty years later, an Ace named Croyd Crenson, better known as the Sleeper, is framed for the murder of a young nurse in New York CityaÑés Jokertown. As Crenson investigates the killing to clear his name, he has to fight to stay awake, or else his unusual ability will change him into something else entirely. Meanwhile, a group of teenagers in Whiteoak, Colorado, accidentally activate the dormant wild-card virus, wiping out nearly the entire town. As the teens are sent to the Jokertown clinic, they discover that not all Jokers are bad and not all Aces are good. Set in the world of the novels edited by George R. R. Martin and featuring a brand-new set of characters as well as appearances from many old favorites, Wild Cards: The Hard Call is an original story written specifically for comics that will enchant new readers and old fans alike.', image_url: "http://books.google.com/books/content?id=kNZ-mIoPvkQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70P-IHB9tou8w9bQ6uJe7loCyAfeCNPf2YPGImwKUyma16KvvvzJQ-mUTa9EORorhfOlnxCwTC2mCI9N46_cTHLOC6BJs7DFihjMnJmSp-tH67toa0P1nYfbNozmiuSvwmeK2r5&source=gbs_api", year: "2011"},{title: "A Game of Thrones", author: "George R. R. Martin", description: 'NOW THE ACCLAIMED HBO SERIES GAME OF THRONES

From a master of contemporary fantasy comes the first novel of a landmark series unlike any you\'ve ever read before. With A Game of Thrones, George R. R. Martin has launched a genuine masterpiece, bringing together the best the genre has to offer. Mystery, intrigue, romance, and adventure fill the pages of this magnificent saga, the first volume in an epic series sure to delight fantasy fans everywhere.

A GAME OF THRONES
A SONG OF ICE AND FIRE: BOOK ONE

Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister forces are massing beyond the kingdom\'s protective Wall. To the south, the king\'s powers are failing--his most trusted adviser dead under mysterious circumstances and his enemies emerging from the shadows of the throne. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the frozen land they were born to. Now Lord Eddard Stark is reluctantly summoned to serve as the king\'s new Hand, an appointment that threatens to sunder not only his family but the kingdom itself.

Sweeping from a harsh land of cold to a summertime kingdom of epicurean plenty, A Game of Thrones tells a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens. Here an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his thro≠ a child is lost in the twilight between life and death; and a determined woman undertakes a treacherous journey to protect all she holds dear. Amid plots and counter-plots, tragedy and betrayal, victory and terror, allies and enemies, the fate of the Starks hangs perilously in the balance, as each side endeavors to win that deadliest of conflicts: the game of thrones.

Unparalleled in scope and execution, A Game of Thrones is one of those rare reading experiences that catch you up from the opening pages, won\'t let you go until the end, and leave you yearning for more.


From the Hardcover edition.', image_url: "http://books.google.com/books/content?id=btpIkZ6X6egC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73JfsdpdWPTLSaVGy068AaPQSXRUU9rJaddVa0nISxY84lVWxIdyUw_wqER6Aml937Ku_ps5RfRjZ5VfcCV0XO2yjhVQr3MfIG-3ZiFMwb9lxxmlARB-nYR4F7_5qVyLvooASn7&source=gbs_api", year: "1997"},{title: "A Knight of the Seven Kingdoms", author: "George R. R. Martin", description: 'NEW YORK TIMES BESTSELLER • NAMED ONE OF THE BEST BOOKS OF THE YEAR BY LOS ANGELES TIMES AND BUZZFEED • Taking place nearly a century before the events of A Game of Thrones, A Knight of the Seven Kingdoms compiles the first three official prequel novellas to George R. R. Martin’s ongoing masterwork, A Song of Ice and Fire. These never-before-collected adventures recount an age when the Targaryen line still holds the Iron Throne, and the memory of the last dragon has not yet passed from living consciousness.

Before Tyrion Lannister and Podrick Payne, there was Dunk and Egg. A young, naïve but ultimately courageous hedge knight, Ser Duncan the Tall towers above his rivals—in stature if not experience. Tagging along is his diminutive squire, a boy called Egg—whose true name is hidden from all he and Dunk encounter. Though more improbable heroes may not be found in all of Westeros, great destinies lay ahead for these two . . . as do powerful foes, royal intrigue, and outrageous exploits.

Featuring more than 160 all-new illustrations by Gary Gianni, A Knight of the Seven Kingdoms is a must-have collection that proves chivalry isn’t dead—yet.

Praise for A Knight of the Seven Kingdoms

“Readers who already love Martin and his ability to bring visceral human drama out of any story will be thrilled to find this trilogy brought together and injected with extra life.”—Booklist

“The real reason to check out this collection is that it’s simply great storytelling. Martin crafts a living, breathing world in a way few authors can. . . . [Gianni’s illustrations] really bring the events of the novellas to life in beautiful fashion.”—Tech Times', image_url: "http://books.google.com/books/content?id=o28lBgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70lZVgdIsHdv6BkR7IKm_nHcEkgqPyKCuCb2fcZNZ3ybXCoh8cmwRt3KgirHjPaA8635cSZkU5_m044nJ0afxZAdnBzQDf7MPLj8PfzhFYgFfgd_VyDPcnJIbopI1eOKJa-5U-d&source=gbs_api", year: "2015"},{title: "Tuf Voyaging", author: "George R. R. Martin", description: 'Long before A Game of Thrones became an international phenomenon, #1 New York Times bestselling author George R. R. Martin had taken his loyal readers across the cosmos. Now back in print after almost ten years, Tuf Voyaging is the story of quirky and endearing Haviland Tuf, an unlikely hero just trying to do right by the galaxy, one planet at a time.

Haviland Tuf is an honest space-trader who likes cats. So how is it that, in competition with the worst villains the universe has to offer, he’s become the proud owner of a seedship, the last remnant of Earth’s legendary Ecological Engineering Corps? Never mind; just be thankful that the most powerful weapon in human space is in good hands—hands which now have the godlike ability to control the genetic material of thousands of outlandish creatures.

Armed with this unique equipment, Tuf is set to tackle the problems that human settlers have created in colonizing far-flung worlds: hosts of hostile monsters, a population hooked on procreation, a dictator who unleashes plagues to get his own way . . . and in every case, the only thing that stands between the colonists and disaster is Tuf’s ingenuity—and his reputation as a man of integrity in a universe of rogues.

“A rich blend of adventure, humor, compassion and all the other things that make being human worthwhile.”—Analog

“A new facet of Martin’s manysided talent.”—Asimov’s


From the Hardcover edition.', image_url: "http://books.google.com/books/content?id=6RpkjMDC3dAC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72xw2pddYg0jBdekGat0HkB2N8-OZ1dflR2RSF6sebs1MYq40RUw3wExkYTB-0vmGdobr9EWq4XQXrjPJT20SF1xSDZQDOhJkFeXqgfZLFwveLrjvDhGsZSCx6bS2zcaKjSoXeE&source=gbs_api", year: "2013"},{title: "A Clash of Kings", author: "George R. R. Martin", description: 'THE BOOK BEHIND THE SECOND SEASON OF GAME OF THRONES, AN ORIGINAL SERIES NOW ON HBO.

Here is the second volume in George R.R. Martin magnificent cycle of novels that includes A Game of Thrones and A Storm of Swords. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R.R. Martin stunning series is destined to stand as one of the great achievements of imaginative fiction.

A CLASH OF KINGS

A comet the color of blood and flame cuts across the sky. Two great leaders—Lord Eddard Stark and Robert Baratheon—who hold sway over an age of enforced peace are dead, victims of royal treachery. Now, from the ancient citadel of Dragonstone to the forbidding shores of Winterfell, chaos reigns. Six factions struggle for control of a divided land and the Iron Throne of the Seven Kingdoms, preparing to stake their claims through tempest, turmoil, and war. It is a tale in which brother plots against brother and the dead rise to walk in the night. Here a princess masquerades as an orphan boy; a knight of the mind prepares a poison for a treacherous sorceress; and wild men descend from the Mountains of the Moon to ravage the countryside. Against a backdrop of incest and fratricide, alchemy and murder, victory may go to the men and women possessed of the coldest steel...and the coldest hearts. For when kings clash, the whole land trembles.', image_url: "http://books.google.com/books/content?id=NnE07xtwhqYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72mW0Q3ianV4rjZ31YzaUp6V9kbQIctOE8cpo1DowlReZv5QkyXeXpbxVALbpLSA2qTuDjnsXU9BWBqRGpmOQ01aYXOT0RmD52-aSNJRzipa6VTy_VrKAhbRK9GeqJiLxTozw4h&source=gbs_api", year: "1999"},{title: "Dying of the Light", author: "George R. R. Martin", description: 'In this unforgettable space opera, #1 New York Times bestselling author George R. R. Martin presents a chilling vision of eternal night—a volatile world where cultures clash, codes of honor do not exist, and the hunter and the hunted are often interchangeable.

A whisperjewel has summoned Dirk t’Larien to Worlorn, and a love he thinks he lost. But Worlorn isn’t the world Dirk imagined, and Gwen Delvano is no longer the woman he once knew. She is bound to another man, and to a dying planet that is trapped in twilight. Gwen needs Dirk’s protection, and he will do anything to keep her safe, even if it means challenging the barbaric man who has claimed her. But an impenetrable veil of secrecy surrounds them all, and it’s becoming impossible for Dirk to distinguish between his allies and his enemies. In this dangerous triangle, one is hurtling toward escape, another toward revenge, and the last toward a brutal, untimely demise.

“Dying of the Light blew the doors off of my idea of what fiction could be and could do, what a work of unbridled imagination could make a reader feel and believe.”—Michael Chabon

“Slick science fiction . . . the Wild West in outer space.”—Los Angeles Times

“Something special which will keep Worlorn and its people in the reader’s mind long after the final page is read.”—Galileo magazine

“The galactic background is excellent. . . . Martin knows how to hold the reader.”—Asimov’s

“George R. R. Martin has the voice of a poet and a mind like a steel trap.”—Algis Budrys


From the Trade Paperback edition.', image_url: "http://books.google.com/books/content?id=8IsOP1sUmZwC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72qM31Ski67iilk6HWDMHJzsGiv5deRzhO2YNaYcT9dDOvERzq44FlmosWDrN5SS5JBKwv84dGFv1IQDartLW8wfgnxolTMFMMjHF_5gs_SHOwRAvNw1pYnO31aqRwCU-gc6MXq&source=gbs_api", year: "2004"},{title: "A Game of Thrones: The Graphic Novel: Volume Four", author: "George R. R. Martin", description: 'NEW YORK TIMES BESTSELLER

Bestselling writer Daniel Abraham and acclaimed illustrator Tommy Patterson bring their stunning graphic-novel adaptation of George R. R. Martin’s classic A Game of Thrones to a stunning finish that merits a place alongside the majestic original on the bookshelf of every fantasy fan.

The death of King Robert Baratheon and the imprisonment of his Hand, Lord Eddard Stark of Winterfell, has set the great houses of Westeros at one another’s throats.

In Winterfell, Eddard’s eldest son and heir, Robb Stark, has gathered an army and is pushing south, determined to free his father. Along the way, he pledges to marry the daughter of Lord Walder Frey in exchange for a military advantage that allows him to capture Jaime Lannister—a powerful bargaining chip to ensure Lord Eddard’s safe release. But it is one thing to capture the Kingslayer and quite another to hold him.

Meanwhile, in King’s Landing, young King Joffrey has other ideas than an exchange of prisoners. Ignoring the advice of his mother, Queen Cersei, he throws oil on the flames of conflict and ignites a conflagration that seems likely to consume not only the Starks but all of Westeros—unless Tyrion Lannister, the Imp, can bring the mad boy-king to heel.

Beyond the Wall, greater dangers are brewing, as a winter as brutal as any in history approaches, bringing with it unnatural creatures out of legend. There, Eddard’s bastard, Jon Snow, must decide once and for all where his loyalties lie.

And across the Narrow Sea, Daenerys Targaryen will learn the true measure of grief—and emerge from its fiery depths transformed, hardened, and ready to claim what is hers by right: the Iron Throne.


From the Hardcover edition.', image_url: "http://books.google.com/books/content?id=Nxl0BQAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73nLd7kkQAISpM5Bvz1bxvo6SJA5zcbLkkpFbAlL16T5d3F1mEekeeQo9PoBVhs5k04ZQahvBjNI4ZJBJm6KxFRMpLSsgxXytV-UKSLvcfS6D5Y0Ya4xUAE9qsChs14Pm8T2khT&source=gbs_api", year: "2015"},{title: "The Wit & Wisdom of Tyrion Lannister", author: "George R. R. Martin", description: 'The perfect gift for fans of George R. R. Martin’s A Song of Ice and Fire novels and HBO’s Game of Thrones: a collection of wicked one-liners from the incomparable Imp of Casterly Rock, fully illustrated by Jonty Clark!

“My mind is my weapon. My brother has his sword, King Robert has his warhammer, and I have my mind . . . and a mind needs books as a sword needs a whetstone if it is to keep its edge.”

The jealous masses of the Seven Kingdoms may call him Halfman, but none have ever accused Tyrion Lannister of being a halfwit. His golden tongue has saved his skin slightly more often than it has landed him in mortal peril. Now, this special illustrated volume preserves his most essential knowledge for future generations, featuring time-tested guidance on such varied subjects as . . .

The art of persuasion
“The best lies are seasoned with a bit of truth.”

Fine dining
“A little honest loathing can be refreshing, like a tart wine after too much sweet.”

The fair sex
“The young ones smell much better, but the old ones know more tricks.”

Royal politics
“Crowns do queer things to the heads beneath them.”

Common ailments
“A sword through the bowels. A sure cure for constipation.”

At once charming, insightful, and ruthlessly irreverent, The Wit & Wisdom of Tyrion Lannister is short on pretense and overflowing with finely crafted gems—just like the man himself.', image_url: "http://books.google.com/books/content?id=YJt9OCHDxpQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72LjH4HEnCVXs3y2LFiZuoDR0JHhgwmUf1sCqZ3VgnJt8kQqIJSZTK6y9H87-VzGOXPAg4MKbgSUtSvjTemslxM1o58S3EFd_EKZZl7WMHdU-wLg-r_YyszrmvLVpQX0LSiYGqw&source=gbs_api", year: "2013"},{title: "Rogues", author: "George R. R. Martin", description: 'NEW YORK TIMES BESTSELLER

A thrilling collection of twenty-one original stories by an all-star list of contributors—including a new A Game of Thrones story by George R. R. Martin!

If you’re a fan of fiction that is more than just black and white, this latest story collection from #1 New York Times bestselling author George R. R. Martin and award-winning editor Gardner Dozois is filled with subtle shades of gray. Twenty-one all-original stories, by an all-star list of contributors, will delight and astonish you in equal measure with their cunning twists and dazzling reversals. And George R. R. Martin himself offers a brand-new A Game of Thrones tale chronicling one of the biggest rogues in the entire history of Ice and Fire.

Follow along with the likes of Gillian Flynn, Joe Abercrombie, Neil Gaiman, Patrick Rothfuss, Scott Lynch, Cherie Priest, Garth Nix, and Connie Willis, as well as other masters of literary sleight-of-hand, in this rogues gallery of stories that will plunder your heart—and yet leave you all the richer for it.

Featuring all-new stories by

Joe Abercrombie • Daniel Abraham • David W. Ball • Paul Cornell • Bradley Denton • Phyllis Eisenstein • Gillian Flynn • Neil Gaiman • Matthew Hughes • Joe R. Lansdale • Scott Lynch • Garth Nix • Cherie Priest • Patrick Rothfuss • Steven Saylor • Michael Swanwick • Lisa Tuttle • Carrie Vaughn • Walter Jon Williams • Connie Willis

And an Introduction by George R. R. Martin!

Praise for Rogues

“Not a single bad story in the bunch . . . The table of contents alone will make fans from all genre aisles salivate.”—Library Journal', image_url: "http://books.google.com/books/content?id=AjUGAwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71obx7NArS-q2MszkO0wfMe15PG9IPvBMw5TNsuy_-wE6RiGVOi_KEw9tssE7odc53z2i3APmtspsYHbe_WXs7MyOMMK3_bJ9MDiCpt1Ux3lHZxnQ9nV7IldoZboXgnHaK8Vw5X&source=gbs_api", year: "2014"},{title: "A Game of Thrones: The Graphic Novel: Volume Three", author: "George R. R. Martin", description: '#1 NEW YORK TIMES BESTSELLER

When dealing with a masterpiece, only the best will do. That’s why writer Daniel Abraham and illustrator Tommy Patterson were chosen to adapt George R. R. Martin’s beloved fantasy classic A Game of Thrones as a graphic novel. And as anyone who has read the previous two collected volumes of the ongoing series can attest, the result has been a stunning tour de force faithful in every respect to its brilliant original.

In King’s Landing, Lord Eddard Stark of Winterfell—the Hand of King Robert Baratheon—is surrounded by enemies. Some are openly declared, such as Ser Jaime Lannister and his sister, Queen Cersei. Others are hidden in the shadows. Still others wear the smiling mask of friends. But all are deadly, as Eddard is about to discover.

Nor is the enmity between Eddard and the Lannister siblings the sole source of friction between these powerful noble families. For Tyrion Lannister, the Imp—whose stunted, twisted body houses the mind of a genius—has but lately won his freedom from Lady Catelyn Stark, Eddard’s wife, who had accused him of attempting to murder her youngest son, Brandon. Now he seeks out his father, his restless thoughts bent on revenge.

Far to the north, the bastard Jon Snow, newly sworn to the Night’s Watch, takes the first faltering steps toward a destiny stranger than he could ever dream—a destiny that will bring him face-to-face with unspeakable horrors from beyond the edge of the world.

While across the Narrow Sea, Daenerys Targaryen, wed to the great Dothraki warlord Khal Drogo, and pregnant with his child—a son prophesied to conquer the world—will see her own destiny take an unforeseen turn.


From the Hardcover edition.', image_url: "http://books.google.com/books/content?id=hie4AwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE721RnCR5ieRhmX5F7-A8cxitVcR26uHcNvDD-GINKN-L3AeuMYctmRoDeQuXaoD48C_CA0a1XAn9e0aN7ynHiy4Re-pTAvKY1srU7GNZa2-BrP7ZcTStEhB1qmdlnOHOTQvzSwZ&source=gbs_api", year: "2014"},{title: "High Stakes", author: "George R. R. Martin", description: '
Perfect for old fans and new readers alike, High Stakes (Wild Cards) delves deeper into the world of aces, jokers, and the hard-boiled men and women of the Fort Freak police precinct in a pulpy, page-turning novel of superheroics and Lovecraftian horror bu George R. R. Martin and Melinda M. Snodgrass.

After the concluding events of Lowball, Officer Francis Black of Fort Freak, vigilante joker Marcus "The Infamous Black Tongue" Morgan, and ace thief Mollie "Tesseract" Steunenberg get stuck in Talas, Kazakhstan. There, the coldblooded Baba Yaga forces jokers into an illegal fighting ring, but her hidden agenda is much darker: her fighters\' deaths serve to placate a vicious monster from another dimension. When the last line of defense against this world weakens, all hell breaks loose, literally....

The Committee in New York sends a team of aces to investigate. One by one, each falls victim to evil forces--including the dark impulses within themselves. Only the perseverance of the most unlikely of heroes has a chance of saving the world before utter chaos erupts on Earth.

Edited by #1 New York Times bestselling author George R. R. Martin, High Stakes features the writing talents of Melinda M. Snodgrass, John Jos. Miller, David Anthony Durham, Caroline Spector, Stephen Leigh, and Ian Tregillis.

Now in development for TV: Rights to develop Wild Cards for TV have been acquired by Universal Cable Productions, the team that brought you The Magicians and Mr. Robot, with the co-editor of Wild Cards, Melinda Snodgrass as executive producer.

At the Publisher\'s request, this title is being sold without Digital Rights Management Software (DRM) applied.

', image_url: "http://books.google.com/books/content?id=7ot_CwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71aQvZS-45gZ3_VaJ0HQJKuajEjVYHi8OTXoaB3Tnc7G_FyzSttfabDvs9wQZGdwXlTqk7qs06gIvzvC--ecHksltbxvoSKNb3RMyp4hW8gQs-E2EJFFwSKwkM0ojDTzSb1QBRu&source=gbs_api", year: "2016"},{title: "A Game of Thrones", author: "George R. R. Martin", description: '
HBO\'s hit series A GAME OF THRONES is based on George R R Martin\'s internationally bestselling series A SONG OF ICE AND FIRE, the greatest fantasy epic of the modern age.

', image_url: "null", year: "2011"},{title: "Beyond the Wall", author: "James Lowder", description: '"There were a number of books about A Game of Thrones (the HBO series) and A Song of Ice and Fire (the books) published last year . . . the one that impressed me most was James Lowder\'s Beyond the Wall."
—George R.R. Martin

Foreword by New York Times bestselling author R.A. Salvatore

Go beyond the Wall and across the narrow sea with this collection about George R.R. Martin’s A Song of Ice and Fire, from A Game of Thrones to A Dance with Dragons.

The epic game of thrones chronicled in George R.R. Martin’s A Song of Ice and Fire series has captured the imaginations of millions of readers. In Beyond the Wall, bestselling authors and acclaimed critics offer up thought-provoking essays and compelling insights:

Daniel Abraham reveals the unique challenges of adapting the original books into graphic novels.

Westeros.org founders Linda Antonsson and Elio M. García, Jr., explore the series’ complex heroes and villains, and their roots in the Romantic movement.

Wild Cards contributor Caroline Spector delves into the books’ controversial depictions of power and gender.

Plus much more, from military science fiction writer Myke Cole on the way Post-Traumatic Stress Disorder shapes many of the leading characters to author and television writer Ned Vizzini on the biases against genre fiction that color critical reactions to the series.

', image_url: "null", year: "2012"},{title: "The World of Ice & Fire", author: "George R. R. Martin", description: 'NEW YORK TIMES BESTSELLER • THE NEVER-BEFORE-SEEN HISTORY OF WESTEROS AND THE LANDS BEYOND • WITH HUNDREDS OF PAGES OF ALL-NEW MATERIAL FROM GEORGE R. R. MARTIN

If the past is prologue, then George R. R. Martin’s masterwork—the most inventive and entertaining fantasy saga of our time—warrants one hell of an introduction. At long last, it has arrived with The World of Ice & Fire.

This lavishly illustrated volume is a comprehensive history of the Seven Kingdoms, providing vividly constructed accounts of the epic battles, bitter rivalries, and daring rebellions that lead to the events of A Song of Ice and Fire and HBO’s Game of Thrones. In a collaboration that’s been years in the making, Martin has teamed with Elio M. García, Jr., and Linda Antonsson, the founders of the renowned fan site Westeros.org—perhaps the only people who know this world almost as well as its visionary creator.

Collected here is all the accumulated knowledge, scholarly speculation, and inherited folk tales of maesters and septons, maegi and singers, including

• full-color artwork and maps, with more than 170 original pieces
• full family trees for Houses Stark, Lannister, and Targaryen
• in-depth explorations of the history and culture of Westeros
• 100% all-new material, more than half of which Martin wrote specifically for this book

The definitive companion piece to George R. R. Martin’s dazzlingly conceived universe, The World of Ice & Fire is indeed proof that the pen is mightier than a storm of swords.


From the Hardcover edition.', image_url: "http://books.google.com/books/content?id=hapdAAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE708dnq61sUo9vN9aJrhVUZlwPAm6kHOhbuzJXtok3b8D86_wCOcoika0OxzURbXbbfr7tvejBuQxWNFd5LRs06cTgO7oVEeFhlYbLYHayx4wbwuwRf7MMieFpBbc5otJAu9CG3C&source=gbs_api", year: "2014"},{title: "A Dance With Dragons", author: "George R. R. Martin", description: '
GAME OF THRONES: A NEW ORIGINAL SERIES, NOW ON HBO.

Dubbed “the American Tolkien” by Time magazine, George R. R. Martin has earned international acclaim for his monumental cycle of epic fantasy. Now the #1 New York Times bestselling author delivers the fifth book in his landmark series—as both familiar faces and surprising new forces vie for a foothold in a fragmented empire.

A DANCE WITH DRAGONS
A SONG OF ICE AND FIRE: BOOK FIVE

In the aftermath of a colossal battle, the future of the Seven Kingdoms hangs in the balance—beset by newly emerging threats from every direction. In the east, Daenerys Targaryen, the last scion of House Targaryen, rules with her three dragons as queen of a city built on dust and death. But Daenerys has thousands of enemies, and many have set out to find her. As they gather, one young man embarks upon his own quest for the queen, with an entirely different goal in mind.

Fleeing from Westeros with a price on his head, Tyrion Lannister, too, is making his way to Daenerys. But his newest allies in this quest are not the rag-tag band they seem, and at their heart lies one who could undo Daenerys\'s claim to Westeros forever.

Meanwhile, to the north lies the mammoth Wall of ice and stone—a structure only as strong as those guarding it. There, Jon Snow, 998th Lord Commander of the Night\'s Watch, will face his greatest challenge. For he has powerful foes not only within the Watch but also beyond, in the land of the creatures of ice.

From all corners, bitter conflicts reignite, intimate betrayals are perpetrated, and a grand cast of outlaws and priests, soldiers and skinchangers, nobles and slaves, will face seemingly insurmountable obstacles. Some will fail, others will grow in the strength of darkness. But in a time of rising restlessness, the tides of destiny and politics will lead inevitably to the greatest dance of all.

', image_url: "http://books.google.com/books/content?id=tu2LDQAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70Erf9lVGD82tmZzlY1jh92Uwmg1x03fgPWRhix4XTeZApSIdooRTqwyHgaMzKUf9rv7xTjCMUNlS37wZOk6vRA_xVK-O9yHDkvAx4ZoqUeOAfPUZKdF_fdA1kWO8pXfBNGLMie&source=gbs_api", year: "2011"},{title: "Lowball", author: "Wild Cards Trust", description: '
Now in development for TV: Rights to develop Wild Cards for TV have been acquired by Universal Cable Productions, the team that brought you The Magicians and Mr. Robot, with the co-editor of Wild Cards, Melinda Snodgrass as executive producer.

Decades after an alien virus changed the course of history, the surviving population of Manhattan still struggles to understand the new world left in its wake. Natural humans share the rough city with those given extraordinary—and sometimes terrifying—traits. While most manage to coexist in an uneasy peace, not everyone is willing to adapt. Down in the seedy underbelly of Jokertown, residents are going missing. The authorities are unwilling to investigate, except for a fresh lieutenant looking to prove himself and a collection of unlikely jokers forced to take matters into their own hands—or tentacles. The deeper into the kidnapping case these misfits and miscreants get, the higher the stakes are raised.

Edited by #1 New York Times bestselling author George R. R. Martin and acclaimed author Melinda M. Snodgrass, Lowball is the latest mosaic novel in the acclaimed Wild Cards universe, featuring original fiction by Carrie Vaughn, Ian Tregillis, David Anthony Durham, Melinda M. Snodgrass, Mary Anne Mohanraj, David D. Levine, Michael Cassutt, and Walter John Williams.

Perfect for old fans and new readers alike, Lowball delves deeper into the world of aces, jokers, and the hard-boiled men and women of the Fort Freak police precinct in a pulpy, page-turning novel of superheroics and mystery.

', image_url: "http://books.google.com/books/content?id=a_5ZBAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE732PVYMWzVVOHFGKnWWaN49qsuv-uWMpVn1k0gWnuyEzUVYqQarLESke2XEZqDptQSWiiunuX7vACmXYcceZaMrmbgkTaVVhRd3Qasme6SRdjsuW1K0Z5bQI00eY876waBnUl4S&source=gbs_api", year: "2014"}]);
#redwall
Book.create([{title: "Triss: A Novel of Redwall", author: "Brian Jacques", description: 'Triss the squirelmaid, Shogg, and Welfo escape from slavery at Riftgard and are pursued across the sea toward Redwall by Princess Kurda, Prince Bladd, and a band of freebooters who seek the rumored treasure of Brockhall. Reprint.', image_url: "http://books.google.com/books/content?id=orhiwRHwoFkC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70ub4EBv2gjEdpHq5mwIPIzbT9EDW5mrPJy2cJp-uT0npPsFBwmu0VffgXyAp2WKHhSlrack-YZfP6uVNdC2B0uvAdpiXwlBle0Ho8g-2LtBeBztBqPcPxL9o8OPup_A5uwNwsM&source=gbs_api", year: "2003"},{title: "Marlfox", author: "Brian Jacques", description: '
Queen Silth rules Castle Marl from behind the curtains of her palanquin. Greedy and vain, she has sent her six children into the world to plunder treasure. Stealth and cunning are the traits of the Marlfox. Known only in Redwall country by legend, they are said to able to appear and disappear by magic.

When the strange creatures begin to appear in Mossflower Woods, it is clear that evil is abroad. A kidnapping and a cunning raid to steal the beautiful Redwall tapestry confirm the worst; Redwall is under threat! Three young friends, fated by the prophecy of Martin the Warrior, pursue the villains in a quest of daring, courage and wit to return the beloved tapestry to its home.

', image_url: "http://books.google.com/books/content?id=9neU3pxVuBQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72zYJ6xEnL8U4xdfknjjsvDYhtzKdoWRadHKuDxQqSHBE9OzhOInOgsSruiyI0DXTyhvSQXAV1rRAM21BeX5hp0cStKmQkSSm7iDLgLkiwPj0tHwBfNYleN1mTY-aEvnDZ5I2EC&source=gbs_api", year: "2010"},{title: "The Rogue Crew", author: "Brian Jacques", description: 'In his acclaimed and beloved Redwall series, New York Times bestselling author Brian Jaques "shows no signs of letting up or slowing down the action." (VOYA) Visit the gentle critters of Mossflower Wood with The Rogue Crew...

In which the brave hares of the Long Patrol team up with the fearless sea otters of the Rogue Crew to defend Redwall Abbey from the terror of both land and sea—the pirate Razzid Wearat…', image_url: "http://books.google.com/books/content?id=In0Rd1XmBu4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72Vnb11-yjrexXzroWXUX8zEvtambMlsuF2XlnZoQkGlM5dWAnolFFHDR-nQdT2_raOZluOnn9j8YSndl6rjRzRcLtWgpioEkhs1di6kDwjWCamuYARyDrGGUWeJ3apqY7pHTpM&source=gbs_api", year: "2011"},{title: "The Bellmaker", author: "Brian Jacques", description: 'New York Times bestselling author Brian Jacques masterfully recounts more woodland adventures in the seventh epic in the Redwall series!

It has been four seasons since Mariel, the warrior-mouse daughter of Joseph the Bellmaker, and her companion, Dandin, set off from Redwall to fight evil in Mossflower. Nothing has been heard of them since. Then one night, in a dream, the legendary Martin the Warrior comes to the Bellmaker with a mysterious message. Clearly, Mariel and Dandin are in grave danger. Joseph and four Redwallers set off at once to aid them. As they push over land and sea, they cannot know the terrible threats they face. Will the Bellmaker and his companions arrive in time to help Mariel and Dandin?


"This is storytelling at its best."—School Library Journal


From the Trade Paperback edition.', image_url: "http://books.google.com/books/content?id=UKKPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71HQcT13KA_mc4cv8t40WMyeSv3zqen3ScSId4a2LoVBm2mnS66JqAVc0UjMiT_VzayFm-t-Jay0bwJiyEKp8HVUEuul2GUfECy94BhOkMa24K_EOUBpSrI0dzxp86KsEKOzU2c&source=gbs_api", year: "2004"},{title: "The Pearls Of Lutra", author: "Brian Jacques", description: 'Ninth thrilling REDWALL adventure - new in PAPERBACK! Far away, on the isle of Sampetra, Emperor Ublaz - also scarily known as. . . . Mad Eyes - sends his fearsome lizards and seascum on a murderous mission to Redwall. Meanwhile Tansy and her fellow abbey dwellers frantically race against time to unravela fiendishly difficult set of riddles and rhymes left by the Fermald the Ancient. . .', image_url: "http://books.google.com/books/content?id=g3iAGrJCjgUC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72Fck3Jo8oIdsNgRbWnLQgp7NZZSfpmQMgMuacYr8szolrEuqhtTvF_s3B9Ie0CGE5h1Vwi-kSDhNZyGDTTYjEO2Zr7_CUDaB9oEkk9Nb43iQ164TJnt7AJ0lBzdJ_1g8mAQ3Ij&source=gbs_api", year: "2012"},{title: "The Long Patrol", author: "Brian Jacques", description: 'Barradum! Barradum! Barrabubbitybubbityboom! Tamello De Fformelo Tussock wants more than anything to join the Long Patrol, those staunch and stalwart hare warriors who make their home at the top of Salamandastron Mountain. But Tammo, as he is called, is too young and inexperienced. Or is he? Guided by the nomad squirrel Russa, Tammo makes his way to Redwall, where the Long Patrol has gathered to protect their beloved Abbey from the great rat Rapscallions. And as the mighty rats rear their ugly heads and ancient Redwall warriors fall, young Tammo learns what life, death and honor really mean as a new generation of Redwall heroes comes to the fore to save their home from evil.', image_url: "http://books.google.com/books/content?id=LqOPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70M_tHPEudR5uaxoOpo3JAnm2Rj6dBakThBirEFuOu-7F2BE4QVPs8AFteoL-7Bndp5cchs5RSuTr43fC0VB6PwjjwbVMT38cOyXBLlSfmsZLjtihCuiAg8iOf7FCPMTIjFYxVO&source=gbs_api", year: "2004"},{title: "Doomwyte", author: "Brian Jacques", description: 'The 20th novel of Redwall-now in paperback.

The young mouse Bisky persuades his friends at Redwall Abbey to seek a fabled treasure-the jeweled eyes of the Great Doomwyte Idol-only to lead them into the realm of the fearsome Korvus Skurr, the black- feathered raven.', image_url: "http://books.google.com/books/content?id=x_7D6k-224EC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73s6q1r7xy_6ufTX2yTsBXZ5XnbFg-bIxDmC4ayOqNRYBa4Rt_fBqcsSHOunEeVe6z5gkmZxOp4szOz4qQvmx27i2h4JrlrATNjIp5RE4-U3cJ8zlY0xSesxqj5S8pKJ9if6ec6&source=gbs_api", year: "2008"},{title: "Loamhedge", author: "Brian Jacques", description: 'In this sixteenth Redwall adventure, Martha Braebuck, a young hare-maid, wheelchair bound since infancy, wonders about a mysterious old poem relating to the ancient abbey of Loamhedge--and whether it may hold the key to her cure.


', image_url: "http://books.google.com/books/content?id=LIdSp-UpSicC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73KUkWnhYir9WUM-adrSoGWgWkQNClJ4cfIiMB0sg7pAvHI79xl_DenJB7yDRlLdsqC_hxXmU2LHLJd5IRaXB0EGRD1yNgrtaD8HHiZ26VYVhFY5a2wB6tVpjrCvAqomyO4QSxt&source=gbs_api", year: "2004"},{title: "Lord Brocktree", author: "Brian Jacques", description: 'The young haremaid Dotti and the badger-warrior Lord Brocktree—unlikely comrades—set out for Salamandastron together, only to discover the legendary mountain has been captured by the wildcat Ungatt Trunn and his Blue Hordes. To face them, the two must rally an army—hares and otters, shrews and moles, mice and squirrels—and execute a plan that makes up in cleverness what it lacks in force!', image_url: "http://books.google.com/books/content?id=VaSPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE735xLje1FDt1hFe3Rl16ZIDiZEx0IwD7AcT_Zb3wY4ImDgADRTKLAb44b50-npqBUdSpYKb1UHt0hHae8KjRoB90J0tgDtwJnvyfAS49QWVLELIGEarjlNPeLSL_q7yZW4SLx45&source=gbs_api", year: "2005"}]);
#redwall
Book.create([{title: "Redwall", author: "Brian Jacques", description: 'The question in this first volume is resoundingly clear: What can the peace-loving mice of Redwall Abbey do to defend themselves against Cluny the Scourge and his battle-seasoned army of rats? If only they had the sword of Martin the Warrior, they might have a chance. But the legendary weapon has long been forgotten-except, that is, by the bumbling young apprentice Matthias, who becomes the unlikeliest of heroes. Teeming with riddles, humor, unforgettable characters, and high-bounding adventure, the original Redwall, the launching point for a series that has captured the world\'s attention, features seven full-color illustrations by renowned illustrator Troy Howell. This new paperback edition is a must-have for both longtime fans and first-time readers.', image_url: "http://books.google.com/books/content?id=vKGPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71yU5YgR9xpS8b2OcrbBIVfXRR1br7THB3MAPZroSZa4ETmAAhvnBEHVb-HsHRmHtlM_9v1qNJGEWWSafAq2fE0RhRF9ysauSV0eBMLTEhyMDPEJCdH6CTF8j-EuEW52sJOR2hO&source=gbs_api", year: "2002"},{title: "Mossflower", author: "Brian Jacques", description: 'The thrilling prequel to "Redwall". The clever and greedy wildcat Tsarmina becomes ruler of all Mossflower Woods and is determined to govern the peaceful woodlanders with an iron paw. The brave mouse Martin and quick-talking mouse thief Gonff meet in the depths of Kotir Castle\'s dungeon. The two escape and resolve to end Tsarmina\'s tyrannical rule. Joined by Kinny the mole, Martin and Gonff set off on a dangerous quest for Salamandastron, where they are convinced that their only hope, Boar the Fighter, still lives.', image_url: "http://books.google.com/books/content?id=4KGPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70vWbYseOYJE6KCwychw6M1ii7MVp9gVplPGe84tt0es3tYBncKxAjIvDWF3YfIhvEg6qH-vMRgEx5YnRpXBTmEgGGsib4_wn4g9kOIyzFopAIytPx7ztFWT-6hUAmQtalLNCND&source=gbs_api", year: "2002"},{title: "Salamandastron", author: "Brian Jacques", description: 'Urthstripe the Strong, a wise old badger, leads the animals of the great fortress ofSalamandastron and Redwall Abbey against the weasel Ferahgo the Assassin and his corps ofvermin.', image_url: "http://books.google.com/books/content?id=d6OPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72oS724PaHVi5BA3JiVKudEabshcmSufhrrxdfkDdv8pNopF6R5VnzV3VZPd7hL9PYGvmpmiCQt7NH1wZyNGSFTShBNGom9mpoZKr69u3RAHScLP-4NhlAFkYWmCI6wSxPdSk7H&source=gbs_api", year: "2003"},{title: "Outcast Of Redwall", author: "Brian Jacques", description: '
Ferret Swartt Sixclaw and badger Sunflash the Mace are arch enemies who have sworn a pledge of death upon each other.

Meanwhile, the Abbess of Redwall has banished a young creature from her Abbey. This harsh sentence forces a heart-breaking decision upon a young Redwall mousemaid and ultimately links her destiny to. . . . the Outcast of Redwall.

', image_url: "http://books.google.com/books/content?id=dUCC7REqwhIC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72KNJFQuF_P8xsT6yKUCSoHiXXA7aD5iHG2Z0SMYnLxwclhQTm0CJxC6gxk_iWxGTTB_82RPTH0xGKSWKZHTovdz7NhQ4JAtKeC__pwSzOlcjwgmNwQT5wTCSnhweeYTxOdeB2L&source=gbs_api", year: "2011"},{title: "Redwall", author: "Evelyn Swensson", description: 'Playbook.', image_url: "http://books.google.com/books/content?id=c-Ds4yzIVl0C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71Kxl1ESnmVayEpycP_VcqKTcgulatRtuf3v2ODcpGdCkOxcPVue7_rNElBHdXxeCcDhW6gVK8MQCDtangxzPlpMaTT1hYFZ8-3737VNz5LrpJM1jjXL1iY6RNSX8cySHmptFKN&source=gbs_api", year: "2004"},{title: "Martin the Warrior", author: "Brian Jacques", description: 'The battle for freedom begins now, as the adventure continues in the stunning world of Redwall.

On the shore of the Eastern Sea, in a cold stone fortress, a stoat named Badrang holds dozens of innocent creatures as slaves, part of his scheme to build an empire where he will rule as unquestioned tyrant.  Among those slaves is a mouse named Martin who has a warrior\'s heart and a burning desire for freedom-freedom not only for himself, but for all of Badrang\'s victims.  There is no risk he will not take, no battle he will not fight, to end the stoat\'s evil reign and in the process regain the sword of his father, Luke the Warrior, the sword that Badrang stole from him when he was but a lad!


From the Trade Paperback edition.', image_url: "http://books.google.com/books/content?id=dKKPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72B0e_3dYBeY-fJcnPQ8rdMV02OGFxKbV0Zgidy3o50Z8qi6X37J8lqfxkonMRVzgMxiIttPDkRsDuYfUbRazzslqGXUSeJitylkyfCllTEPbxvSy_FQYOf5SahzKVIHEchIyf2&source=gbs_api", year: "2004"},{title: "The Legend of Luke", author: "Brian Jacques", description: 'In this twelfth book in the masterful Redwall epic, storyteller Brian Jacques goes back in time to the days before Redwall, revealing with dramatic poignancy the legend of the first of the magnificent Redwall warriors--Luke, father of Martin. It is that legend Martin hopes to discover when he embarks on a perilous journey to the northland shore, where his father abandoned him as a child. There, within the carcass of a great red ship he uncovers what he has been searching for: the story of the evil Pirate stoat, Vilu Daskar, and the valiant mousewarrior who pursued him relentlessly over the high seas, seeking to destroy Vilu at all costs, even if it meant deserting his only son. Brian Jacques reaches a new pinnacle in storytelling, imparting the story behind the story of the greatest Redwall warrior of them all.', image_url: "http://books.google.com/books/content?id=MKSPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71f6rrs52rbVbVWr_ziNQgB6VNVMQweUNZWgKI1WGdONQHBhBgGx1ianq4jopDLtpzScayI5bl0GL0b5heeT9wqy--cO49Yhz4ZI6HpET1vCs1u8qABUa-P5h9fNO6kPGO7IlhV&source=gbs_api", year: "2005"},{title: "Eulalia!", author: "Brian Jacques", description: 'The aged Badger Lord of Salamandastron sends a young haremaid on a quest to find his successor Gorath—held captive by Vizka Longtooth and his scurrilous crew of Sea Raiders, bound for plunder and conquest.', image_url: "http://books.google.com/books/content?id=PlnmnZw7eIQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70JnkA0ahgT49cFHQ6XMFRoMOmLWtr73hVZklFxGRMZZquI3oPstGqVVQ0gdAP5ZUsZoSZKjILOZYVDc9w3C41E_TxucWOZlyHKuZ-TifZ4ZMREiQsR0eVEI3D-q0Ie5Hf-_Znz&source=gbs_api", year: "2007"},{title: "Mariel of Redwall", author: "Brian Jacques", description: 'When the mouse-ship carrying Joseph the Bellmaker and his daughter Mariel runs afoul of a pirate rat king, they are mercilessly tossed overboard. Washed ashore and certain that her father is dead, Mariel vowsrevenge.', image_url: "http://books.google.com/books/content?id=nKOPDAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE701YYl-J0pFjOqLchrtAu_qsSuopcXeqkg2cxlMDhhmqp-EALItqOSob1jQksssYEShnNxwQaGk4gfYt79U_yeodeTdznD-u8wTOeNTSqeqYYT7g-kjMsE0eyUVZ-UtTWni-Rwk&source=gbs_api", year: "2003"}]);
#discworld
Book.create([{title: "Sourcery", author: "Terry Pratchett", description: '
Sourcery, a hilarious mix of magic, mayhem, and Luggage, is the fifth book in Terry Pratchett\'s classic fantasy Discworld series.

Rincewind, the legendarily inept wizard, has returned after falling off the edge of the world. And this time, he’s brought the Luggage. But that’s not all… Once upon a time, there was an eighth son of an eighth son who was, of course, a wizard. As if that wasn’t complicated enough, said wizard then had seven sons. And then he had an eighth son — a wizard squared (that’s all the math, really). Who of course, was a source of magic — a sourcerer.

Will the sourcerer lead the wizards to dominate all of Discworld? Or can Rincewind’s tiny band stave off the Apocalypse?

', image_url: "http://books.google.com/books/content?id=b3Wd5oZOxi4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72HoqOaRUznYyI9_4A41yPnlUWk17OIcg923aQTwTGavRrlNv9Th5WLUVc85L7wLPv3fbO63OWBQD_BGqiOf2LAee0gjGt_BKERxAXj_dRJobodWYWIwTPydIS3lWFNUL_UORZh&source=gbs_api", year: "2009"},{title: "Reaper Man", author: "Terry Pratchett", description: '
They say there are only two things you can count on ...

But that was before DEATH started pondering the existential. Of course, the last thing anyone needs is a squeamish Grim Reaper and soon his Discworld bosses have sent him off with best wishes and a well-earned gold watch. Now DEATH is having the time of his life, finding greener pastures where he can put his scythe to a whole new use.

But like every cutback in an important public service, DEATH\'s demise soon leads to chaos and unrest -- literally, for those whose time was supposed to be up, like Windle Poons. The oldest geezer in the entire faculty of Unseen University -- home of magic, wizardry, and big dinners -- Windle was looking forward to a wonderful afterlife, not this boring been-there-done-that routine. To get the fresh start he deserves, Windle and the rest of Ankh-Morpork\'s undead and underemployed set off to find DEATH and save the world for the living (and everybody else, of course).

', image_url: "http://books.google.com/books/content?id=RXT-iRt5s9MC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72qhXL2rKX5R8RG3uV_BdhxUC3L3qFWTlX-E2imsSIBEZR3mCy1RQ7MqNgEvnKZb6u_tY7wL4sou-u3yVDdD4KN1H19cWh_mjWOQGfeRwJs9ltTnHvBhFxvr-n6ZXV3DCeUbfHj&source=gbs_api", year: "2009"},{title: "Thud!", author: "Terry Pratchett", description: '
Once, in a gods-forsaken hellhole called Koom Valley, trolls and dwarfs met in bloody combat. Centuries later, each species still views the other with simmering animosity. Lately, the influential dwarf, Grag Hamcrusher, has been fomenting unrest among Ankh-Morpork\'s more diminutive citizens—a volatile situation made far worse when the pint-size provocateur is discovered bashed to death . . . with a troll club lying conveniently nearby.

Commander Sam Vimes of the City Watch is aware of the importance of solving the Hamcrusher homicide without delay. (Vimes\'s second most-pressing responsibility, in fact, next to always being home at six p.m. sharp to read Where\'s My Cow? to Sam, Jr.) But more than one corpse is waiting for Vimes in the eerie, summoning darkness of a labyrinthine mine network being secretly excavated beneath Ankh-Morpork\'s streets. And the deadly puzzle is pulling him deep into the muck and mire of superstition, hatred, and fear—and perhaps all the way to Koom Valley itself.

', image_url: "http://books.google.com/books/content?id=nNmN1oVtkEYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71XrTyIzbFGMFF1v0zlYrdzXRHMOo9Rxktst98i7gyG4DkcyRUrK0o59q5nRmWO0dqV7h9kqUT3-LaYhjJL9rPvUxlpsS2ptc7tykQtfrdKzWL1dSo4JhiWijfjv0ey0uzNV2J_&source=gbs_api", year: "2009"},{title: "The Discworld Almanak", author: "Terry Pratchett", description: 'The definitive Pratchett accessory - a must-have for lovers of Discworld.
In this humorous spin-off to the "Discworld phenomenon -- Terry Pratchett joins forces with Bernard Pearson to produce the definitive Almanac to the Common Year, 2004.
"Common Year, 2004 being the Year of the Incipient Goat, for the city of Ankh-Morpork and Surrounding Areas & Benefices. Here you will find an essential guide to all aspects of life, and a sure means of ensuring fertility of crops & livestock, also a boon companion in affairs of the HEART & HEALTH, with notes on Husbandry, Physic, Fairs & Marts, and other such information as will render this Publication a staunch companion to Townsman & Tiller of Soil alike. Including homemade remedies for common ailments, recipes, horoscopes, scientific discoveries, a calendar, strange tales and much, much more...
With witty illustrations, this is an artistically presented package guaranteed to tickle the funny bone of all Pratchett fans.', image_url: "null", year: "2004"},{title: "The Colour of Magic", author: "Terry Pratchett", description: 'Follow the bizarre misadventures of Twoflower, the Discworld\'s first tourist and his guide Rincewind, the wizard.', image_url: "null", year: "2008"},{title: "The Science of Discworld", author: "Terry Pratchett", description: '
Not just another science book and not just another Discworld novella, The Science of Discworld is a creative, mind-bending mash-up of fiction and fact, that offers a wizard’s-eye view of our world that will forever change how you look at the universe.

Can Unseen University’s eccentric wizards and orangutan Librarian possibly shed any useful light on hard, rational Earthly science?

In the course of an exciting experiment, the wizards of Discworld have accidentally created a new universe. Within this universe is a planet that they name Roundworld. Roundworld is, of course, Earth, and the universe is our own. As the wizards watch their creation grow, Terry Pratchett and acclaimed science writers Ian Stewart and Jack Cohen use Discworld to examine science from the outside. Interwoven with the Pratchett’s original story are entertaining, enlightening chapters which explain key scientific principles such as the Big Bang theory and the evolution of life on earth, as well as great moments in the history of science.


', image_url: "http://books.google.com/books/content?id=Sv_GAgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71LLtqRyY4WXm2RcLPug_RHBIzhDdzTaGYzPaNgaNgI8zkuhOf_XCF5AzmPvkhm1OIO62O1cHBEofkss0IP9xi2brrhoJ6F1Y4O9Et5o5vXaHTWTeerQxbJiQwVhr6iNJQSR84Z&source=gbs_api", year: "2014"},{title: "Discworld and the Disciplines", author: "Anne Hiebert Alton", description: '
   This collection of new essays applies a wide range of critical frameworks to the analysis of prolific fantasy author Terry Pratchett\'s Discworld books. Essays focus on topics such as Pratchett\'s treatment of noise and silence and their political implications; art as an anodyne for racial conflict; humor and cognitive debugging; visual semiotics; linguistic stylistics and readers\' perspectives of word choice; and Derrida and the "monstrous Regiment of Women." The volume also includes an annotated bibliography of critical sources. The essays provide fresh perspectives on Pratchett\'s work, which has stealthily redefined both fantasy and humor for modern audiences.

', image_url: "http://books.google.com/books/content?id=X69iAwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71-FxD54ZCfNjr6lfeNCEFS7zFrrXAhwo3s1O5mN8rniZxuRvUa11PTIk9bCRcS_Yzj5ZbjMObwqazyfNz7C-NJOg4WXkW3quyBAHbZDTkfontnpAAVTwrEfuIjKAD0H2warXlT&source=gbs_api", year: "2014"},{title: "Secrets of The Wee Free Men and Discworld", author: "Carrie Pyykkonen", description: '
A fascinating guide to the international bestselling Discworld series and the award-winning The Wee Free Men—soon to be a major motion picture

Before J. K. Rowling became the best-selling author in Britain, Terry Pratchett wore that hat. With over 45 million books sold, Pratchett is an international phenomenon. His brainchild is the Discworld series—novels he began as parodies of other works like Macbeth, Faust, and The Arabian Nights. The Wee Free Men, one of Pratchett\'s most popular novels, will be made into a movie by Spider-Man director Sam Raimi. It\'s the story of 9-year-old wannabe witch Tiffany Aching, who unites with the Nac Mac Feegle (6-inch-tall blue men who like to fight and love to drink) to free her brother from an evil fairy queen.

A fun, interactive guide that will explore the land of Discword, Secrets of The Wee Free Men and Discworld is filled with sidebars, mythology trivia, and includes a bio of the fascinating author Terry Pratchett, and an in-depth analysis of his work. This unofficial guide is a great resource for readers of The Wee Free Men and the other books of the Discworld series.

', image_url: "http://books.google.com/books/content?id=hEAQ8HNowwQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72wrmF5oSKzsIdYyuXUSo4Nh6m2MryqfbpFPi4v0ve3Si9mhPDFU5LFfhM3CHR8l_pEjpjAxAaUv_C8uN56lB-PJOlnLX16gdee3pmwb-pYMDvDZNPcrznW-xtjBJG8IqEkgIsp&source=gbs_api", year: "2008"},{title: "Men at Arms", author: "Terry Pratchett", description: '
A Young Dwarf\'s Dream

Corporal Carrot has been promoted! He\'s now in charge of the new recruits guarding Ankh-Morpork, Discworld\'s greatest city, from Barbarian Tribes, Miscellaneous Marauders, unlicensed Thieves, and such. It\'s a big job, particularly for an adopted dwarf.

But an even bigger job awaits. An ancient document has just revealed that Ankh-Morpork, ruled for decades by Disorganized crime, has a secret sovereign! And his name is Carrott...

And so begins the most awesome epic encounter of all time, or at least all afternoon, in which the fate of a city—indeed of the universe itself!—depends on a young man\'s courage, an ancient sword\'s magic, and a three-legged poodle\'s bladder.', image_url: "http://books.google.com/books/content?id=5Elr3kwaVRgC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72rg0UMO-goJG-A9IAlTLcDiMH7R_vNtrRuDcX20JXKEk9RC_CCYIwtiips7Byjz9q2UVro79vuGQ_yD0EyIiXMfPvv-gOxGI4x4msF136b-d5MWLPXzxbapAZeRwZOJgxoHnmG&source=gbs_api", year: "2009"},

{title: "Mort", author: "Terry Pratchett", description: '
Death comes to everyone eventually on Discworld. And now he\'s come to Mort with an offer the young man can\'t refuse. (No, literally, can\'t refuse since being dead isn\'t exactly compulsory.) Actually, it\'s a pretty good deal. As Death\'s apprentice, Mort will have free board and lodging. He\'ll get use of the company horse. And he won\'t have to take any time off for family funerals. But despite the obvious perks, young Mort is about to discover that there is a serious downside to working for the Reaper Man . . . because this perfect job can be a killer on one\'s love life.', image_url: "null", year: "1994"},

{title: "Thief of Time", author: "Terry Pratchett", description: '
Everybody wants more time, which is why on Discworld only the experts can manage it -- the venerable Monks of History who store it and pump it from where it\'s wasted, like underwater (how much time does a codfish really need?), to places like cities, where busy denizens lament, "Oh where does the time go?"

While everyone always talks about slowing down, one young horologist is about to do the unthinkable. He\'s going to stop. Well, stop time that is, by building the world\'s first truly accurate clock. Which means esteemed History Monk Lu-Tze and his apprentice Lobsang Ludd have to put on some speed to stop the timepiece before it starts. For if the Perfect Clock starts ticking, Time -- as we know it -- will end. And then the trouble will really begin...

', image_url: "http://books.google.com/books/content?id=X7J1FvRrpPoC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73DLvbYT3cSffTskloLThqqSiMy3NaXqZTXHJzQ6o0dsdCRO5gv7tnrkocJ-cVvUANXPr7D06LhpyzsTTDu6OhxDualBYiMTHKhGC0O1f-hRjGN5B-U53vT1MtEv_C4YK7aOL6I&source=gbs_api", year: "2009"},{title: "Soul Music", author: "Terry Pratchett", description: '
When her dear old Granddad -- the Grim Reaperhimself -- goes missing, Susan takes over the family business. The progeny of Death\'s adopted daughter and his apprentice, she shows real talent for the trade. That is until a little string in her heart goes "twang."

With a head full of dreams and a pocketful of lint,Imp the Bard lands in Ankh-Morpork, yearning to become a rock star. Determined to devote his life to music, the unlucky fellow soon finds that all his dreams are coming true. Well almost.

In this finger-snapping, toe-tapping tale of youth,Death, and rocks that roll, Terry Pratchett once again demonstrates the wit and genius that have propelled him to the highest echelons of parody next to Mark Twain, Kurt Vonnegut, Douglas Adams, and Carl Hiaasen.

', image_url: "http://books.google.com/books/content?id=1GF3aYLH3z4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72WBMnmB5iknpMrI4OZFIKrk0QbMYv33zsmfLYL0y78mb9kiUahC83opVJXwfmcXxel7fPWr5oAdKHLJZELPy321hGioU1L943HZadUdbOLy-jaLdBuRkZDjxWAX9I-LscpsEtM&source=gbs_api", year: "2009"},{title: "Interesting Times", author: "Terry Pratchett", description: '
"May you live in interesting times" is the worst thing one can wish on a citizen of Discworld -- especially on the distinctly unmagical sorcerer Rincewind, who has had far too much perilous excitement in his life. But when a request for a "Great Wizzard" arrives in Ankh-Morpork via carrier albatross from the faraway Counterweight Continent, it\'s he who\'s sent as emissary. Chaos threatens to follow the impending demise of the Agatean Empire\'s current ruler. And, for some incomprehensible reason, someone believes Rincewind will have a mythic role in the war and wholesale bloodletting that will surely ensue. (Carnage is pretty much a given, since Cohen the Barbarian and his extremely elderly Silver Horde are busily formulating their own plan for looting, pillaging, and, er, looking wistfully at girls.) However, Rincewind firmly believes there are too many heroes already in the world, yet only one Rincewind. And he owes it to the world to keep that one alive for as long as possible.

', image_url: "http://books.google.com/books/content?id=muiiYEAMq2cC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70508JtJ1cFtoD-JCMt7bxLvq3RRtQv5gx9-YvaK5djnKtheLd5E3bKkx9nYM-o3V3iMm6IrLsiMGeMLScz0u_i3P0WZqgIg6h0O5YN9uJIKoB4m7da9o_wFMAx0oX_nCM57F-i&source=gbs_api", year: "2009"},{title: "Witches Abroad", author: "Terry Pratchett", description: '
Be careful what you wish for...

Once upon a time there was a fairy godmother named Desiderata who had a good heart, a wise head, and poor planning skills—which unforunately left the Princess Emberella in the care of her other (not quite so good and wise) godmother when DEATH came for Desiderata. So now it\'s up to Magrat Garlick, Granny Weatherwax, and Nanny Ogg to hop on broomsticks and make for far-distant Genua to ensure the servant girl doesn\'t marry the Prince.

But the road to Genua is bumpy, and along the way the trio of witches encounters the occasional vampire, werewolf, and falling house (well this is a fairy tale, after all). The trouble really begins once these reluctant foster-godmothers arrive in Genua and must outwit their power-hungry counterpart who\'ll stop at nothing to achieve a proper "happy ending"—even if it means destroying a kingdom.

', image_url: "http://books.google.com/books/content?id=mlChCK02ZcsC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72A95gOSC1bLymxlK_UAC0aIbEkvR8xggrTZerLVTp45OxD4x6emSSG1rITwq-1UlJ6zM8lIkppbTTtbvpTN-B53dLKXNm4lLIRJQkF14_l9hYs8s5eGDHvHWvLrTeWF0tvpKUA&source=gbs_api", year: "2009"},{title: "Judgment Day", author: "Terry Pratchett", description: 'The wizards of Unseen University are again called upon to defend their creation, Roundworld, this time in a courtroom—where its very existence hangs in the balance.

The Omnians fervently believe that the world is round, not flat, and view the discovery of Roundworld as a vindication of their faith. To leave this artifact in the hands of the wizards would be unacceptable. Not only do the academics hold that Discworld is flat, but by creating the Roundworld universe, they have elevated themselves to the level of gods. Ankh-Morpork’s venerable tyrant Lord Vetinari agrees to a tribunal, where the wizards Ridcully, Rincewind, and Ponder Stibbons can present their case—with key assistance from a Roundworld librarian named Marjorie Daw.

JUDGMENT DAY weaves together explorations of such Earthly topics as big science, creation, subatomic particles, the existence of dark matter, and the psychology of belief--a treat for Discworld fans and readers of popular science alike.


From the Trade Paperback edition.', image_url: "http://books.google.com/books/content?id=FSlmCwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73BYlEnKUd80sXTdU_sdxf5dIe8mS9KNrz2k7ea3uLKeD3X4H6T0XnBLrAVdt8TfVnH8UtDjq4jaQasiH6GbFG3h-K7_he69dPFgh3TTaOcZUjCTXkY20rGe5HT7MDtKblhuGFp&source=gbs_api", year: "2016"},{title: "Small Gods", author: "Terry Pratchett", description: '
Lost in the chill deeps of space between the galaxies, it sails on forever, a flat, circular world carried on the back of a giant turtle—

Discworld

—a land where the unexpected can be expected. Where the strangest things happen to the nicest people. Like Brutha, a simple lad who only wants to tend his melon patch. Until one day he hears the voice of a god calling his name. A small god, to be sure. But bossy as Hell.

', image_url: "http://books.google.com/books/content?id=AR4mvx9Tn0QC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73hvEn2XoHROARLI3ykGWq-ytcadScc_hNSgzoc3sRwwHv-XFEY8h4qNOaE9tngcIg4-oiX-cENOi5I0CTm8vxxKi8ZMf3TU0aK9Wtx2kjm3CgY1c4tXn2T_0EB7rVPt9jgNKU6&source=gbs_api", year: "2009"},{title: "The Discworld Graphic Novels", author: "Terry Pratchett", description: '
In a distant and second-hand set of dimensions, in an astral plane that was never meant to fly . . .

Imagine a flat world sitting on the backs of four elephants who hurtle through space balanced on a giant turtle. The Discworld is a place (and a time) strikingly parallel to our own—but also very different. But also very similar.

To commemorate the twenty-fifth anniversary of the birth of the Discworld, the first two volumes of the remarkable Terry Pratchett\'s equally remarkable—and phenomenally successful—series were made available together, right here, in graphic novel form. These beautifully illustrated renditions of The Colour of Magic and The Light Fantastic show and tell the bizarre misadventures of the spectacularly inept wizard Rincewind and Twoflower, Discworld\'s very first—and possibly, portentously its very last—tourist. Not to mention the Luggage, which has a mind of its own. And teeth.

', image_url: "http://books.google.com/books/content?id=DzfphZ-QWXsC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71AxcCddSlcS7KNyRtK-YeqdLP3dYBghVxVCqIlbUUFUL1H7TmRw6p3QFeSP2utyd2QvkHLU3tXnurhG_oadUKpVwyi91aJPEoidbc1ih8yMz48UfNQ5VLvgMHxESrOLwj3RaI9&source=gbs_api", year: "2009"},{title: "Carpe Jugulum", author: "Terry Pratchett", description: '
In this and indeed other lives there are givers and takers. It\'s safe to say that vampires are very much in the latter camp. They don’t have much time for the givers of this world – except perhaps mealtimes – and even less for priests.

Mightily Oats has not picked a good time to be a priest.

Lancre’s newest residents are a thoroughly modern, sophisticated vampire family. They\'ve got style and fancy waistcoats. They\'re out of the casket and want a bite of the future. But they haven’t met the neighbours yet: between them and Lancre stand Granny Weatherwax and Nanny Ogg. And Magrat, who is trying to combine witchcraft and nappies. And young Agnes, although she is really in two minds about everything.

Mightily Oats knows he has a prayer, but he wishes he had an axe.

', image_url: "null", year: "2008"},{title: "The Shepherd's Crown", author: "Terry Pratchett", description: '
Terry Pratchett\'s final Discworld novel, and the fifth to feature the witch Tiffany Aching.

A SHIVERING OF WORLDS

Deep in the Chalk, something is stirring. The owls and the foxes can sense it, and Tiffany Aching feels it in her boots. An old enemy is gathering strength.

This is a time of endings and beginnings, old friends and new, a blurring of edges and a shifting of power. Now Tiffany stands between the light and the dark, the good and the bad.

As the fairy horde prepares for invasion, Tiffany must summon all the witches to stand with her. To protect the land. Her land.

There will be a reckoning. . . .

THE FINAL DISCWORLD® NOVEL

', image_url: "http://books.google.com/books/content?id=CtsWCAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73W28jdhW82Tm4CueL9RfCH-doHHH47tCaDFkDfnYNfTjnRmBstxzLT9rmR7secmmhUJdH1ev1V5OS5BnTH4qlqLK78qd8rtHMgpk1nq2uEqZowAkzLp7chbAtPkfjkAQGMVFue&source=gbs_api", year: "2015"},{title: "The Truth", author: "Terry Pratchett", description: '
The denizens of Ankh-Morpork fancy they\'ve seen just about everything. But then comes the Ankh-Morpork Times, struggling scribe William de Worde\'s upper-crust, newsletter turned Discworld\'s first paper of record.

An ethical joulnalist, de Worde has a proclivity for investigating stories -- a nasty habit that soon creates powerful enemies eager to stop his presses. And what better way than to start the Inquirer, a titillating (well, what else would it be?) tabloid that conveniently interchanges what\'s real for what sells.

But de Worde\'s got an inside line on the hot story concerning Ankh-Morpork\'s leading patrician Lord Vetinari. The facts say Vetinari is guilty. But as William de Worde learns, facts don\'t always tell the whole story. There\'s that pesky little thing called the truth ...

', image_url: "http://books.google.com/books/content?id=mGrRj_bpLBoC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70rnlYmmcU1kMkX6r0fzbre1HZAE1pdILlg-ew6DOaZdBgVjuK19EYzPXbouUf9KBG3MudqvN2T6QJlqodzi2FE0DC2COprwt1uTM-NysDSxBncHYoWj_G_UqVZs-k7hvHAnGT3&source=gbs_api", year: "2009"}])
#narnia
Book.create([{title: "Narnia and Beyond", author: "Thomas Howard", description: '
Regarded as one of the best authorities on the fiction of C.S. Lewis, Thomas Howard presents in this work brilliant new insights into Lewis\' fiction and helps us to see things we may not have seen nor appreciated before. Focusing onNarnia, the space trilogy andTil We Have Faces, Howard explores with remarkable clarity the moral vision in the imaginary world of the master storyteller Lewis."', image_url: "http://books.google.com/books/content?id=CiJAZUtH7dsC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70gaRElUs3lnSsBi7TxjPdsTgkCp3LZd-72PzJalwz5tZIfpHfY3-PnNKXVcmr3H-XouP4l4S0M0jbm4YxlP8MKMGK3nleV9vcz7dGw2Ctas9MSZNZYFkmZ4JLItrTJc9z3D6uX&source=gbs_api", year: "2006"},

{title: "The Complete Chronicles of Narnia", author: "C. S. Lewis", description: '
All seven Chronicles are bound together in this one magnificent volume with a personal introduction by Douglas Gresham, stepson of C. S. Lewis.

', image_url: "http://books.google.com/books/content?id=f_0m7WiulUMC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE7357ij-VFW9X2mZH2_EJv7eqL3cJNBXCEy_tbv8Zr22_CjhiQ52wyC9X2RTtAL1ssFepxpZTjnbnxs58phlkr551QsnKHAorXmTXjC5JZA3DllF0Or8MB1PaqIKYKqccWW_xH1e&source=gbs_api", year: "1998"},{title: "The Chronicles of Narnia and Philosophy", author: "Gregory Bassham", description: 'The Chronicles of Narnia series has entertained millions of readers, both children and adults, since the appearance of the first book in 1950. Here, scholars turn the lens of philosophy on these timeless tales. Engagingly written for a lay audience, these essays consider a wealth of topics centered on the ethical, spiritual, mythic, and moral resonances in the adventures of Aslan, the Pevensie children, and the rest of the colorful cast. Do the spectacular events in Narnia give readers a simplistic view of human choice and decision making? Does Aslan offer a solution to the problem of evil? What does the character of Susan tell readers about Lewis’s view of gender? How does Lewis address the Nietzschean “master morality” embraced by most of the villains of the Chronicles? With these and a wide range of other questions, this provocative book takes a fresh view of the world of Narnia and expands readers’ experience of it.', image_url: "http://books.google.com/books/content?id=BeccAwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70FqvdWDGgjudbGX8BjK8apRH4ftaHlwV6Dp9f0U7BhHavHZtpigf0xFL8tRjsBBP0jb9BKqlcykX7-BeI5ApVomokoDAQNSB3fT-ts3dBME7Lpbsz5xCMILtVI4_gZFNKwgVJa&source=gbs_api", year: "2013"},{title: "The Voyage of the Dawn Treader (Enhanced Edition)", author: "C. S. Lewis", description: '
In this enhanced e-book fans of Narnia can: Test their Narnia knowledge with 18 illustrated interactive quiz questions; follow the journey of the Dawn Treader through a gorgeous animated time line created just for this edition; enjoy a full color map of Narnia; view the blueprint of the Dawn Treader with details of all the ship’s special features; meet all the characters of Narnia -- the humans and creatures -- each with their own description and color illustration; read about the author, with an extended, exclusive bio of Clive Staples Lewis.

', image_url: "http://books.google.com/books/content?id=JZEmAgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70d-SplK8MD26KpUSBXOuobcPyICO5E1n_FW4Odr7OZgsRKy3Te3bwU_6bYynKTktyGMb8KiTvDcKvWwUxSGJWxI0BOemySUlnpptZNTe0Dus7la594CWnjq7UmG5MRhQJV5QIx&source=gbs_api", year: "2010"},{title: "Narnia Beckons", author: "Theodore Baehr", description: 'Narnia Beckons is an elegant coffee table book rich with photos relating to The Lion, the Witch, and the Wardrobe and other C. S. Lewis stories. This book will be full of profound, enlightening, inspiring, and discerning information and stories about the book from which the movie has been drawn. Also included is information about previous television adaptations of Lewis\'s children\'s masterpiece as well as interviews with some of the key players producing the movie and leading Lewis scholars.', image_url: "http://books.google.com/books/content?id=1MHZ89h9WGwC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70auV180UTh5HwvIwJ6JeJvklqAahAgIA60rAPna_4shl3H54tjmOQHQ86mLAeRxkTzHQmtSgSpYltmy8HmKj0Uj-Go1ir2boYBnBnAC1Ew980cRtujz9vgN-qDKbVQhlalo-DB&source=gbs_api", year: "2005"},{title: "The Lion, the Witch and the Wardrobe (adult)", author: "C. S. Lewis", description: '
There are a thousand stories in the land of Narnia, and the first is about to be told in an extraordinary motion picture, The Chronicles of Narnia: The Lion, the Witch and the Wardrobe, from Walt Disney Pictures and Walden Media.

In the never-ending war between good and evil, The Chronicles of Narnia set the stage for battles of epic proportions. Some take place in vast fields, where the forces of light and darkness clash. But other battles occur within the small chambers of the heart and are equally decisive.

Journeys to the ends of the world, fantastic creatures, betrayals, heroic deeds and friendships won and lost -- all come together in an unforgettable world of magic. So join the battle to end all battles.

The second volume in
The Chronicles of Narnia®
The Lion, the Witch and the Wardrobe

Narnia .... a land frozen in eternal winter ... a country waiting to be set free.

Four adventurers step through a wardrobe door and into the land of Narnia -- a land enslaved by the power of the White Witch. But when almost all hope is lost, the return of the Great Lion, Aslan, signals a great change ... and a great sacrifice.

', image_url: "http://books.google.com/books/content?id=JhyVokzKnAYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73mXn-n1uh3Y6xoByXLYiKXq1bScyP9BpP66-YnDQltw-qOPam597c9zGmG938-82zxGWaHF2Jf6GnM3dqWsL3xoptL0SLQvsIKs3jLd7ZiD4XPADM7iR0ciC1Nx2j-Cg6jSKjQ&source=gbs_api", year: "2005"},{title: "Companion to Narnia, Revised Edition", author: "Paul F. Ford", description: '
Step into the Wardrobe

This peerless companion has served as an adventurer\'s passport to the land of Narnia for twenty-five years and was used by the cast and crew of the major motion picture The Chronicles of Narnia: The Lion, the Witch, and the Wardrobe. From Aslan, the Great Lion, to Zardeenah, the mysterious lady of the night, this comprehensive, accessible book contains hundreds of alphabetically arranged and indexed entries covering all the characters, events, places, and themes that Lewis brilliantly wove into his timeless and magical world.

For readers of all ages, this is the perfect guide for the enchanted world of C. S. Lewis\'s The Chronicles of Narnia.

', image_url: "http://books.google.com/books/content?id=oBa0B1b7UBYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72vq5ArSsxdWFWNwZSTIFkxPOlOtzPKI3pUp_TK7DSShcXpuVBA8u2Y1V33wbIUcUShEIQ6w4OkFpO3vkkAw-4Skc6TMY2zgZnJFRYIseA_iALY3xb14OB-8NWYT1XqDweWOsdo&source=gbs_api", year: "2005"},{title: "Journey Into Narnia", author: "Kathryn Ann Lindskoog", description: 'Renowned C. S. Lewis scholar Kathryn Lindskoog has here expanded and updated her classic study of Lewis\'s Narnia series originally titled, "The Lion of Judah in Never-Never Land: The Theology of C.S. Lewis Expressed in his fantasies for Children." Now with the addition of a study guide, including a look at the chronological order of the series of the seven books, the "Journey into Narnia" is filled with abundant and fresh new background information that not only puts the series in its context but explains many of the English terms unfamiliar to the American reader.
Ms. Lindskoog provides many Biblical parallels which illumine the plot. These concise insights and applications are designed for personal reading pleasure as well as being practical helpers for teachers, parents and ministers.
When C. S. Lewis read the first draft of this manuscript, he commented, "You are in the center of the target everywhere. For one thing, you know my work better than anyone else I\'ve met; certainly better than I do myself.... You (alone of the critics I\'ve met) realize the connection or even the unity of all the books-scholarly, fantastic, theological-and make me appear a single author, not a man who impersonates half a dozen authors, which is what I seem to most. This wins really very high marks indeed."
This important text of Lewis scholarship has been copied, widely used but never surpassed.', image_url: "http://books.google.com/books/content?id=2zLqI4RzfbYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70KA3LQnWSWrQ20iwhV9_pTHMp3geUaDxQrfQOcWX3trGzTjhMFvPZ8MW8K9VgCAJQ5iLpuLPsCaL1pROE9G3lbi-BJvBK7NDQm1sKxEjdSfR8hecqJHO_PTQ8vdq8XT21rFnJ7&source=gbs_api", year: "1998"}])
#unfortunate events
Book.create([{title: "A Series of Unfortunate Events #1: The Bad Beginning", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

Are you made fainthearted by death? Does fire unnerve you? Is a villain something that might crop up in future nightmares of yours? Are you thrilled by nefarious plots? Is cold porridge upsetting to you? Vicious threats? Hooks? Uncomfortable clothing?

It is likely that your answers will reveal A Series of Unfortunate Events to be ill-suited for your personal use. A librarian, bookseller, or acquaintance should be able to suggest books more appropriate for your fragile temperament. But to the rarest of readers we say, "Proceed, but cautiously."

', image_url: "http://books.google.com/books/content?id=sUtrdMJvFXAC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70Ib3Ey_I-fdwuXZRSU_eX5Zq-RuSGhxdo8oNncFsQUmvqY1yr6vamyL774RHLTCk7XnWtsPEe78UotOMpHQA6VipBwDhBIQ7BmOWQkfEsC_PtABTe16L8q-sDPfL_2FDvoOfRa&source=gbs_api", year: "2009"},{title: "Shouldn't You Be in School?", author: "Lemony Snicket", description: 'Is Lemony Snicket a detective or a smoke detector?
Do you smell smoke? Young apprentice Lemony Snicket is investigating a case of arson but soon finds himself enveloped in the ever-increasing mystery that haunts the town of Stain\'d-by-the-Sea. Who is setting the fires? What secrets are hidden in the Department of Education? Why are so many schoolchildren in danger? Is it all the work of the notorious villain Hangfire? How could you even ask that? What kind of education have you had?
Maybe you should be in school?', image_url: "http://books.google.com/books/content?id=LlHVAgAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72t72Jxc2Vd3tgs2AhbjU7Ru1LLigN2d7_2K250winHDYrXEyxcy6w8F-E_H30z2-AP_jFF6OaOxIuV_5ninRmbont-IQQzHivtXdWr983d6NcDUAPpk11Bl1Yk4roLcCLY_dkl&source=gbs_api", year: "2014"},{title: "A Series of Unfortunate Events #3: The Wide Window", author: "Lemony Snicket", description: '
Dear Reader,

If you have not read anything about the Baudelaire orphans, then before you read even one more sentence, you should know this: Violet, Klaus, and Sunny are kindhearted and quick-witted, but their lives, I am sorry to say, are filled with bad luck and misery. All of the stories about these three children are unhappy and wretched, and this one may be the worst of them all.If you haven\'t got the stomach for a story that includes a hurricane, a signalling device, hungry leeches, cold cucumber soup, a horrible villain, and a doll named Pretty Penny, then this book will probably fill you with despair.I will continue to record these tragic tales, for that is what I do. You, however, should decide for yourself whether you can possibly endure this miserable story.

With all due respect,

Lemony Snicket


', image_url: "http://books.google.com/books/content?id=N-pXlOoiHu8C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE732POjq6fE9XXBn9QXP2YPLFJGgRCo18QGFbA6Gqi9XoGx-F0GCtY8DdPvGOW0ebrhyS9wF_fmbElTFCdptl5D0TKOhBnsdSJRhUtTnCs36ZxEWnpLeCm4dj-6nuNTzCp8AtWOB&source=gbs_api", year: "2000"},{title: "A Series of Unfortunate Events Collection:", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

A Warning from the Publisher:

If you have come this far, it is likely too late. Readers who have experienced the first nine volumes in A Series of Unfortunate Events by Lemony Snicket are usually so weakened by their dreadful knowledge of the Baudelaire orphans\' story that they spend most of their time moaning and weeping, and have no strength to read The Slippery Slope, The Grim Grotto, The Penultimate Peril, or The End.

If, by chance, your moaning and weeping is more or less under control, there is no need to further risk your physical, emotional, and literary health by reading the four remaining volumes in the series. It would be better to regain your strength by spending your time indulging in less alarming activities, such as whistling or making cupcakes for the elderly. After all, this collection contains all of the calamities in the last four volumes of A Series of Unfortunate Events, including abandoned condiments, cigarette smoking, a shocking revelation, a ridiculous laugh, a fearsome storm, a herd of wild sheep, a truly haunting secret about the Baudelaire parents, another shocking revelation, and Phil. There is no need to expose yourself to such atrocities, not after all you\'ve been through already.

', image_url: "http://books.google.com/books/content?id=ZdLczKSj3MYC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72H645QflwDCUUlW71psGiNPoxnUoVzNYRJkyoQBPEi_BghQmqz8w-H1ns99Epx99y9I1YO5UFcxz_Z_HIg4skfqjT3IsSq9ql8Uu2EkadlE7fcmPZvbdAPbPAcPW6bFeSn8UfD&source=gbs_api", year: "2012"},{title: "A Series of Unfortunate Events: The Blank Book", author: "Lemony Snicket", description: '
This may look like just another book in Lemony Snicket\'s wretched series. Looks are deceiving.

Just as Lemony Snicket has spent years researching the distressing lives of the Baudelaire orphans, now you too can record your own unfortunate events. The blank pages of this fraudulent book are perfect for writing down any secretive and upsetting research of your own, including the names of suspicious teachers; secret codes you have devised; details of sinister conversations you have overheard; maps of places that are important to you, and other crucial and woeful information.

With cover art by Brett Helquist, a beautifully designed interior, a page of black–and–white stickers, and quotations from A Series of Unfortunate Events, this journal is the perfect way for fans of Lemony Snicket to begin documenting their own alarming lives.

Ages 9–11

', image_url: "http://books.google.com/books/content?id=roFEIDfXMy8C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73gcuEe3pvPEJTOC90Q5VOXjJjjZAgdo_-U2E6CD-I3jnDxpzXEkGT5LF1WTS4uoJykW1tiwNhPQ8tH6PDtVq3SKH4IQPCFrFzhl6DuXBzQmni1SzWvMQf6dKSYPvp2Fye9vwjB&source=gbs_api", year: "2004"},{title: "A Series of Unfortunate Events Collection: Books 1-3 with Bonus Material", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

Lemony Snicket’s unhappy tale of the unlucky Baudelaire siblings begins with The Bad Beginning. In this short bothersome book alone, the three orphans encounter a greedy and repulsive villain, itchy clothing, a disastrous fire, a plot to steal their fortune, and cold porridge for breakfast.

Should you not mind deadly serpents, slippery salamanders, lumpy beds, large brass reading lamps, lng knives, and terrible odors, then proceed with caution to the second book in the miserable series, The Reptile Room.

Readers unbothered by inclement weather, hungry leeches, and cold cucumber soup will want to continue with the third installment, The Wide Window. Others will not.

If you’ve got the stomach to wade through the first three tragic tales in Lemony Snicket’s A Series of Unfortunate Events, then this troubling collection might be the one for you. Several loathsome extras, including a compilation of unsettling quotations and a very disturbing portrait, await those who successfully complete the wretched journey. You’ve been warned!

', image_url: "http://books.google.com/books/content?id=hT-ta9Klty8C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70F7TyfDmeDnNRam3Zj42sGjiWgP38gqu0wPe1nS4xOu086HhKt3xQTzV9xdL8kDldeNtpXtq9TtbKMbtG-6A8B3s1Dd_E2L3N102o_L1PCkoYXTEJH_QHGXu2fiRnNQUMSDg3p&source=gbs_api", year: "2011"},{title: "A Series of Unfortunate Events: Lemony Snicket", author: "Lemony Snicket", description: '
A Warning from the Publisher:

Many readers have questions about Lemony Snicket, author of the distressing serial concerning the trials of the charming but unlucky Baudelaire orphans, published under the collective title A Series of Unfortunate Events. Before purchasing, borrowing, or stealing this book, you should be aware that it contains the answers to some of those questions, such as the following:

1. Who is Lemony?

2. Is there a secret organization I should know about?

3. Why does Lemony Snicket spend his time researching and writing distressing books concerning the Baudelaire orphans?

4. Why do all of Lemony Snicket\'s books contain a sad dedication to a woman named Beatrice?

5. If there\'s nothing out there, what was that noise?

Our advice to you is that you find a book that answers less upsetting questions than this one. Perhaps your librarian, bookseller, or parole officer can recommend a book that answers the question, "Aren\'t ponies adorable?"

', image_url: "http://books.google.com/books/content?id=X1T6qlyzMC0C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70fq-hM1ouy8ngTuPO-_XDydtyubd4iz5SQ0RM9psYs9g8g5Q6SkRirQ-vDjUDZFcAo1qN9-CP-qXpk0xa4fS-THnBWdGWzhiYqPVW-s4E8wrnrQUJF9gXCMPTN5EfJEVkDBg4C&source=gbs_api", year: "2003"},{title: "A Series of Unfortunate Events #7: The Vile Village", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

Dear Reader,

You have undoubtedly picked up this book by mistake, so please put it down. Nobody in their right mind would read this particular book about the lives of Violet, Klaus, and Sunny Baudelaire on purpose, because each dismal moment of their stay in the village of V.F.D. has been faithfully and dreadfully recorded in these pages. I can think of no single reason why anyone would want to open a book containing such unpleasant matters as migrating crows, an angry mob, a newspaper headline, the arrest of innocent people, the Deluxe Cell, and some very strange hats. It is my solemn and sacred occupation to research each detail of the Baudelaire children\'s lives and write them all down, but you may prefer to do some other solemn and sacred thing, such as reading another book instead.

With all due respect,

Lemony Snicket

', image_url: "http://books.google.com/books/content?id=iiO6gG1PgMIC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72yMAf62G2GAuf7u2j8Ct8EdW37YrZRic4J3rNBXUpXYn7_UM4zIQgdUK2YF2NbSE3DYcFOFLVTYaYRdamPnPEpNt3f6KOp31saVAnBnu7kiV3PA9eLJxrt9sZiL2jV8vBmZmsK&source=gbs_api", year: "2009"},{title: "A Series of Unfortunate Events #1: The Bad Beginning", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

Are you made fainthearted by death? Does fire unnerve you? Is a villain something that might crop up in future nightmares of yours? Are you thrilled by nefarious plots? Is cold porridge upsetting to you? Vicious threats? Hooks? Uncomfortable clothing?

It is likely that your answers will reveal A Series of Unfortunate Events to be ill-suited for your personal use. A librarian, bookseller, or acquaintance should be able to suggest books more appropriate for your fragile temperament. But to the rarest of readers we say, "Proceed, but cautiously."

', image_url: "http://books.google.com/books/content?id=sUtrdMJvFXAC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73v8eHrLTAaHtUhGgSMtTPOo90biUEY9SQHXw5Fz9z0WnOGYQ-WQtWY7s5-90xql95eUGxgSKkrZEBLuskOfm2U4t60IC2AgertmQLw53p_rmnf30dSeQGW66kkd1Mv5q1Bdtaq&source=gbs_api", year: "2009"},{title: "The Truth Behind a Series of Unfortunate Events", author: "Lois H. Gresh", description: '
The ultimate companion guide to A Series of Unfortunate Events--a must for fans of Lemony Snicket.

A Series of Unfortunate Events is one of the most popular children\'s series in the world and will be a major motion picture starring Jim Carrey and Meryl Streep coming this 2004 holiday season. Now comes The Reader\'s Guide to Lemony Snicket, the ultimate companion guide to these fun and wildly successful novels. Digging beneath the surface, Lois Gresh uses science, history and little known facts to dig deep into the world of A Series of Unfortunate Events and provide young readers everywhere with how-to hints and tips, quizzes, cool anecdotes, fun facts and information on everything Lemony. Including:

*Facts about handwriting analysis and forgery
*Killer leeches, crabs, fungi and peppermint--all you need to know
*The truth about hypnosis--and how to use it!
*Real child inventors and their amazing inventions
*How to build a telephone, a hot air balloon and an automatic harmonica
*Are you as smart as Violet & Claus--the ultimate quiz
*And much more!

The ultimate renegade book report on A Series of Unfortunate Events, this reader\'s guide is a must for millions of young fans everywhere.

', image_url: "http://books.google.com/books/content?id=P_P1CQAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73fF-9S9RXINRcNgJSe_RR3s6sdAvWuZ8b_c_hfuHgc0dUG7cdJiCCf-zsw-alESB3UZGnALnfmRo-qDEG5dDs5Omy8m6KHxpVk_ADFp2NnzFpQ1MELRDuJwA9jsWpiuDB5xhDZ&source=gbs_api", year: "2015"},{title: "The bad beginning", author: "Lemony Snicket", description: 'After the sudden death of their parents, the three Baudelaire children must depend on each other and their wits when it turns out that the distant relative who is appointed their guardian is determined to use any means necessary to get their fortune. Violet, Klaus, and Sunny Baudelaire are intelligent children. They are charming, and resourceful, and have pleasant facial features. Unfortunately, they are exceptionally unlucky.', image_url: "http://books.google.com/books/content?id=qaViKziA-E0C&printsec=frontcover&img=1&zoom=3&imgtk=AFLRE72r2K7lN5gjd4wDGAVZm0GE093050driQ2jbbbvAOrXpIxgYJ4xbUa-s0ZgpYivLE-j1vrHmI6PXNRgu8V-6PNgqeD9tbWCVGuoLeG50LH09LHjx3c&source=gbs_api", year: "2000"},{title: "A Series of Unfortunate Events #8: The Hostile Hospital", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

The Baudelaires need a safe place to stay—somewhere far away from terrible villains and local police. A quiet refuge where misfortune never visits. Might Heimlich Hospital be just the place? In Lemony Snicket\'s eighth ghastly installment in A Series of Unfortunate Events, I\'m sorry to say that the Baudelaire orphans will spend time in a hospital where they risk encountering a misleading newspaper headline, unnecessary surgery, an intercom system, anesthesia, heart-shaped balloons, and some very startling news about a fire.

', image_url: "http://books.google.com/books/content?id=3U36I7_WIXgC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73UBjJ1MkKjNi3QosE3FHwKnL_MueOTNSFX_xODbLULivTtdKNOxtiQsGWeSXJVdWXC-SIqR9RgWzPA7qpQ7T4pw7ezDVk06p1CDw2XGNa3GexKkNCZ1NlapbfUW8JEEmVt5xZx&source=gbs_api", year: "2009"},{title: "The Book Publishing Industry", author: "Albert N. Greco", description: '
The Book Publishing Industry focuses on consumer books (adult, juvenile, and mass market paperbacks) and reviews all major book categories to present a comprehensive overview of this diverse business. In addition to the insights and portrayals of the U.S. publishing industry, this book includes an appendix containing historical data on the industry from 1946 to the end of the twentieth century. The selective bibliography includes the latest literature, including works in marketing and economics that has a direct relationship with this dynamic industry. This third edition features a chapter on e-books and provides an overview of the current shift toward digital media in the US book publishing industry.

', image_url: "http://books.google.com/books/content?id=ib03AAAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72-RF5kNLmeZJSVZQULcpT-JbQcFEow-NavTdufdNm8XUiYQpynh3lh2OoyDcQ013B61aCECeJZpVpi4p8I-O16uOfrqR7ahA7dk2HxgV6o4_vc-W02n5bTbf5gPI91H0o4iB-p&source=gbs_api", year: "2013"},{title: "A Series of Unfortunate Events #13: The End", author: "Lemony Snicket", description: '
NOW A NETFLIX ORIGINAL SERIES

Like an off-key violin concert, the Roman Empire, or food poisoning, all things must come to an end. Thankfully, this includes A Series of Unfortunate Events by Lemony Snicket. The thirteenth and final installment in the groundbreaking series will answer readers\' most burning questions: Will Count Olaf prevail? Will the Baudelaires survive? Will the series end happily? If there\'s nothing out there, what was that noise?

Then again, why trouble yourself with unfortunate resolutions? Avoid the thirteenth and final book of Lemony Snicket\'s international bestselling series and you\'ll never have to know what happens.

', image_url: "http://books.google.com/books/content?id=946BRHw7-JMC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70jfo2BHrVaf6iOfz3l4VRs7jlkxfz4S-bPxK7aQjKzQWa8H6B98DGqibT5eOH4VbTgt6TCpHSGEMa4hb5zRuV2f_f8FjlmDd9DIy97oS2cxXSy4ZrlIRhWxfbyrnsTB8l1Yehk&source=gbs_api", year: "2009"},{title: "The Seeing Stone", author: "Holly Black", description: 'Thanks to the mysterious field guide left behind by their long-lost great-great-uncle Arthur Spiderwick, life for the Grace kids—Jared, Simon, and Mallory—is beyond weird. When Simon goes missing, Jared is convinced creatures from the faerie world have something to do with it. Mallory is not convinced. That is, until she and Jared have to contend with a band of menacing, marauding goblins. Simon is clearly in danger, and it’s up to Mallory and Simon to save him, before it’s too late…', image_url: "http://books.google.com/books/content?id=K31k4Dq9WU4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71j_t3C9yLUxTky9mZVMGlLtuKbmxOUC__rXcr57K2WC0ycyvlODfBFAGy61otCGGN6qnIKQj7r05jD3-yKjss77L7Sc8fwbB4_0ZWcZ2xXoLOqy3sq61hpFptwwF0wYhamR3SD&source=gbs_api", year: "2013"},{title: "When Did You See Her Last?", author: "Lemony Snicket", description: 'I should have asked the question "How could someone who was missing be in two places at once?" Instead, I asked the wrong question -- four wrong questions, more or less. This is the account of the second.
In the fading town of Stain\'d-by-the-Sea, young apprentice Lemony Snicket has a new case to solve when he and his chaperone are hired to find a missing girl. Is the girl a runaway? Or was she kidnapped? Was she seen last at the grocery store? Or could she have stopped at the diner? Is it really any of your business? These are All The Wrong Questions.
', image_url: "http://books.google.com/books/content?id=FKITnw0lfm8C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE724Wm34i7GDy1sr1xnLuUXisbhgA21YFTB6_hsxnmycUAt0wRKIFE2VT_76dSjgJzk6g4AGJm0ZmaGv3tDQe_T6zSJMWtZaPKuaxExuuZHEGti61BY4Yf_JxxQI3-UH0K-iE1Jc&source=gbs_api", year: "2013"},]);
#jk Rowling
Book.create([{title: "Harry Potter", author: "JK Rowling", description: '
A fabulous opportunity to own all five Harry Potter titles - Harry Potter and the Philosopher\'s Stone, Harry Potter and the Chamber of Secrets, Harry Potter and the Prisoner of Azkaban, Harry Potter and the Goblet of Fire and Harry Potter and the Order of the Phoenix - in a delightful new paperback package.

', image_url: "http://books.google.com/books/content?id=YvQ_AhkJpBUC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71FWPY3ykaOALntmUe-eweUuN3GUV7ahzlYu8tJIPG_YvNzAcWP9Wb5_dfZ70Cx3q0P2lCdMcMMB4XG4-JnXb9K041XZ6K8FZLLF8DYNI347WXepu7faET8_0-fjJC9rOAErh3D&source=gbs_api", year: "2004"},{title: "Harry Potter and the Cursed Child – Parts One and Two (Special Rehearsal Edition)", author: "J.K. Rowling", description: '
Based on an original new story by J.K. Rowling, Jack Thorne and John Tiffany, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. The play received its world premiere in London’s West End on 30th July 2016.

It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children.

While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places.

', image_url: "http://books.google.com/books/content?id=tcSMCwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73pqXO-2JsGxPOv3yT7xVm8R7CbJ1bMDbkYwxEg8P1AZd8HTmE7wp4UtpYbiDqMB6N-Nzy-6xZtVAy7C_sgnCubnowxtMcOgp11bl3pvlKftPZu3hYCfjr6bLyVM88ZU-ZeaEeo&source=gbs_api", year: "2016"},{title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", description: '
"Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing a coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter \'H\'."

Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!

', image_url: "http://books.google.com/books/content?id=wrOQLV6xB-wC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73fq7BLFz2C0N9QPk-QWCR_GQMvxZP2KHbkebgFD_dafsrS7i2pTuIiSQzyX0WKXdBGBnPba3wNfj6JEjQDwklGxc1xc2a4wNmPShT0NL1S51wBC81ATl3Pbv6-9q1nQ9s6NKmE&source=gbs_api", year: "2015"},{title: "Harry Potter and the Half-Blood Prince", author: "J.K. Rowling", description: '
"There it was, hanging in the sky above the school: the blazing green skull with a serpent tongue, the mark Death Eaters left behind whenever they had entered a building... wherever they had murdered..."

When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort\'s darkest secrets, and Dumbledore prepares him to face his destiny...

', image_url: "http://books.google.com/books/content?id=R7YsowJI9-IC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73TWM4TwxZI3XO1wEOpvx7yNlIc8oORD7ZV5qHpN-Bmimt3PPGfWzvEpF2ia_8liH2e-EWsb08Z9GXGUyv81lbgDzh3awU-YWGYgW6RjDPojyhYomP2v27C31fXDhMM9PtlHHBz&source=gbs_api", year: "2015"},{title: "Harry Potter and the Deathly Hallows", author: "J.K. Rowling", description: '
"\'Give me Harry Potter,\' said Voldemort\'s voice, \'and none shall be harmed. Give me Harry Potter, and I shall leave the school untouched. Give me Harry Potter, and you will be rewarded.\'"

As he climbs into the sidecar of Hagrid\'s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...

', image_url: "http://books.google.com/books/content?id=_oaAHiFOZmgC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71nj7uWbSelRevNGuXHCevtiihYa8E_BtV59ji2UPvjzA7S5L_-zaB762QjpJLIsA5tuMmrAUixs6wANMPQ3u-imT2bmfzwB6kHeKY4iHxG5hyzRPWtjaSb9IcOyOMp4DkkgPH8&source=gbs_api", year: "2015"},{title: "Harry Potter and the Prisoner of Azkaban", author: "J.K. Rowling", description: '
"\'Welcome to the Knight Bus, emergency transport for the stranded witch or wizard. Just stick out your wand hand, step on board and we can take you anywhere you want to go.\'"

When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it\'s the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry\'s tea leaves... But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss...

', image_url: "http://books.google.com/books/content?id=Sm5AKLXKxHgC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72FW4eBUg51CnmnPlmozlk8c7HD_SIX2YseUzByikIEUe6l_xVidh244JjhNgHVuzNFgEy1YRgCJFfeB_pvWu-nsm8tlp9zoeet5G_DucR-FIeN6sQKzk_M-VwW6z5931OQKr8e&source=gbs_api", year: "2015"},{title: "Harry Potter and the Chamber of Secrets", author: "J.K. Rowling", description: '
"\'There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year.\'"

Harry Potter\'s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone... Dobby\'s sinister predictions seem to be coming true.

', image_url: "http://books.google.com/books/content?id=5iTebBW-w7QC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70t4cJLbtRoB1-QyQUHzLYfQRr83vv-D7ZeIxWUa2u4osEWkSnY2m1ilGTVBENBzGLb7CrLSdm4o32brHKz-Ggp3nqNGoCXkc0eDjfSOm6Q29sllcF5iutU5Ji5HFbF94UDaQ3w&source=gbs_api", year: "2015"},{title: "Harry Potter and the Goblet of Fire", author: "J.K. Rowling", description: '
"\'There will be three tasks, spaced throughout the school year, and they will test the champions in many different ways ... their magical prowess - their daring - their powers of deduction - and, of course, their ability to cope with danger.\'"

The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn\'t stop Harry dreaming that he will win the competition. Then at Hallowe\'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!

', image_url: "http://books.google.com/books/content?id=etukl7GfrxQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70rMKOFKsEt9kx752jF-_eHxEjF7YIxs-8JxK3w41jd5HrhEuVgvvt7BlwA_SAMVn6YNXoE_4iIhbbMoMIQNRgso8_rgIJyD0s4qKRj2f8aAXVDIfcpT8ydGhtIzh9IaXrlzgB9&source=gbs_api", year: "2015"}]);
#Tolkien
Book.create([{title: "The Hobbit, Or, There and Back Again", author: "John Ronald Reuel Tolkien", description: 'THE GREATEST FANTASY EPIC OF OUR TIME

Bilbo Baggins was a hobbit who wanted to be left alone in quiet comfort. But the wizard Gandalf came along with a band of homeless dwarves. Soon Bilbo was drawn into their quest, facing evil orcs, savage wolves, giant spiders, and worse unknown dangers. Finally, it was Bilbo–alone and unaided–who had to confront the great dragon Smaug, the terror of an entire countryside . . .

This stirring adventure fantasy begins the tale of the hobbits that was continued by J.R.R. Tolkien in his bestselling epic The Lord of the Rings.
', image_url: "http://books.google.com/books/content?id=hFfhrCWiLSMC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73kfTuAfR9e9JJnzCc-bna7zTa7B8_0qhb-SRvElK52tQ0xdGzoTP6dl6dR4IxN79Pfb0n28-OMo9ukNLuvbRkta7GcJGvEyY7D7-AU-fuDlLPYytSsJYisbIBVBdziTJabDdqO&source=gbs_api", year: "1982"},{title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", description: 'The first volume in J.R.R. Tolkien\'s epic adventure THE LORD OF THE RINGS One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them

In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell into the hands of Bilbo Baggins, as told in The Hobbit. In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.

“A unique, wholly realized other world, evoked from deep in the well of Time, massively detailed, absorbingly entertaining, profound in meaning.” – New York Times', image_url: "http://books.google.com/books/content?id=aWZzLPhY4o0C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE723-PaShqoHipvQscpKB0V5S0I6aAOzvYFZ6Wo_7-OYd4CYNahMGtSPsG7h-Pm4wGir-Ac9aeLl4ukNlwQi9ztkJXMMxn0Tt3Znr4foQh_st8alPa4NDrCPuVz_D3AD6hv4XGOq&source=gbs_api", year: "2012"},{title: "The Two Towers", author: "J.R.R. Tolkien", description: 'The second volume in J.R.R. Tolkien\'s epic adventure THE LORD OF THE RINGS

One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them

Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs. Now they continue the journey alone down the great River Anduin—alone, that is, save for the mysterious creeping figure that follows wherever they go.

“Among the greatest works of imaginative fiction of the twentieth century. The book presents us with the richest profusion of new lands and creatures, from the beauty of Lothlórien to the horror of Mordor.” – Sunday Telegraph', image_url: "http://books.google.com/books/content?id=12e8PJ2T7sQC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70WS9KnocUKXNPYD4FxCGRiaRmB0iPl2IvWMDXqcav7q9hXJYGspdbMnDnuwgJxbfpDmXNqDrUQgdNIWkUVQSXBSeditXg4ruYgGMl0iYpLoYV6welbYMWQf-XPSfkECSfcNnNF&source=gbs_api", year: "2012"},{title: "The Return of the King", author: "J.R.R. Tolkien", description: 'The third volume in J.R.R. Tolkien\'s epic adventure THE LORD OF THE RINGS

One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them

As the Shadow of Mordor grows across the land, the Companions of the Ring have become involved in separate adventures. Aragorn, revealed as the hidden heir of the ancient Kings of the West, has joined with the Riders of Rohan against the forces of Isengard, and takes part in the desperate victory of the Hornburg. Merry and Pippin, captured by Orcs, escape into Fangorn Forest and there encounter the Ents. Gandalf has miraculously returned and defeated the evil wizard, Saruman. Sam has left his master for dead after a battle with the giant spider, Shelob; but Frodo is still alive—now in the foul hands of the Orcs. And all the while the armies of the Dark Lord are massing as the One Ring draws ever nearer to the Cracks of Doom.

“A triumphant close . . . a grand piece of work, grand in both conception and execution. An astonishing imaginative tour de force.” – Daily Telegraph

Includes the complete appendices and index for The Lord of the Rings trilogy.', image_url: "http://books.google.com/books/content?id=WZ0f_yUgc0UC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71bpQk03XvDSS-St_cGjqhuNdJgxkiNb9H0ooQnZt11Dya-nW9vBGAwUlTSpWmv31kVZh0bybu41Ka-gNZXX7LyMz30VE9g2eI-OSjZoJ2w0syUloR6BLTYvegsaup7GK_whwDK&source=gbs_api", year: "2012"},{title: "The Silmarillion", author: "J. R. John Ronald Reuel Tolkien", description: '"Majestic!...readers of THE HOBBIT and THE LORD OF THE RINGS...will find THE SILMARILLION a cosmology to call their own...medieval romances, fierce fairy tales and fiercer wars that ring with heraldic fury...it overwhelms the reader."
TIME
Those interested in J.R.R. Tolkien\'s Middle Earth should not be without this grand volume that tells the tragic tale of the struggle for control of the Silmarils, a struggle that would determine the history of the world long before the War of the Ring.', image_url: "http://books.google.com/books/content?id=uFKaXu23ovoC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE732yguD_ANC8INKHsa-JUP5dyMKDcKqstCMp8kChO7GV9kvqmC357iOnuEtID5kAnUybIQZwuC7v19Y7NGeC3Ka1dZf0UBiubwXpv99SPxv86qvt8rRbWRq313CyDKhwavKvVrB&source=gbs_api", year: "1979"},{title: "The Tale of the Children of Hurin", author: "John Ronald Reuel Tolkien", description: 'Long before the One Ring was forged in the fires of Mount Doom, one man--Húrin--dared to defy Morgoth, the first and greatest of the dark lords to plague Middle-earth. Thus did he and his children, Túrin and Niënor, earn the enmity of a merciless foe that would shape the destiny of all the ages to come.

Only J.R.R. Tolkien, the undisputed master of the fantastic, could have conceived this magical tale of Elves and Men united against a brutal foe. And only Christopher Tolkien, the master\'s son and literary heir, could have fit the pieces of his father\'s unfinished work together with such deep understanding and consummate artistry. With an introduction and appendiCes by Christopher Tolkien, who has also contributed maps and genealogy tables, and eight stunning paintings and twenty-five pencil drawings by Oscar-winning artist Alan Lee, The Children of Húrin at last takes its proper place as the very cornerstone of J.R.R. Tolkien\'s immortal achievement.', image_url: "http://books.google.com/books/content?id=v-7lwcn4kFcC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71HhWsQJc68ylpH0fEJp9BpptdK_H4BzP3kAYlrldT7RtgwJdQUMAOEPumL-OsuU3KZ5cC5pYKgWsIkSjbJH68nC-XvlnZO2T_dA5-lhLm0zrzPUdfkEJ18WOOsPgOWSBMCbKIM&source=gbs_api", year: "2010"}]);

#dunes
Book.create([{title: "Dune", author: "Frank Herbert", description: 'Here is the novel that will be forever considered a triumph of the imagination. Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, who would become the mysterious man known as Muad\'Dib. He would avenge the traitorous plot against his noble family--and would bring to fruition humankind\'s most ancient and unattainable dream.
A stunning blend of adventure and mysticism, environmentalism and politics, Dune won the first Nebula Award, shared the Hugo Award, and formed the basis of what it undoubtedly the grandest epic in science fiction.

', image_url: "http://books.google.com/books/content?id=B1hSG45JCX4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70aFyYsUaucf40WibzTOF6Jtkb0a6M0X_Hxu1U3hHYjTywepSvNHJlywhnZpoG_XLPto0KOnvJEG0OuTK1MFq3vAga1YFzKdXfCecx3J6e8xLBNdVGR1mOG98GpNrIpe-B7X0-f&source=gbs_api", year: "1965"},{title: "Dune: Red Plague", author: "Brian Herbert", description: '
An all-new Tale of the Great Schools of Dune -- written to accompany Navigators of Dune by the same authors (Tor, September 2016).

At the Publisher\'s request, this title is being sold without Digital Rights Management Software (DRM) applied.

', image_url: "http://books.google.com/books/content?id=5ug6DQAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73iF1DmYaT6IKjFpPViSBIjfC8TSUS2xWkvgsCcPYMFcD_7_a6bKQQ5Tn3bWYlkzq1R9v77EM3G3VpgWB7BYuNkCYUXh9Hhtr5SNQFgxRTiQOyVbaRpQ-LJ9IJIq1Uw1DdM5dxs&source=gbs_api", year: "2016"},{title: "Navigators of Dune", author: "Brian Herbert", description: '
Brian Herbert and Kevin J. Anderson\'s Navigators of Dune is the climactic finale of the Great Schools of Dune trilogy, set 10,000 years before Frank Herbert\'s classic Dune.

The story line tells the origins of the Bene Gesserit Sisterhood and its breeding program, the human-computer Mentats, and the Navigators (the Spacing Guild), as well as a crucial battle for the future of the human race, in which reason faces off against fanaticism. These events have far-reaching consequences that will set the stage for Dune, millennia later.

At the Publisher\'s request, this title is being sold without Digital Rights Management Software (DRM) applied.

', image_url: "http://books.google.com/books/content?id=D12dCwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73xHzNN1A2aMmRXWDlpchvWVGdVJRIzjf5-h7AsZkyvdW_zk54rLVgRbUa98fWvX4lxviyCvtfMnWz0QOPZebJA53SPKdgv1_CCX-VgeUreoqF2P6DNL4iMjvZnHYo2tGu383o0&source=gbs_api", year: "2016"},{title: "Dune: The Machine Crusade", author: "Brian Herbert", description: '
The breathtaking vision and incomparable storytelling of Brian Herbert and Kevin Anderson\'s Dune: The Butlerian Jihad, a prequel to Frank Herbert\'s classic Dune, propelled it to the ranks of speculative fiction\'s classics in its own right. Now, with all the color, scope, and fascination of the prior novel, comes Dune: The Machine Crusade.

More than two decades have passed since the events chronicled in The Butlerian Jihad. The crusade against thinking robots has ground on for years, but the forces led by Serena Butler and Irbis Ginjo have made only slight gains; the human worlds grow weary of war, of the bloody, inconclusive swing from victory to defeat.

The fearsome cymeks, led by Agamemnon, hatch new plots to regain their lost power from Omnius--as their numbers dwindle and time begins to run out. The fighters of Ginaz, led by Jool Noret, forge themselves into an elite warrior class, a weapon against the machine-dominated worlds. Aurelius Venport and Norma Cenva are on the verge of the most important discovery in human history-a way to "fold" space and travel instantaneously to any place in the galaxy.

And on the faraway, nearly worthless planet of Arrakis, Selim Wormrider and his band of outlaws take the first steps to making themselves the feared fighters who will change the course of history: the Fremen.

Here is the unrivaled imaginative power that has put Brian Herbert and Kevin Anderson on bestseller lists everywhere and earned them the high regard of readers around the globe. The fantastic saga of Dune continues in Dune: The Machine Crusade.



At the Publisher\'s request, this title is being sold without Digital Rights Management Software (DRM) applied.

', image_url: "http://books.google.com/books/content?id=dLbwPpBYDl8C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71uQ3AMPytLYRBcdHvJyHNH5I3NmyHdOMGKHcfwD70uRgtZDtmiZBQPjtmCmurpgRlfICNgZmSe8urqm39uZBe1BkZVW0OKUGu2w0oYjbBVL-sMU3Dae3frG7eCkjiPeK8aQbzJ&source=gbs_api", year: "2004"},{title: "Dreamer of Dune", author: "Brian Herbert", description: '
Everyone knows Frank Herbert\'s Dune.

This amazing and complex epic, combining politics, religion, human evolution, and ecology, has captured the imagination of generations of readers. One of the most popular science fiction novels ever written, it has become a worldwide phenomenon, winning awards, selling millions of copies around the world. In the prophetic year of 1984, Dune was made into a motion picture directed by David Lynch, and it has recently been produced as a three-part miniseries on the Sci-Fi Channel. Though he is best remembered for Dune, Frank Herbert was the author of more than twenty books at the time of his tragic death in 1986, including such classic novels as The Green Brain, The Santaroga Barrier, The White Plague and Dosadi Experiment.

Brian Herbert, Frank Herbert\'s eldest son, tells the provocative story of his father\'s extraordinary life in this honest and loving chronicle. He has also brought to light all the events in Herbert\'s life that would find their way into speculative fiction\'s greatest epic.

From his early years in Tacoma, Washington, and his education at the University of Washington, Seattle, and in the Navy, through the years of trying his hand as a TV cameraman, radio commentator, reporter, and editor of several West Coast newspaper, to the difficult years of poverty while struggling to become a published writer, Herbert worked long and hard before finding success after the publication of Dune in 1965. Brian Herbert writes about these years with a truthful intensity that brings every facet of his father\'s brilliant, and sometimes troubled, genius to full light.

Insightful and provocative, containing family photos never published anywhere, this absorbing biography offers Brian Herbert\' unique personal perspective on one of the most enigmatic and creative talents of our time.

Dreamer of Dune is a 2004 Hugo Award Nominee for Best Related Work.

', image_url: "http://books.google.com/books/content?id=hlbSrcGnhRIC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE71XkJy4ok8P1qmFUamSiTEM1AhyU2R1_3ZW56jPznKxU4V437b7bfdHDWhhPXbMpcm4DZbA8DNSY1kZi71uVH2KMLl0MizU3NXcQQm4HK5455szpB6-VVzHBUvub39TUbyV04kJ&source=gbs_api", year: "2004"},{title: "Children of Dune", author: "Frank Herbert", description: 'The desert planet of Arrakis has begun to grow green and lush. The life-giving spice is abundant. The nine-year-old royal twins, possesing their father\'s supernatural powers, are being groomed as Messiahs.
But there are those who think the Imperium does not need messiahs...

', image_url: "http://books.google.com/books/content?id=RxxwnkPHlfEC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE72iDtM2-wFnpEuzmn41jb23IwjtZRfr4zRlnnr653gES4uvKrFevBcIB6KVxNaqpUV3YJfh_TW4-b_YYsEgwbYLwJ1fB2eTWTBUly5t4gAb7zIH4M-T-suK66J8k6J9ibW6xKdj&source=gbs_api", year: "2008"},{title: "Dune and Philosophy", author: "Jeffery Nicholas", description: 'Frank Herbert’s Dune is the biggest-selling science fiction story of all time; the original book and its numerous sequels have transported millions of readers into the alternate reality of the Duniverse. Dune and Philosophy raises intriguing questions about the Duniverse in ways that will be instantly meaningful to fans. Those well-known characters--Paul Atreides, Baron Harkkonen, Duncan Idaho, Stilgar, the Bene Gesserit witches--come alive again in this fearless philosophical probing of some of life’s most basic questions.

Dune presents us with a vast world in which fanaticism is merciless and history is made by the interplay of ruthless conspiracies. Computers have long been outlawed, so that the abilities of human beings are developed to an almost supernatural level. The intergalactic empire controlled by a privileged aristocracy raises all the old questions of human interaction in a strange yet weirdly familiar setting.

Do secret conspiracies direct the future course of human political evolution? Can manipulation of the gene pool create a godlike individual? Are strife and bloodshed essential to progress? Can we know so much about the future that we lose the power to make a difference? Does reliance on valuable resources--such as "spice,” oil, and water--place us at the mercy of those who can destroy those resources? When gholas are reconstructed from the cells of dead people and given those people’s memories, is the ghola the dead person resurrected? Can the exploitation of religion for political ends be reduced to a technique?

Philosophers who are fans of Dune will trek through the desert of the Duniverse seeing answers to these and other questions.', image_url: "http://books.google.com/books/content?id=9QYJe3eEbu0C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73b6x6Cp-ptVKGHiX_3aoondSt2zHoZ_gah-ZH4cZg-4sbh_iaudFVX5Cu2vBkZqEi8ZZfRXhWhpRlAQvJV-HnCCQWZVstWCoT85Xmlg6NuCJ2mhPyAq_EZm7GnhWmZfd_A45ze&source=gbs_api", year: "2011"},{title: "Dune is a Four-letter Word", author: "Griselda Sprigg", description: '\'Dune is a four-letter word\', said Griselda Sprigg on the first day of her family\'s attempt to make the first motorised crossing of the forbidding Simpson desert. \'And so is bloody spinifex.\' Dune is a Four-letter Word tells the story of Griselda and Reg Sprigg\'s pioneering desert adventures - not only in the Simpson Desert but all over the vast Australian outback. Griselda\'s story is also the story of Arkaroola Sanctuary, how she, with her husband, Reg, turned a drought-stricken sheep station into the magnificent flora and fauna reserve and tourist mecca it is today. The late Rod Maclean was an author, journalist and television reporter and the late Griselda Sprigg was the first white woman to cross the Simpson Desert.', image_url: "http://books.google.com/books/content?id=pQF3QWxaQ3AC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE70svJwL5vR-WzPfexAAK469uOrScmJYZ2js31ohAwVOqJuHSHPG5_1CCfqgw3-wv3_GWW6lWAu1kUCTEYyeovIyG4hLLPRnq7n8-0V7kpFS0R8tnknIITSmJZ-geO7N6LZsBB7t&source=gbs_api", year: "2001"},
{title: "Heretics of Dune", author: "Frank Herbert", description: 'With more than ten million copies sold, Frank Herbert\'s magnificent Dune books stand among the major achievements of the human imagination. In this, the fifth and most spectacular Dune book of all, the planet Arrakis--now called Rakis--is becoming desert again. The Lost Ones are returning home from the far reaches of space. The great sandworms are dying. And the children of Dune\'s children awaken from empire as from a dream, wielding the new power of a heresy called love...', image_url: "http://books.google.com/books/content?id=0ZKAkX0W4A4C&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73PR3P5CbgJK6KkvUMor0PUVMjZpAETXGBpYjxv2Brx-ZspTaeGlHIuE-ZE6351lSLHFUB7X3j6Dhs6ZrTj4L9c0HI7NxUt9IxUzjP-1KaixFUtE-7Jcja3u_TIMPzs6FxPqjw8&source=gbs_api", year: "1987"},{title: "Building a Dune Buggy - The Essential Manual", author: "Paul Shakespeare", description: 'There has been a huge resurgence of interest in Dune Buggies (Beach Buggies) - kit cars based on the chassis and running gear of fatally corroded VW Beetles. Here is the complete step-by-step practical guide to the equipment and building techniques needed to build a Buggy, as well as sound guidance on the choice of donor car and new components. With this manual in your workshop, you can build any VW-based Dune Buggy avoiding all the common pitfalls and money-sapping mistakes, and end up with a superb, roadworthy multi-purpose vehicle.', image_url: "http://books.google.com/books/content?id=3R2AV8hOTLUC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE731nQ7eo1fQjeKKTN3SxyctIuFsW7xpwVzmwdj4TpWDjb0s-C4r5DqFESDkQ3Ul3o4qAglF5DyemZZTpoiORdahshHibC76pPA4MVTrqUCyUDJMyt0hVZpJ3e0msnfgUYP0ITIS&source=gbs_api", year: "2006"}]);

comments = [
  "I liked this book. It was interesting.",
  "I hated this book. It was awful.",
  "I have no feelings one way or another",
  "Meh",
  "First!!11",
  "Hi mom!"
]
Book.all.each do |book|
  5.times do
    Comment.create(user_id: rand(1...20), book_id: book.id, body: comments[rand(0..5)])
  end
end

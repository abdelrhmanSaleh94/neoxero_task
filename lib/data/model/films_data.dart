import './films.dart';

const DUMMY_FILMS = const [
  Films(
      id: 'm1',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMjA0YjYyZGMtN2U0Ni00YmY4LWJkZTItYTMyMjY3NGYyMTJkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX675_AL_.jpg',
      title: 'Frozen II',
      description:
          'Anna, Elsa, Kristoff, Olaf and Sven leave Arendelle to travel to an ancient, autumn-bound forest of an enchanted land. They set out to find the origin of Elsa\'s powers in order to save their kingdom.',
      trailer: 'https://www.youtube.com/watch?v=bwzLiQZDw2I',
      amzonUrl: 'https://www.amazon.com/Frozen-2-Kristen-Bell/dp/B081NC9X4Z',
      imdbUrl: 'https://www.imdb.com/title/tt4520988/?ref_=fn_al_tt_1'),
  Films(
      id: 'm2',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BNjRlZmM0ODktY2RjNS00ZDdjLWJhZGYtNDljNWZkMGM5MTg0XkEyXkFqcGdeQXVyNjAwMjI5MDk@._V1_SY1000_CR0,0,639,1000_AL_.jpg',
      title: 'Mission: Impossible - Fallout',
      description:
          "Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.",
      trailer: 'https://www.youtube.com/watch?v=wb49-oV0F78',
      amzonUrl: '',
      imdbUrl: ''),
  Films(
      id: 'm3',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMjIxOTI0MjU5NV5BMl5BanBnXkFtZTgwNzM4OTk4NTE@._V1_SY1000_SX675_AL_.jpg',
      title: 'Bridge of Spies',
      description:
          'During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.',
      trailer: 'https://www.youtube.com/watch?v=7JnC2LIJdR0',
      amzonUrl: '',
      imdbUrl: ''),
  Films(
      id: 'm4',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BN2YwMTU4NWQtN2JjZC00NDU2LWI3ZGYtYTVjOTBmNzMwNGM3XkEyXkFqcGdeQXVyNzI5NjYzODI@._V1_.jpg',
      title: ' 2الفيل الأزرق',
      description:
          'إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد. دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً مثال نص عربى كبير نص عربى غير منظم , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة تم توليد هذا النص العرب من موقعه لفه هذا النص يمكن أن يتم تركيبه على أي تصميم, ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص،\' غير منسق هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن.. التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي',
      trailer: 'https://www.youtube.com/watch?v=FxA9423QMes',
      amzonUrl: null,
      imdbUrl: 'https://www.imdb.com/title/tt10515086/?ref_=nv_sr_srsg_0'),
  Films(
      id: 'm5',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg',
      title: 'Joker',
      description:
          'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.',
      trailer: 'https://www.youtube.com/watch?v=zAGVQLHvwOY',
      amzonUrl: 'https://www.amazon.com/Joker-Joaquin-Phoenix/dp/B07YLP14JH',
      imdbUrl: 'https://www.imdb.com/title/tt7286456/'),
  Films(
      id: 'm6',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BYmE5Yjg0MzktYzgzMi00YTFiLWJjYTItY2M5MmI1ODI4MDY3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_CR0,0,631,1000_AL_.jpg',
      title: "Dr. Seuss' The Grinch",
      description:
          'A grumpy Grinch plots to ruin Christmas for the village of Whoville.',
      trailer: 'https://www.youtube.com/watch?v=Bf6D-i8YpHg',
      amzonUrl:
          'https://www.amazon.com/gp/video/detail/B07K6XX8TB/ref=atv_mv_hom_1_c_QX8PvD_brws_7_1',
      imdbUrl: 'https://www.imdb.com/title/tt2709692/?ref_=nv_sr_srsg_0'),
  Films(
      id: 'm7',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMWYwOThjM2ItZGYxNy00NTQwLWFlZWEtM2MzM2Q5MmY3NDU5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg',
      title: 'Klaus',
      description:
          "A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg's new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.",
      trailer: 'https://www.youtube.com/watch?v=taE3PwurhYM',
      amzonUrl: null,
      imdbUrl: 'https://www.imdb.com/title/tt4729430/?ref_=tt_sims_tt'),
  Films(
      id: 'm8',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
      title: 'The Shawshank Redemption',
      description:
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      trailer: 'https://www.youtube.com/watch?v=6hB3S9bIaco',
      amzonUrl:
          'https://www.amazon.com/Shawshank-Redemption-Tim-Robbins/dp/B001XUJNJ0/ref=sr_1_1?keywords=The+Shawshank+Redemption+%281994%29&qid=1577373347&s=instant-video&sr=1-1',
      imdbUrl:
          'https://www.imdb.com/title/tt0111161/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd-322d-4646-8962-327b42fe94b1&pf_rd_r=BTCH8K9SNW5CKGNNN3VG&pf_rd_s=center-1&pf_rd_t=15506&pf_rd_i=top&ref_=chttp_tt_1'),
  Films(
      id: 'm9',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg',
      title: 'The Dark Knight',
      description:
          "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      trailer: 'https://www.youtube.com/watch?v=EXeTwQWrcwY',
      amzonUrl:
          'https://www.amazon.com/Dark-Knight-Christian-Bale/dp/B001I189MQ/ref=sr_1_1?keywords=The+Dark+Knight+%282008%29&qid=1577373525&s=instant-video&sr=1-1',
      imdbUrl:
          'https://www.imdb.com/title/tt0468569/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd-322d-4646-8962-327b42fe94b1&pf_rd_r=BTCH8K9SNW5CKGNNN3VG&pf_rd_s=center-1&pf_rd_t=15506&pf_rd_i=top&ref_=chttp_tt_4'),
  Films(
      id: 'm10',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg',
      title: 'Inception ',
      description:
          "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
      trailer: 'https://www.youtube.com/watch?v=8hP9D6kZseM',
      amzonUrl:
          'https://www.amazon.com/Inception-Leonardo-DiCaprio/dp/B0047WJ11G/ref=sr_1_1?keywords=inception&qid=1577373696&s=instant-video&sr=1-1',
      imdbUrl:
          'https://www.imdb.com/title/tt1375666/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd-322d-4646-8962-327b42fe94b1&pf_rd_r=BTCH8K9SNW5CKGNNN3VG&pf_rd_s=center-1&pf_rd_t=15506&pf_rd_i=top&ref_=chttp_tt_13'),
  Films(
      id: 'm11',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,665,1000_AL_.jpg',
      title: 'The Matrix',
      description:
          "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
      trailer: 'https://www.youtube.com/watch?v=m8e-FF8MsqU',
      amzonUrl:
          'https://www.amazon.com/Matrix-Keanu-Reeves/dp/B000GJPL1S/ref=sr_1_1?keywords=The+Matrix+%281999%29&qid=1577373826&s=instant-video&sr=1-1',
      imdbUrl:
          'https://www.imdb.com/title/tt0133093/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd-322d-4646-8962-327b42fe94b1&pf_rd_r=BTCH8K9SNW5CKGNNN3VG&pf_rd_s=center-1&pf_rd_t=15506&pf_rd_i=top&ref_=chttp_tt_16'),
];

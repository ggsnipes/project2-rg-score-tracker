createdb scoretracker

create table songs(
    id serial primary key,
    name text,
    difficulty integer,
    scores integer,
    maxnotes integer);

create table users(
    id serial primary key,
    username text,
    email text,
    password_digest text);


insert into songs (name, difficulty, maxnotes) values ('Blue Bird feat. Kanae Asaba', 8, 900);
insert into songs (name, difficulty, maxnotes) values ('Fantastic Merry-Go-Round', 9, 1061);
insert into songs (name, difficulty, maxnotes) values ('VR - Virtual Reality (prod.by Snail''s House)', 9, 918);
insert into songs (name, difficulty, maxnotes) values ('808monkey', 9, 914);
insert into songs (name, difficulty, maxnotes) values ('黒紅掬い', 9, 916);
insert into songs (name, difficulty, maxnotes) values ('踊', 9, 818);
insert into songs (name, difficulty, maxnotes) values ('AMICABLE', 10, 1259);
insert into songs (name, difficulty, maxnotes) values ('ANEMONE', 10, 1069);
insert into songs (name, difficulty, maxnotes) values ('Ariah', 10, 1090);
insert into songs (name, difficulty, maxnotes) values ('Brave Spirits', 10, 1250);
insert into songs (name, difficulty, maxnotes) values ('EMOTiON TRiPPER', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Get set, Go! feat.Kanae Asaba', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Harmonia', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('HEARTACHE', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('N.O.', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('No Day But Today!', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Non Stop Rock', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('P.O.W.E.R.', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('PIRATES BLADE', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Prohibited Props', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('SPARK IN THE NIGHT', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Stepper', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Votania Beat', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Wonderful Escape', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('アクマフカ', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('あいつら全員同窓会', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('愛しくてラヴィンユー ft. マナ', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('怪物', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('口カラ凸ゲキ', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('めでてえ', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('ナイトフィクション', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('オドループ', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('シル・ヴ・プレジデント', 10, 2000);
insert into songs (name, difficulty, maxnotes) values ('Banger Banger Banger Banger', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('DISPARATE', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Divine Heaven', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('DREAM OF SPACE UFO ABDUCTION', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Emera', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Ergosphere', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('FINALLY BLAZE', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Game Changers', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Hat Surprise', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('ILAYZA', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('kors k''s How to make OTOGE CORE', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Lawes''s Parotia', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Legendary Treasures', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Nocturnal 2097', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Onyx', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Pout', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('SOLID WYVERN', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Souhait bleu', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Tail Lights', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Ventriloquist', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Victory Of Ravers', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('Xyndrome', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('10000 MILES AWAY', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('青の洞窟', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('デモーニッシュ', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('《GRANDMASTER》', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('グッバイ宣言', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('ぐだふわエブリデー', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('ハイテックトキオ', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('ミュージック・アワー', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('オールトの雲', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('ウツシミウツシ', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('月とミルク', 11, 2500);
insert into songs (name, difficulty, maxnotes) values ('ABSOLUTE EVIL', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Aftermath', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('ALTERNATOR', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Angel''s Ladder', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Arkadia', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Binary Black Hole', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Don''t believe the hype', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Fegrix', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Flying Castle', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('GiGaGaHell', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('GRAVITON', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('hard-wired', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('LIVE DRIVING!! feat. 花たん', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('n/a', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('One for All', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('PLASMA SOUL NIGHT feat. Nana Takahashi / 709sec.', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Push on Beats!~音ゲの国のeX-ストリーマー~', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Purple Perplex', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('RAGE feat.H14 of LEONAIR', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Silver Bullet', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Skreaming for Salvation', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Smalt #28598F', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('TOMAHAWK', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('Triple Cross', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('WHA', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('2 Beasts Unchained', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('天邪鬼', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('雪上断火', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('烽火連天の刃', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('ピアノ独奏無言歌 灰燼', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('禊', 12, 3000);
insert into songs (name, difficulty, maxnotes) values ('逆月', 12, 3000);

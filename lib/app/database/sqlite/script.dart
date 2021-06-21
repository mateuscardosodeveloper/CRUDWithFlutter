
final createTable = '''
  CREATE TABLE contact(
    id INT NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,telefone CHAR(16) NOT NULL
    ,email VARCHAR(100) NOT NULL
    ,url_avatar VARCHAR(350) NOT NULL 
  )
''';

final insert1 = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES ('Irineu', '(11)99412-5555', 'irineu@email.com', 'https://cdn.pixabay.com/photo/2021/05/31/05/55/naruto-6297820_960_720.jpg')
''';

final insert2 = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES ('Ronaldo', '(11)99412-4545', 'ronaldo@email.com', 'https://cdn.pixabay.com/photo/2021/05/17/06/02/man-6259833_960_720.png')
''';

final insert3 = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES ('Amanda', '(11)99412-2834', 'amanda@email.com', 'https://cdn.pixabay.com/photo/2021/06/04/07/05/naruto-6309017_960_720.jpg')
''';

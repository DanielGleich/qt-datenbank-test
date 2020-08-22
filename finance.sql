-- SQLite Code
CREATE TABLE category (
	id				INTEGER NOT NULL,
	name			TEXT NOT NULL,
	PRIMARY KEY ( id )
);

CREATE TABLE finance (
	id				INTEGER NOT NULL,
	date			TEXT NOT NULL,
	inn				REAL NOT NULL,			-- in wäre Schlüsselwort => inn ;)
	out				REAL NOT NULL,
	balance			REAL NOT NULL,
	text			TEXT NOT NULL,
	categoryID		INTEGER NOT NULL,
	FOREIGN KEY ( categoryID ) REFERENCES category( id ),
	PRIMARY KEY ( id )
);

INSERT INTO category VALUES ( 1, 	'Spende' );
INSERT INTO category VALUES ( 2, 	'Büro' );
INSERT INTO category VALUES ( 3, 	'Spielzeug' );
INSERT INTO category VALUES ( 4, 	'Bastelartikel' );
INSERT INTO category VALUES ( 5, 	'Reparatur' );
INSERT INTO category VALUES ( 6, 	'Übertrag' );
INSERT INTO category VALUES ( 7, 	'Investition' );
INSERT INTO category VALUES ( 8, 	'Lebensmittel' );
INSERT INTO category VALUES ( 9, 	'Mobilar' );
INSERT INTO category VALUES ( 10, 	'Fortbildung' );

INSERT INTO finance VALUES ( 1,		"2019-01-01",	0,		0,			1234.55,	'Übertrag',				6 );
INSERT INTO finance VALUES ( 2,		"2019-01-05",	112.01,	0,			1346.56,	'Spenden',				1 );
INSERT INTO finance VALUES ( 3,		"2019-01-22",	0,		77,			1269.56,	'Eltern-Mittagessen',	8 );
INSERT INTO finance VALUES ( 4,		"2019-02-16",	0,		108.22,		1161.34,	'Lego',					4 );
INSERT INTO finance VALUES ( 5,		"2019-02-24",	0,		1001.01,	160.33,		'Fenster-Erdgeschoss',	5 );
INSERT INTO finance VALUES ( 6,		"2019-02-28",	0,		123.23,		37.1,		'Drucker',				3 );
INSERT INTO finance VALUES ( 7,		"2019-03-02",	788.9,	0,			826,		'Spenden',				1 );
INSERT INTO finance VALUES ( 8,		"2019-03-21",	0,		815.5,		10.05,		'Computer',				2 );
INSERT INTO finance VALUES ( 9,		"2019-04-07",	220.9,	0,			231.4,		'Spenden',				1 );
INSERT INTO finance VALUES ( 10,	"2019-05-25",	0,		432,		-200.6,		'Wasserschaden',		5 );
INSERT INTO finance VALUES ( 11,	"2019-06-02",	3000,	0,			2799.4,		'Investition',			7 );
INSERT INTO finance VALUES ( 12,	"2019-06-12",	0,		22.45,		2776.95,	'Kinder-Mittagessen',	8 );
INSERT INTO finance VALUES ( 13,	"2019-06-12",	0,		277.88,		2499.07,	'Lernpuzzle',			9 );
INSERT INTO finance VALUES ( 14,	"2019-06-30",	0,		312.12,		2186.95,	'Übertrag',				4 );



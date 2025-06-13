-- Adminer 5.3.0 PostgreSQL 16.9 dump

\connect "db_silberschatz";

DROP TABLE IF EXISTS "advisor";
CREATE TABLE "public"."advisor" (
    "s_ID" character varying(5) NOT NULL,
    "i_ID" character varying(5),
    CONSTRAINT "advisor_pkey" PRIMARY KEY ("s_ID")
)
WITH (oids = false);

INSERT INTO "advisor" ("s_ID", "i_ID") VALUES
('12345',	'10101'),
('44553',	'22222'),
('45678',	'22222'),
('00128',	'45565'),
('76543',	'45565'),
('23121',	'76543'),
('98988',	'76766'),
('76653',	'98345'),
('98765',	'98345');

DROP TABLE IF EXISTS "classroom";
CREATE TABLE "public"."classroom" (
    "building" character varying(15) NOT NULL,
    "room_number" character varying(7) NOT NULL,
    "capacity" numeric(4,0),
    CONSTRAINT "classroom_pkey" PRIMARY KEY ("building", "room_number")
)
WITH (oids = false);

INSERT INTO "classroom" ("building", "room_number", "capacity") VALUES
('Packard',	'101',	500),
('Painter',	'514',	10),
('Taylor',	'3128',	70),
('Watson',	'100',	30),
('Watson',	'120',	50);

DROP TABLE IF EXISTS "course";
CREATE TABLE "public"."course" (
    "course_id" character varying(8) NOT NULL,
    "title" character varying(50),
    "dept_name" character varying(20),
    "credits" numeric(2,0),
    CONSTRAINT "course_pkey" PRIMARY KEY ("course_id")
)
WITH (oids = false);

INSERT INTO "course" ("course_id", "title", "dept_name", "credits") VALUES
('BIO-101',	'Intro. to Biology',	'Biology',	4),
('BIO-301',	'Genetics',	'Biology',	4),
('BIO-399',	'Computational Biology',	'Biology',	3),
('CS-101',	'Intro. to Computer Science',	'Comp. Sci.',	4),
('CS-190',	'Game Design',	'Comp. Sci.',	4),
('CS-315',	'Robotics',	'Comp. Sci.',	3),
('CS-319',	'Image Processing',	'Comp. Sci.',	3),
('CS-347',	'Database System Concepts',	'Comp. Sci.',	3),
('EE-181',	'Intro. to Digital Systems',	'Elec. Eng.',	3),
('FIN-201',	'Investment Banking',	'Finance',	3),
('HIS-351',	'World History',	'History',	3),
('MU-199',	'Music Video Production',	'Music',	3),
('PHY-101',	'Physical Principles',	'Physics',	4),
('MAT15925',	'CÁLCULO I',	'MAT',	6),
('INF15927',	'PROGRAMAÇÃO I',	'INF',	3),
('MAT15932',	'ÁLGEBRA LINEAR',	'MAT',	4),
('ELE15934',	'CIRCUITOS ELÉTRICOS I',	'ELE',	4),
('ELE15941',	'ELETROMAGNETISMO I',	'ELE',	4),
('ELE15924',	'PRÁTICAS DE LABORATÓRIO',	'ELE',	1),
('INF16189',	'INTRODUÇÃO À ENGENHARIA DE COMPUTAÇÃO',	'INF',	3),
('INF15973',	'LÓGICA PARA COMPUTAÇÃO I ',	'INF',	4),
('MAT15931',	'CÁLCULO II',	'MAT',	4),
('INF16153',	'PROGRAMAÇÃO II',	'INF',	3),
('INF16190',	'PROJETO INTEGRADO DE COMPUTAÇÃO I',	'INF',	1),
('FIS13696',	'FÍSICA I',	'FIS',	4),
('ELE15929',	'DESENHO ASSISTIDO POR COMPUTADOR',	'ELE',	2),
('HID15930',	'FUNDAMENTOS DE ENGENHARIA AMBIENTAL',	'HID',	2),
('ELE15935',	'CIRCUITOS LÓGICOS',	'ELE',	3),
('MAT15936',	'CÁLCULO III',	'MAT',	4),
('MAT15937',	'CÁLCULO IV',	'MAT',	4),
('INF15974',	'ESTRUTURAS DE DADOS',	'INF',	3),
('FIS13735',	'FÍSICA II',	'FIS',	4),
('INF16154',	'ARQUITETURA E ORGANIZAÇÃO DE COMPUTADORES',	'INF',	3),
('ELE15940',	'CIRCUITOS ELÉTRICOS II',	'ELE',	4),
('STA15932',	'PROBABILIDADE E ESTATÍSTICA',	'STA',	4),
('INF15933',	'PROGRAMAÇÃO ORIENTADA A OBJETOS',	'INF',	3),
('FIS13737',	'FÍSICA EXPERIMENTAL I',	'FIS',	1),
('ELE16191',	'SINAIS E SISTEMAS',	'ELE',	4),
('ELE15944',	'ELETROMAGNETISMO II',	'ELE',	4),
('INF15980',	'SISTEMAS OPERACIONAIS',	'INF',	3),
('ELE15943',	'ELETRÔNICA BÁSICA I',	'ELE',	5),
('INF15975',	'TÉCNICAS DE BUSCA E ORDENAÇÃO',	'INF',	3),
('INF16192',	'COMPUTABILIDADE E COMPLEXIDADE',	'INF',	4),
('ELE15951',	'ANÁLISE E MODELAGEM DE SISTEMAS DINÂMICOS',	'ELE',	4),
('INF15978',	'ENGENHARIA DE SOFTWARE I',	'INF',	4),
('INF16158',	'REDES DE COMPUTADORES',	'INF',	3),
('ELE15942',	'SISTEMAS EMBARCADOS I',	'ELE',	5),
('INF16193',	'PROJETO INTEGRADO DE COMPUTAÇÃO II - SOFTWARE',	'INF',	2),
('ELE16194',	'PROJETO INTEGRADO DE COMPUTAÇÃO II - HARDWARE',	'ELE',	2),
('INF16161',	'PARADIGMAS DE PROGRAMAÇÃO',	'INF',	3),
('ELE15956',	'SISTEMAS REALIMENTADOS',	'ELE',	4),
('INF16165',	'METODOLOGIA DE PESQUISA CIENTÍFICA',	'INF',	3),
('EPR12990',	'ENGENHARIA ECONÔMICA',	'EPR',	4),
('INF15979',	'BANCO DE DADOS I',	'INF',	4),
('ELE16195',	'INSTALAÇÕES ELÉTRICAS E DE COMUNICAÇÕES',	'ELE',	4),
('EPR15963',	'GESTÃO EMPRESARIAL',	'EPR',	4),
('HID16196',	'HIGIENE E SEGURANÇA DO TRABALHO',	'HID',	3),
('EPR15969',	'ASPECTOS LEGAIS E ÉTICOS DA ENGENHARIA',	'EPR',	4),
('INF16159',	'COMPUTAÇÃO E SOCIEDADE',	'INF',	2),
('INF16197',	'ESTÁGIO SUPERVISIONADO OBRIGATÓRIO',	'INF',	6),
('INF16198',	'TRABALHO DE CONCLUSÃO DE CURSO I',	'INF',	4),
('INF16199',	'TRABALHO DE CONCLUSÃO DE CURSO II',	'INF',	4);

DROP TABLE IF EXISTS "department";
CREATE TABLE "public"."department" (
    "dept_name" character varying(20) NOT NULL,
    "building" character varying(15),
    "budget" numeric(12,2),
    CONSTRAINT "department_pkey" PRIMARY KEY ("dept_name")
)
WITH (oids = false);

INSERT INTO "department" ("dept_name", "building", "budget") VALUES
('Biology',	'Watson',	90000.00),
('Comp. Sci.',	'Taylor',	100000.00),
('Elec. Eng.',	'Taylor',	85000.00),
('Finance',	'Painter',	120000.00),
('History',	'Painter',	50000.00),
('Music',	'Packard',	80000.00),
('Physics',	'Watson',	70000.00),
('MAT',	'CCE',	NULL),
('INF',	'CT7',	NULL),
('ELE',	'CT2',	NULL),
('FIS',	'CCE',	NULL),
('HID',	'CT8',	NULL),
('STA',	'CCE',	NULL),
('EPR',	'CT12',	NULL),
('QUI',	'CCE',	NULL),
('LET',	'IC4',	NULL);

DROP TABLE IF EXISTS "instructor";
CREATE TABLE "public"."instructor" (
    "ID" character varying(5) NOT NULL,
    "name" character varying(20) NOT NULL,
    "dept_name" character varying(20),
    "salary" numeric(8,2),
    CONSTRAINT "instructor_pkey" PRIMARY KEY ("ID")
)
WITH (oids = false);

INSERT INTO "instructor" ("ID", "name", "dept_name", "salary") VALUES
('10101',	'Srinivasan',	'Comp. Sci.',	65000.00),
('12121',	'Wu',	'Finance',	90000.00),
('15151',	'Mozart',	'Music',	40000.00),
('22222',	'Einstein',	'Physics',	95000.00),
('32343',	'El Said',	'History',	60000.00),
('33456',	'Gold',	'Physics',	87000.00),
('45565',	'Katz',	'Comp. Sci.',	75000.00),
('58583',	'Califieri',	'History',	62000.00),
('76543',	'Singh',	'Finance',	80000.00),
('76766',	'Crick',	'Biology',	72000.00),
('83821',	'Brandt',	'Comp. Sci.',	92000.00),
('98345',	'Kim',	'Elec. Eng.',	80000.00);

DROP TABLE IF EXISTS "prereq";
CREATE TABLE "public"."prereq" (
    "course_id" character varying(8) NOT NULL,
    "prereq_id" character varying(8) NOT NULL,
    CONSTRAINT "prereq_pkey" PRIMARY KEY ("course_id", "prereq_id")
)
WITH (oids = false);

INSERT INTO "prereq" ("course_id", "prereq_id") VALUES
('MAT15932',	'MAT15925'),
('MAT15931',	'MAT15925'),
('INF16153',	'INF15927'),
('INF16190',	'INF15927'),
('INF16190',	'ELE15924'),
('FIS13696',	'MAT15925'),
('ELE15935',	'INF15927'),
('ELE15935',	'INF15973'),
('MAT15936',	'MAT15931'),
('ELE15934',	'ELE15924'),
('ELE15934',	'MAT15932'),
('MAT15937',	'MAT15931'),
('INF15974',	'INF16153'),
('FIS13735',	'FIS13696'),
('ELE15941',	'ELE15934'),
('ELE15941',	'MAT15936'),
('INF16154',	'ELE15935'),
('ELE15940',	'MAT15937'),
('ELE15940',	'ELE15934'),
('STA15932',	'MAT15925'),
('INF15933',	'INF15974'),
('FIS13737',	'FIS13696'),
('ELE16191',	'ELE15940'),
('ELE16191',	'STA15932'),
('ELE15944',	'ELE15941'),
('ELE15943',	'ELE15940'),
('INF15980',	'INF16154'),
('INF15980',	'INF15974'),
('INF15975',	'INF15974'),
('ELE15951',	'ELE16191'),
('INF16192',	'INF15975'),
('INF16192',	'INF15973'),
('INF15978',	'INF15933'),
('INF16158',	'INF15980'),
('ELE15942',	'INF16154'),
('ELE16194',	'ELE15942'),
('ELE16194',	'INF16190'),
('ELE16194',	'INF16193'),
('INF16193',	'ELE16194'),
('INF16193',	'INF16190'),
('INF16193',	'ELE15942'),
('INF16161',	'INF15933'),
('ELE15956',	'ELE15951'),
('EPR12990',	'STA15932'),
('INF16165',	'INF15933'),
('INF16165',	'STA15932'),
('ELE16195',	'ELE15934'),
('ELE16195',	'ELE15929'),
('INF15979',	'INF15975'),
('EPR15963',	'EPR12990'),
('EPR15969',	'HID16196'),
('INF16159',	'INF15933'),
('INF16198',	'INF16165'),
('INF16199',	'INF16198');

DROP TABLE IF EXISTS "section";
CREATE TABLE "public"."section" (
    "course_id" character varying(8) NOT NULL,
    "sec_id" character varying(8) NOT NULL,
    "semester" character varying(6) NOT NULL,
    "year" numeric(4,0) NOT NULL,
    "building" character varying(15),
    "room_number" character varying(7),
    "time_slot_id" character varying(4),
    CONSTRAINT "section_pkey" PRIMARY KEY ("course_id", "sec_id", "semester", "year")
)
WITH (oids = false);

INSERT INTO "section" ("course_id", "sec_id", "semester", "year", "building", "room_number", "time_slot_id") VALUES
('BIO-101',	'1',	'Summer',	2009,	'Painter',	'514',	'B'),
('BIO-301',	'1',	'Summer',	2010,	'Painter',	'514',	'A'),
('CS-101',	'1',	'Fall',	2009,	'Packard',	'101',	'H'),
('CS-101',	'1',	'Spring',	2010,	'Packard',	'101',	'F'),
('CS-190',	'1',	'Spring',	2009,	'Taylor',	'3128',	'E'),
('CS-190',	'2',	'Spring',	2009,	'Taylor',	'3128',	'A'),
('CS-315',	'1',	'Spring',	2010,	'Watson',	'120',	'D'),
('CS-319',	'1',	'Spring',	2010,	'Watson',	'100',	'B'),
('CS-319',	'2',	'Spring',	2010,	'Taylor',	'3128',	'C'),
('CS-347',	'1',	'Fall',	2009,	'Taylor',	'3128',	'A'),
('EE-181',	'1',	'Spring',	2009,	'Taylor',	'3128',	'C'),
('FIN-201',	'1',	'Spring',	2010,	'Packard',	'101',	'B'),
('HIS-351',	'1',	'Spring',	2010,	'Painter',	'514',	'C'),
('MU-199',	'1',	'Spring',	2010,	'Packard',	'101',	'D'),
('PHY-101',	'1',	'Fall',	2009,	'Watson',	'100',	'A');

DROP TABLE IF EXISTS "student";
CREATE TABLE "public"."student" (
    "ID" character varying(5) NOT NULL,
    "name" character varying(20) NOT NULL,
    "dept_name" character varying(20),
    "tot_cred" numeric(3,0),
    CONSTRAINT "student_pkey" PRIMARY KEY ("ID")
)
WITH (oids = false);

INSERT INTO "student" ("ID", "name", "dept_name", "tot_cred") VALUES
('00128',	'Zhang',	'Comp. Sci.',	102),
('12345',	'Shankar',	'Comp. Sci.',	32),
('19991',	'Brandt',	'History',	80),
('23121',	'Chavez',	'Finance',	110),
('44553',	'Peltier',	'Physics',	56),
('45678',	'Levy',	'Physics',	46),
('54321',	'Williams',	'Comp. Sci.',	54),
('55739',	'Sanchez',	'Music',	38),
('70557',	'Snow',	'Physics',	0),
('76543',	'Brown',	'Comp. Sci.',	58),
('76653',	'Aoi',	'Elec. Eng.',	60),
('98765',	'Bourikas',	'Elec. Eng.',	98),
('98988',	'Tanaka',	'Biology',	120);

DROP TABLE IF EXISTS "takes";
CREATE TABLE "public"."takes" (
    "ID" character varying(5) NOT NULL,
    "course_id" character varying(8) NOT NULL,
    "sec_id" character varying(8) NOT NULL,
    "semester" character varying(6) NOT NULL,
    "year" numeric(4,0) NOT NULL,
    "grade" character varying(2),
    CONSTRAINT "takes_pkey" PRIMARY KEY ("ID", "course_id", "sec_id", "semester", "year")
)
WITH (oids = false);

INSERT INTO "takes" ("ID", "course_id", "sec_id", "semester", "year", "grade") VALUES
('00128',	'CS-101',	'1',	'Fall',	2009,	'A'),
('00128',	'CS-347',	'1',	'Fall',	2009,	'A-'),
('12345',	'CS-101',	'1',	'Fall',	2009,	'C'),
('12345',	'CS-190',	'2',	'Spring',	2009,	'A'),
('12345',	'CS-315',	'1',	'Spring',	2010,	'A'),
('12345',	'CS-347',	'1',	'Fall',	2009,	'A'),
('19991',	'HIS-351',	'1',	'Spring',	2010,	'B'),
('23121',	'FIN-201',	'1',	'Spring',	2010,	'C+'),
('44553',	'PHY-101',	'1',	'Fall',	2009,	'B-'),
('45678',	'CS-101',	'1',	'Fall',	2009,	'F'),
('45678',	'CS-101',	'1',	'Spring',	2010,	'B+'),
('45678',	'CS-319',	'1',	'Spring',	2010,	'B'),
('54321',	'CS-101',	'1',	'Fall',	2009,	'A-'),
('54321',	'CS-190',	'2',	'Spring',	2009,	'B+'),
('55739',	'MU-199',	'1',	'Spring',	2010,	'A-'),
('76543',	'CS-101',	'1',	'Fall',	2009,	'A'),
('76543',	'CS-319',	'2',	'Spring',	2010,	'A'),
('76653',	'EE-181',	'1',	'Spring',	2009,	'C'),
('98765',	'CS-101',	'1',	'Fall',	2009,	'C-'),
('98765',	'CS-315',	'1',	'Spring',	2010,	'B'),
('98988',	'BIO-101',	'1',	'Summer',	2009,	'A'),
('98988',	'BIO-301',	'1',	'Summer',	2010,	NULL);

DROP TABLE IF EXISTS "teaches";
CREATE TABLE "public"."teaches" (
    "ID" character varying(5) NOT NULL,
    "course_id" character varying(8) NOT NULL,
    "sec_id" character varying(8) NOT NULL,
    "semester" character varying(6) NOT NULL,
    "year" numeric(4,0) NOT NULL,
    CONSTRAINT "teaches_pkey" PRIMARY KEY ("ID", "course_id", "sec_id", "semester", "year")
)
WITH (oids = false);

INSERT INTO "teaches" ("ID", "course_id", "sec_id", "semester", "year") VALUES
('76766',	'BIO-101',	'1',	'Summer',	2009),
('76766',	'BIO-301',	'1',	'Summer',	2010),
('10101',	'CS-101',	'1',	'Fall',	2009),
('45565',	'CS-101',	'1',	'Spring',	2010),
('83821',	'CS-190',	'1',	'Spring',	2009),
('83821',	'CS-190',	'2',	'Spring',	2009),
('10101',	'CS-315',	'1',	'Spring',	2010),
('45565',	'CS-319',	'1',	'Spring',	2010),
('83821',	'CS-319',	'2',	'Spring',	2010),
('10101',	'CS-347',	'1',	'Fall',	2009),
('98345',	'EE-181',	'1',	'Spring',	2009),
('12121',	'FIN-201',	'1',	'Spring',	2010),
('32343',	'HIS-351',	'1',	'Spring',	2010),
('15151',	'MU-199',	'1',	'Spring',	2010),
('22222',	'PHY-101',	'1',	'Fall',	2009);

DROP TABLE IF EXISTS "time_slot";
CREATE TABLE "public"."time_slot" (
    "time_slot_id" character varying(4) NOT NULL,
    "day" character varying(1) NOT NULL,
    "start_hr" numeric(2,0) NOT NULL,
    "start_min" numeric(2,0) NOT NULL,
    "end_hr" numeric(2,0),
    "end_min" numeric(2,0),
    CONSTRAINT "time_slot_pkey" PRIMARY KEY ("time_slot_id", "day", "start_hr", "start_min")
)
WITH (oids = false);

INSERT INTO "time_slot" ("time_slot_id", "day", "start_hr", "start_min", "end_hr", "end_min") VALUES
('A',	'F',	8,	0,	8,	50),
('A',	'M',	8,	0,	8,	50),
('A',	'W',	8,	0,	8,	50),
('B',	'F',	9,	0,	9,	50),
('B',	'M',	9,	0,	9,	50),
('B',	'W',	9,	0,	9,	50),
('C',	'F',	11,	0,	11,	50),
('C',	'M',	11,	0,	11,	50),
('C',	'W',	11,	0,	11,	50),
('D',	'F',	13,	0,	13,	50),
('D',	'M',	13,	0,	13,	50),
('D',	'W',	13,	0,	13,	50),
('E',	'R',	10,	30,	11,	45),
('E',	'T',	10,	30,	11,	45),
('F',	'R',	14,	30,	15,	45),
('F',	'T',	14,	30,	15,	45),
('G',	'F',	16,	0,	16,	50),
('G',	'M',	16,	0,	16,	50),
('G',	'W',	16,	0,	16,	50),
('H',	'W',	10,	0,	12,	30);

ALTER TABLE ONLY "public"."advisor" ADD CONSTRAINT "advisor_ibfk_1" FOREIGN KEY ("i_ID") REFERENCES instructor("ID") ON DELETE SET NULL NOT DEFERRABLE;
ALTER TABLE ONLY "public"."advisor" ADD CONSTRAINT "advisor_ibfk_2" FOREIGN KEY ("s_ID") REFERENCES student("ID") ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."course" ADD CONSTRAINT "course_ibfk_1" FOREIGN KEY (dept_name) REFERENCES department(dept_name) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."instructor" ADD CONSTRAINT "instructor_ibfk_1" FOREIGN KEY (dept_name) REFERENCES department(dept_name) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."prereq" ADD CONSTRAINT "prereq_ibfk_1" FOREIGN KEY (course_id) REFERENCES course(course_id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."prereq" ADD CONSTRAINT "prereq_ibfk_2" FOREIGN KEY (prereq_id) REFERENCES course(course_id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."section" ADD CONSTRAINT "section_ibfk_1" FOREIGN KEY (course_id) REFERENCES course(course_id) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."section" ADD CONSTRAINT "section_ibfk_2" FOREIGN KEY (building, room_number) REFERENCES classroom(building, room_number) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."student" ADD CONSTRAINT "student_ibfk_1" FOREIGN KEY (dept_name) REFERENCES department(dept_name) ON DELETE SET NULL NOT DEFERRABLE;

ALTER TABLE ONLY "public"."takes" ADD CONSTRAINT "takes_ibfk_1" FOREIGN KEY (course_id, sec_id, semester, year) REFERENCES section(course_id, sec_id, semester, year) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."takes" ADD CONSTRAINT "takes_ibfk_2" FOREIGN KEY ("ID") REFERENCES student("ID") ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."teaches" ADD CONSTRAINT "teaches_ibfk_1" FOREIGN KEY (course_id, sec_id, semester, year) REFERENCES section(course_id, sec_id, semester, year) ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."teaches" ADD CONSTRAINT "teaches_ibfk_2" FOREIGN KEY ("ID") REFERENCES instructor("ID") ON DELETE CASCADE NOT DEFERRABLE;

-- 2025-06-13 02:36:46 UTC
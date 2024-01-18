--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-10 00:31:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16640)
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    height numeric,
    weight numeric,
    base_experience integer,
    types jsonb,
    abilities jsonb,
    hp integer,
    attack integer,
    defense integer,
    special_attack integer,
    special_defense integer,
    speed integer
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16639)
-- Name: pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemon_id_seq OWNER TO postgres;

--
-- TOC entry 4792 (class 0 OID 0)
-- Dependencies: 216
-- Name: pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_id_seq OWNED BY public.pokemon.id;


--
-- TOC entry 215 (class 1259 OID 16472)
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    x1 integer
);


ALTER TABLE public.test OWNER TO postgres;

--
-- TOC entry 4638 (class 2604 OID 16643)
-- Name: pokemon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon ALTER COLUMN id SET DEFAULT nextval('public.pokemon_id_seq'::regclass);


--
-- TOC entry 4786 (class 0 OID 16640)
-- Dependencies: 217
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (id, name, height, weight, base_experience, types, abilities, hp, attack, defense, special_attack, special_defense, speed) FROM stdin;
1	bulbasaur	7	69	64	["grass", "poison"]	["overgrow", "chlorophyll"]	45	49	49	65	65	45
2	ivysaur	10	130	142	["grass", "poison"]	["overgrow", "chlorophyll"]	60	62	63	80	80	60
3	venusaur	20	1000	263	["grass", "poison"]	["overgrow", "chlorophyll"]	80	82	83	100	100	80
4	charmander	6	85	62	["fire"]	["blaze", "solar-power"]	39	52	43	60	50	65
5	charmeleon	11	190	142	["fire"]	["blaze", "solar-power"]	58	64	58	80	65	80
6	charizard	17	905	267	["fire", "flying"]	["blaze", "solar-power"]	78	84	78	109	85	100
7	squirtle	5	90	63	["water"]	["torrent", "rain-dish"]	44	48	65	50	64	43
8	wartortle	10	225	142	["water"]	["torrent", "rain-dish"]	59	63	80	65	80	58
9	blastoise	16	855	265	["water"]	["torrent", "rain-dish"]	79	83	100	85	105	78
10	caterpie	3	29	39	["bug"]	["shield-dust", "run-away"]	45	30	35	20	20	45
11	metapod	7	99	72	["bug"]	["shed-skin"]	50	20	55	25	25	30
12	butterfree	11	320	198	["bug", "flying"]	["compound-eyes", "tinted-lens"]	60	45	50	90	80	70
13	weedle	3	32	39	["bug", "poison"]	["shield-dust", "run-away"]	40	35	30	20	20	50
14	kakuna	6	100	72	["bug", "poison"]	["shed-skin"]	45	25	50	25	25	35
15	beedrill	10	295	178	["bug", "poison"]	["swarm", "sniper"]	65	90	40	45	80	75
16	pidgey	3	18	50	["normal", "flying"]	["keen-eye", "tangled-feet", "big-pecks"]	40	45	40	35	35	56
17	pidgeotto	11	300	122	["normal", "flying"]	["keen-eye", "tangled-feet", "big-pecks"]	63	60	55	50	50	71
18	pidgeot	15	395	216	["normal", "flying"]	["keen-eye", "tangled-feet", "big-pecks"]	83	80	75	70	70	101
19	rattata	3	35	51	["normal"]	["run-away", "guts", "hustle"]	30	56	35	25	35	72
20	raticate	7	185	145	["normal"]	["run-away", "guts", "hustle"]	55	81	60	50	70	97
21	spearow	3	20	52	["normal", "flying"]	["keen-eye", "sniper"]	40	60	30	31	31	70
22	fearow	12	380	155	["normal", "flying"]	["keen-eye", "sniper"]	65	90	65	61	61	100
23	ekans	20	69	58	["poison"]	["intimidate", "shed-skin", "unnerve"]	35	60	44	40	54	55
24	arbok	35	650	157	["poison"]	["intimidate", "shed-skin", "unnerve"]	60	95	69	65	79	80
25	pikachu	4	60	112	["electric"]	["static", "lightning-rod"]	35	55	40	50	50	90
26	raichu	8	300	243	["electric"]	["static", "lightning-rod"]	60	90	55	90	80	110
27	sandshrew	6	120	60	["ground"]	["sand-veil", "sand-rush"]	50	75	85	20	30	40
28	sandslash	10	295	158	["ground"]	["sand-veil", "sand-rush"]	75	100	110	45	55	65
29	nidoran-f	4	70	55	["poison"]	["poison-point", "rivalry", "hustle"]	55	47	52	40	40	41
30	nidorina	8	200	128	["poison"]	["poison-point", "rivalry", "hustle"]	70	62	67	55	55	56
31	nidoqueen	13	600	253	["poison", "ground"]	["poison-point", "rivalry", "sheer-force"]	90	92	87	75	85	76
32	nidoran-m	5	90	55	["poison"]	["poison-point", "rivalry", "hustle"]	46	57	40	40	40	50
33	nidorino	9	195	128	["poison"]	["poison-point", "rivalry", "hustle"]	61	72	57	55	55	65
34	nidoking	14	620	253	["poison", "ground"]	["poison-point", "rivalry", "sheer-force"]	81	102	77	85	75	85
35	clefairy	6	75	113	["fairy"]	["cute-charm", "magic-guard", "friend-guard"]	70	45	48	60	65	35
36	clefable	13	400	242	["fairy"]	["cute-charm", "magic-guard", "unaware"]	95	70	73	95	90	60
37	vulpix	6	99	60	["fire"]	["flash-fire", "drought"]	38	41	40	50	65	65
38	ninetales	11	199	177	["fire"]	["flash-fire", "drought"]	73	76	75	81	100	100
39	jigglypuff	5	55	95	["normal", "fairy"]	["cute-charm", "competitive", "friend-guard"]	115	45	20	45	25	20
40	wigglytuff	10	120	218	["normal", "fairy"]	["cute-charm", "competitive", "frisk"]	140	70	45	85	50	45
41	zubat	8	75	49	["poison", "flying"]	["inner-focus", "infiltrator"]	40	45	35	30	40	55
42	golbat	16	550	159	["poison", "flying"]	["inner-focus", "infiltrator"]	75	80	70	65	75	90
43	oddish	5	54	64	["grass", "poison"]	["chlorophyll", "run-away"]	45	50	55	75	65	30
44	gloom	8	86	138	["grass", "poison"]	["chlorophyll", "stench"]	60	65	70	85	75	40
45	vileplume	12	186	245	["grass", "poison"]	["chlorophyll", "effect-spore"]	75	80	85	110	90	50
46	paras	3	54	57	["bug", "grass"]	["effect-spore", "dry-skin", "damp"]	35	70	55	45	55	25
47	parasect	10	295	142	["bug", "grass"]	["effect-spore", "dry-skin", "damp"]	60	95	80	60	80	30
48	venonat	10	300	61	["bug", "poison"]	["compound-eyes", "tinted-lens", "run-away"]	60	55	50	40	55	45
49	venomoth	15	125	158	["bug", "poison"]	["shield-dust", "tinted-lens", "wonder-skin"]	70	65	60	90	75	90
50	diglett	2	8	53	["ground"]	["sand-veil", "arena-trap", "sand-force"]	10	55	25	35	45	95
51	dugtrio	7	333	149	["ground"]	["sand-veil", "arena-trap", "sand-force"]	35	100	50	50	70	120
52	meowth	4	42	58	["normal"]	["pickup", "technician", "unnerve"]	40	45	35	40	40	90
53	persian	10	320	154	["normal"]	["limber", "technician", "unnerve"]	65	70	60	65	65	115
54	psyduck	8	196	64	["water"]	["damp", "cloud-nine", "swift-swim"]	50	52	48	65	50	55
55	golduck	17	766	175	["water"]	["damp", "cloud-nine", "swift-swim"]	80	82	78	95	80	85
56	mankey	5	280	61	["fighting"]	["vital-spirit", "anger-point", "defiant"]	40	80	35	35	45	70
57	primeape	10	320	159	["fighting"]	["vital-spirit", "anger-point", "defiant"]	65	105	60	60	70	95
58	growlithe	7	190	70	["fire"]	["intimidate", "flash-fire", "justified"]	55	70	45	70	50	60
59	arcanine	19	1550	194	["fire"]	["intimidate", "flash-fire", "justified"]	90	110	80	100	80	95
60	poliwag	6	124	60	["water"]	["water-absorb", "damp", "swift-swim"]	40	50	40	40	40	90
61	poliwhirl	10	200	135	["water"]	["water-absorb", "damp", "swift-swim"]	65	65	65	50	50	90
62	poliwrath	13	540	255	["water", "fighting"]	["water-absorb", "damp", "swift-swim"]	90	95	95	70	90	70
63	abra	9	195	62	["psychic"]	["synchronize", "inner-focus", "magic-guard"]	25	20	15	105	55	90
64	kadabra	13	565	140	["psychic"]	["synchronize", "inner-focus", "magic-guard"]	40	35	30	120	70	105
65	alakazam	15	480	250	["psychic"]	["synchronize", "inner-focus", "magic-guard"]	55	50	45	135	95	120
66	machop	8	195	61	["fighting"]	["guts", "no-guard", "steadfast"]	70	80	50	35	35	35
67	machoke	15	705	142	["fighting"]	["guts", "no-guard", "steadfast"]	80	100	70	50	60	45
68	machamp	16	1300	253	["fighting"]	["guts", "no-guard", "steadfast"]	90	130	80	65	85	55
69	bellsprout	7	40	60	["grass", "poison"]	["chlorophyll", "gluttony"]	50	75	35	70	30	40
70	weepinbell	10	64	137	["grass", "poison"]	["chlorophyll", "gluttony"]	65	90	50	85	45	55
71	victreebel	17	155	221	["grass", "poison"]	["chlorophyll", "gluttony"]	80	105	65	100	70	70
72	tentacool	9	455	67	["water", "poison"]	["clear-body", "liquid-ooze", "rain-dish"]	40	40	35	50	100	70
73	tentacruel	16	550	180	["water", "poison"]	["clear-body", "liquid-ooze", "rain-dish"]	80	70	65	80	120	100
74	geodude	4	200	60	["rock", "ground"]	["rock-head", "sturdy", "sand-veil"]	40	80	100	30	30	20
75	graveler	10	1050	137	["rock", "ground"]	["rock-head", "sturdy", "sand-veil"]	55	95	115	45	45	35
76	golem	14	3000	223	["rock", "ground"]	["rock-head", "sturdy", "sand-veil"]	80	120	130	55	65	45
77	ponyta	10	300	82	["fire"]	["run-away", "flash-fire", "flame-body"]	50	85	55	65	65	90
78	rapidash	17	950	175	["fire"]	["run-away", "flash-fire", "flame-body"]	65	100	70	80	80	105
79	slowpoke	12	360	63	["water", "psychic"]	["oblivious", "own-tempo", "regenerator"]	90	65	65	40	40	15
80	slowbro	16	785	172	["water", "psychic"]	["oblivious", "own-tempo", "regenerator"]	95	75	110	100	80	30
81	magnemite	3	60	65	["electric", "steel"]	["magnet-pull", "sturdy", "analytic"]	25	35	70	95	55	45
82	magneton	10	600	163	["electric", "steel"]	["magnet-pull", "sturdy", "analytic"]	50	60	95	120	70	70
83	farfetchd	8	150	132	["normal", "flying"]	["keen-eye", "inner-focus", "defiant"]	52	90	55	58	62	60
84	doduo	14	392	62	["normal", "flying"]	["run-away", "early-bird", "tangled-feet"]	35	85	45	35	35	75
85	dodrio	18	852	165	["normal", "flying"]	["run-away", "early-bird", "tangled-feet"]	60	110	70	60	60	110
86	seel	11	900	65	["water"]	["thick-fat", "hydration", "ice-body"]	65	45	55	45	70	45
87	dewgong	17	1200	166	["water", "ice"]	["thick-fat", "hydration", "ice-body"]	90	70	80	70	95	70
88	grimer	9	300	65	["poison"]	["stench", "sticky-hold", "poison-touch"]	80	80	50	40	50	25
89	muk	12	300	175	["poison"]	["stench", "sticky-hold", "poison-touch"]	105	105	75	65	100	50
90	shellder	3	40	61	["water"]	["shell-armor", "skill-link", "overcoat"]	30	65	100	45	25	40
91	cloyster	15	1325	184	["water", "ice"]	["shell-armor", "skill-link", "overcoat"]	50	95	180	85	45	70
92	gastly	13	1	62	["ghost", "poison"]	["levitate"]	30	35	30	100	35	80
93	haunter	16	1	142	["ghost", "poison"]	["levitate"]	45	50	45	115	55	95
94	gengar	15	405	250	["ghost", "poison"]	["cursed-body"]	60	65	60	130	75	110
95	onix	88	2100	77	["rock", "ground"]	["rock-head", "sturdy", "weak-armor"]	35	45	160	30	45	70
96	drowzee	10	324	66	["psychic"]	["insomnia", "forewarn", "inner-focus"]	60	48	45	43	90	42
97	hypno	16	756	169	["psychic"]	["insomnia", "forewarn", "inner-focus"]	85	73	70	73	115	67
98	krabby	4	65	65	["water"]	["hyper-cutter", "shell-armor", "sheer-force"]	30	105	90	25	25	50
99	kingler	13	600	166	["water"]	["hyper-cutter", "shell-armor", "sheer-force"]	55	130	115	50	50	75
100	voltorb	5	104	66	["electric"]	["soundproof", "static", "aftermath"]	40	30	50	55	55	100
101	electrode	12	666	172	["electric"]	["soundproof", "static", "aftermath"]	60	50	70	80	80	150
102	exeggcute	4	25	65	["grass", "psychic"]	["chlorophyll", "harvest"]	60	40	80	60	45	40
103	exeggutor	20	1200	186	["grass", "psychic"]	["chlorophyll", "harvest"]	95	95	85	125	75	55
104	cubone	4	65	64	["ground"]	["rock-head", "lightning-rod", "battle-armor"]	50	50	95	40	50	35
105	marowak	10	450	149	["ground"]	["rock-head", "lightning-rod", "battle-armor"]	60	80	110	50	80	45
106	hitmonlee	15	498	159	["fighting"]	["limber", "reckless", "unburden"]	50	120	53	35	110	87
107	hitmonchan	14	502	159	["fighting"]	["keen-eye", "iron-fist", "inner-focus"]	50	105	79	35	110	76
108	lickitung	12	655	77	["normal"]	["own-tempo", "oblivious", "cloud-nine"]	90	55	75	60	75	30
109	koffing	6	10	68	["poison"]	["levitate", "neutralizing-gas", "stench"]	40	65	95	60	45	35
110	weezing	12	95	172	["poison"]	["levitate", "neutralizing-gas", "stench"]	65	90	120	85	70	60
111	rhyhorn	10	1150	69	["ground", "rock"]	["lightning-rod", "rock-head", "reckless"]	80	85	95	30	30	25
112	rhydon	19	1200	170	["ground", "rock"]	["lightning-rod", "rock-head", "reckless"]	105	130	120	45	45	40
113	chansey	11	346	395	["normal"]	["natural-cure", "serene-grace", "healer"]	250	5	5	35	105	50
114	tangela	10	350	87	["grass"]	["chlorophyll", "leaf-guard", "regenerator"]	65	55	115	100	40	60
115	kangaskhan	22	800	172	["normal"]	["early-bird", "scrappy", "inner-focus"]	105	95	80	40	80	90
116	horsea	4	80	59	["water"]	["swift-swim", "sniper", "damp"]	30	40	70	70	25	60
117	seadra	12	250	154	["water"]	["poison-point", "sniper", "damp"]	55	65	95	95	45	85
118	goldeen	6	150	64	["water"]	["swift-swim", "water-veil", "lightning-rod"]	45	67	60	35	50	63
119	seaking	13	390	158	["water"]	["swift-swim", "water-veil", "lightning-rod"]	80	92	65	65	80	68
120	staryu	8	345	68	["water"]	["illuminate", "natural-cure", "analytic"]	30	45	55	70	55	85
121	starmie	11	800	182	["water", "psychic"]	["illuminate", "natural-cure", "analytic"]	60	75	85	100	85	115
122	mr-mime	13	545	161	["psychic", "fairy"]	["soundproof", "filter", "technician"]	40	45	65	100	120	90
123	scyther	15	560	100	["bug", "flying"]	["swarm", "technician", "steadfast"]	70	110	80	55	80	105
124	jynx	14	406	159	["ice", "psychic"]	["oblivious", "forewarn", "dry-skin"]	65	50	35	115	95	95
125	electabuzz	11	300	172	["electric"]	["static", "vital-spirit"]	65	83	57	95	85	105
126	magmar	13	445	173	["fire"]	["flame-body", "vital-spirit"]	65	95	57	100	85	93
127	pinsir	15	550	175	["bug"]	["hyper-cutter", "mold-breaker", "moxie"]	65	125	100	55	70	85
128	tauros	14	884	172	["normal"]	["intimidate", "anger-point", "sheer-force"]	75	100	95	40	70	110
129	magikarp	9	100	40	["water"]	["swift-swim", "rattled"]	20	10	55	15	20	80
130	gyarados	65	2350	189	["water", "flying"]	["intimidate", "moxie"]	95	125	79	60	100	81
131	lapras	25	2200	187	["water", "ice"]	["water-absorb", "shell-armor", "hydration"]	130	85	80	85	95	60
132	ditto	3	40	101	["normal"]	["limber", "imposter"]	48	48	48	48	48	48
133	eevee	3	65	65	["normal"]	["run-away", "adaptability", "anticipation"]	55	55	50	45	65	55
134	vaporeon	10	290	184	["water"]	["water-absorb", "hydration"]	130	65	60	110	95	65
135	jolteon	8	245	184	["electric"]	["volt-absorb", "quick-feet"]	65	65	60	110	95	130
136	flareon	9	250	184	["fire"]	["flash-fire", "guts"]	65	130	60	95	110	65
137	porygon	8	365	79	["normal"]	["trace", "download", "analytic"]	65	60	70	85	75	40
138	omanyte	4	75	71	["rock", "water"]	["swift-swim", "shell-armor", "weak-armor"]	35	40	100	90	55	35
139	omastar	10	350	173	["rock", "water"]	["swift-swim", "shell-armor", "weak-armor"]	70	60	125	115	70	55
140	kabuto	5	115	71	["rock", "water"]	["swift-swim", "battle-armor", "weak-armor"]	30	80	90	55	45	55
141	kabutops	13	405	173	["rock", "water"]	["swift-swim", "battle-armor", "weak-armor"]	60	115	105	65	70	80
142	aerodactyl	18	590	180	["rock", "flying"]	["rock-head", "pressure", "unnerve"]	80	105	65	60	75	130
143	snorlax	21	4600	189	["normal"]	["immunity", "thick-fat", "gluttony"]	160	110	65	65	110	30
144	articuno	17	554	290	["ice", "flying"]	["pressure", "snow-cloak"]	90	85	100	95	125	85
145	zapdos	16	526	290	["electric", "flying"]	["pressure", "static"]	90	90	85	125	90	100
146	moltres	20	600	290	["fire", "flying"]	["pressure", "flame-body"]	90	100	90	125	85	90
147	dratini	18	33	60	["dragon"]	["shed-skin", "marvel-scale"]	41	64	45	50	50	50
148	dragonair	40	165	147	["dragon"]	["shed-skin", "marvel-scale"]	61	84	65	70	70	70
149	dragonite	22	2100	300	["dragon", "flying"]	["inner-focus", "multiscale"]	91	134	95	100	100	80
150	mewtwo	20	1220	340	["psychic"]	["pressure", "unnerve"]	106	110	90	154	90	130
151	mew	4	40	300	["psychic"]	["synchronize"]	100	100	100	100	100	100
152	chikorita	9	64	64	["grass"]	["overgrow", "leaf-guard"]	45	49	65	49	65	45
153	bayleef	12	158	142	["grass"]	["overgrow", "leaf-guard"]	60	62	80	63	80	60
154	meganium	18	1005	236	["grass"]	["overgrow", "leaf-guard"]	80	82	100	83	100	80
155	cyndaquil	5	79	62	["fire"]	["blaze", "flash-fire"]	39	52	43	60	50	65
156	quilava	9	190	142	["fire"]	["blaze", "flash-fire"]	58	64	58	80	65	80
157	typhlosion	17	795	240	["fire"]	["blaze", "flash-fire"]	78	84	78	109	85	100
158	totodile	6	95	63	["water"]	["torrent", "sheer-force"]	50	65	64	44	48	43
159	croconaw	11	250	142	["water"]	["torrent", "sheer-force"]	65	80	80	59	63	58
160	feraligatr	23	888	239	["water"]	["torrent", "sheer-force"]	85	105	100	79	83	78
161	sentret	8	60	43	["normal"]	["run-away", "keen-eye", "frisk"]	35	46	34	35	45	20
162	furret	18	325	145	["normal"]	["run-away", "keen-eye", "frisk"]	85	76	64	45	55	90
163	hoothoot	7	212	52	["normal", "flying"]	["insomnia", "keen-eye", "tinted-lens"]	60	30	30	36	56	50
164	noctowl	16	408	158	["normal", "flying"]	["insomnia", "keen-eye", "tinted-lens"]	100	50	50	86	96	70
165	ledyba	10	108	53	["bug", "flying"]	["swarm", "early-bird", "rattled"]	40	20	30	40	80	55
166	ledian	14	356	137	["bug", "flying"]	["swarm", "early-bird", "iron-fist"]	55	35	50	55	110	85
167	spinarak	5	85	50	["bug", "poison"]	["swarm", "insomnia", "sniper"]	40	60	40	40	40	30
168	ariados	11	335	140	["bug", "poison"]	["swarm", "insomnia", "sniper"]	70	90	70	60	70	40
169	crobat	18	750	268	["poison", "flying"]	["inner-focus", "infiltrator"]	85	90	80	70	80	130
170	chinchou	5	120	66	["water", "electric"]	["volt-absorb", "illuminate", "water-absorb"]	75	38	38	56	56	67
171	lanturn	12	225	161	["water", "electric"]	["volt-absorb", "illuminate", "water-absorb"]	125	58	58	76	76	67
172	pichu	3	20	41	["electric"]	["static", "lightning-rod"]	20	40	15	35	35	60
173	cleffa	3	30	44	["fairy"]	["cute-charm", "magic-guard", "friend-guard"]	50	25	28	45	55	15
174	igglybuff	3	10	42	["normal", "fairy"]	["cute-charm", "competitive", "friend-guard"]	90	30	15	40	20	15
175	togepi	3	15	49	["fairy"]	["hustle", "serene-grace", "super-luck"]	35	20	65	40	65	20
176	togetic	6	32	142	["fairy", "flying"]	["hustle", "serene-grace", "super-luck"]	55	40	85	80	105	40
177	natu	2	20	64	["psychic", "flying"]	["synchronize", "early-bird", "magic-bounce"]	40	50	45	70	45	70
178	xatu	15	150	165	["psychic", "flying"]	["synchronize", "early-bird", "magic-bounce"]	65	75	70	95	70	95
179	mareep	6	78	56	["electric"]	["static", "plus"]	55	40	40	65	45	35
180	flaaffy	8	133	128	["electric"]	["static", "plus"]	70	55	55	80	60	45
181	ampharos	14	615	230	["electric"]	["static", "plus"]	90	75	85	115	90	55
182	bellossom	4	58	245	["grass"]	["chlorophyll", "healer"]	75	80	95	90	100	50
183	marill	4	85	88	["water", "fairy"]	["thick-fat", "huge-power", "sap-sipper"]	70	20	50	20	50	40
184	azumarill	8	285	210	["water", "fairy"]	["thick-fat", "huge-power", "sap-sipper"]	100	50	80	60	80	50
185	sudowoodo	12	380	144	["rock"]	["sturdy", "rock-head", "rattled"]	70	100	115	30	65	30
186	politoed	11	339	250	["water"]	["water-absorb", "damp", "drizzle"]	90	75	75	90	100	70
187	hoppip	4	5	50	["grass", "flying"]	["chlorophyll", "leaf-guard", "infiltrator"]	35	35	40	35	55	50
188	skiploom	6	10	119	["grass", "flying"]	["chlorophyll", "leaf-guard", "infiltrator"]	55	45	50	45	65	80
189	jumpluff	8	30	207	["grass", "flying"]	["chlorophyll", "leaf-guard", "infiltrator"]	75	55	70	55	95	110
190	aipom	8	115	72	["normal"]	["run-away", "pickup", "skill-link"]	55	70	55	40	55	85
191	sunkern	3	18	36	["grass"]	["chlorophyll", "solar-power", "early-bird"]	30	30	30	30	30	30
192	sunflora	8	85	149	["grass"]	["chlorophyll", "solar-power", "early-bird"]	75	75	55	105	85	30
193	yanma	12	380	78	["bug", "flying"]	["speed-boost", "compound-eyes", "frisk"]	65	65	45	75	45	95
194	wooper	4	85	42	["water", "ground"]	["damp", "water-absorb", "unaware"]	55	45	45	25	25	15
195	quagsire	14	750	151	["water", "ground"]	["damp", "water-absorb", "unaware"]	95	85	85	65	65	35
196	espeon	9	265	184	["psychic"]	["synchronize", "magic-bounce"]	65	65	60	130	95	110
197	umbreon	10	270	184	["dark"]	["synchronize", "inner-focus"]	95	65	110	60	130	65
198	murkrow	5	21	81	["dark", "flying"]	["insomnia", "super-luck", "prankster"]	60	85	42	85	42	91
199	slowking	20	795	172	["water", "psychic"]	["oblivious", "own-tempo", "regenerator"]	95	75	80	100	110	30
200	misdreavus	7	10	87	["ghost"]	["levitate"]	60	60	60	85	85	85
201	unown	5	50	118	["psychic"]	["levitate"]	48	72	48	72	48	48
202	wobbuffet	13	285	142	["psychic"]	["shadow-tag", "telepathy"]	190	33	58	33	58	33
203	girafarig	15	415	159	["normal", "psychic"]	["inner-focus", "early-bird", "sap-sipper"]	70	80	65	90	65	85
204	pineco	6	72	58	["bug"]	["sturdy", "overcoat"]	50	65	90	35	35	15
205	forretress	12	1258	163	["bug", "steel"]	["sturdy", "overcoat"]	75	90	140	60	60	40
206	dunsparce	15	140	145	["normal"]	["serene-grace", "run-away", "rattled"]	100	70	70	65	65	45
207	gligar	11	648	86	["ground", "flying"]	["hyper-cutter", "sand-veil", "immunity"]	65	75	105	35	65	85
208	steelix	92	4000	179	["steel", "ground"]	["rock-head", "sturdy", "sheer-force"]	75	85	200	55	65	30
209	snubbull	6	78	60	["fairy"]	["intimidate", "run-away", "rattled"]	60	80	50	40	40	30
210	granbull	14	487	158	["fairy"]	["intimidate", "quick-feet", "rattled"]	90	120	75	60	60	45
211	qwilfish	5	39	88	["water", "poison"]	["poison-point", "swift-swim", "intimidate"]	65	95	85	55	55	85
212	scizor	18	1180	175	["bug", "steel"]	["swarm", "technician", "light-metal"]	70	130	100	55	80	65
213	shuckle	6	205	177	["bug", "rock"]	["sturdy", "gluttony", "contrary"]	20	10	230	10	230	5
214	heracross	15	540	175	["bug", "fighting"]	["swarm", "guts", "moxie"]	80	125	75	40	95	85
215	sneasel	9	280	86	["dark", "ice"]	["inner-focus", "keen-eye", "pickpocket"]	55	95	55	35	75	115
216	teddiursa	6	88	66	["normal"]	["pickup", "quick-feet", "honey-gather"]	60	80	50	50	50	40
217	ursaring	18	1258	175	["normal"]	["guts", "quick-feet", "unnerve"]	90	130	75	75	75	55
218	slugma	7	350	50	["fire"]	["magma-armor", "flame-body", "weak-armor"]	40	40	40	70	40	20
219	magcargo	8	550	151	["fire", "rock"]	["magma-armor", "flame-body", "weak-armor"]	60	50	120	90	80	30
220	swinub	4	65	50	["ice", "ground"]	["oblivious", "snow-cloak", "thick-fat"]	50	50	40	30	30	50
221	piloswine	11	558	158	["ice", "ground"]	["oblivious", "snow-cloak", "thick-fat"]	100	100	80	60	60	50
222	corsola	6	50	144	["water", "rock"]	["hustle", "natural-cure", "regenerator"]	65	55	95	65	95	35
223	remoraid	6	120	60	["water"]	["hustle", "sniper", "moody"]	35	65	35	65	35	65
224	octillery	9	285	168	["water"]	["suction-cups", "sniper", "moody"]	75	105	75	105	75	45
225	delibird	9	160	116	["ice", "flying"]	["vital-spirit", "hustle", "insomnia"]	45	55	45	65	45	75
226	mantine	21	2200	170	["water", "flying"]	["swift-swim", "water-absorb", "water-veil"]	85	40	70	80	140	70
227	skarmory	17	505	163	["steel", "flying"]	["keen-eye", "sturdy", "weak-armor"]	65	80	140	40	70	70
228	houndour	6	108	66	["dark", "fire"]	["early-bird", "flash-fire", "unnerve"]	45	60	30	80	50	65
288	vigoroth	14	465	154	["normal"]	["vital-spirit"]	80	80	80	55	55	90
229	houndoom	14	350	175	["dark", "fire"]	["early-bird", "flash-fire", "unnerve"]	75	90	50	110	80	95
230	kingdra	18	1520	270	["water", "dragon"]	["swift-swim", "sniper", "damp"]	75	95	95	95	95	85
231	phanpy	5	335	66	["ground"]	["pickup", "sand-veil"]	90	60	60	40	40	40
232	donphan	11	1200	175	["ground"]	["sturdy", "sand-veil"]	90	120	120	60	60	50
233	porygon2	6	325	180	["normal"]	["trace", "download", "analytic"]	85	80	90	105	95	60
234	stantler	14	712	163	["normal"]	["intimidate", "frisk", "sap-sipper"]	73	95	62	85	65	85
235	smeargle	12	580	88	["normal"]	["own-tempo", "technician", "moody"]	55	20	35	20	45	75
236	tyrogue	7	210	42	["fighting"]	["guts", "steadfast", "vital-spirit"]	35	35	35	35	35	35
237	hitmontop	14	480	159	["fighting"]	["intimidate", "technician", "steadfast"]	50	95	95	35	110	70
238	smoochum	4	60	61	["ice", "psychic"]	["oblivious", "forewarn", "hydration"]	45	30	15	85	65	65
239	elekid	6	235	72	["electric"]	["static", "vital-spirit"]	45	63	37	65	55	95
240	magby	7	214	73	["fire"]	["flame-body", "vital-spirit"]	45	75	37	70	55	83
241	miltank	12	755	172	["normal"]	["thick-fat", "scrappy", "sap-sipper"]	95	80	105	40	70	100
242	blissey	15	468	635	["normal"]	["natural-cure", "serene-grace", "healer"]	255	10	10	75	135	55
243	raikou	19	1780	290	["electric"]	["pressure", "inner-focus"]	90	85	75	115	100	115
244	entei	21	1980	290	["fire"]	["pressure", "inner-focus"]	115	115	85	90	75	100
245	suicune	20	1870	290	["water"]	["pressure", "inner-focus"]	100	75	115	90	115	85
246	larvitar	6	720	60	["rock", "ground"]	["guts", "sand-veil"]	50	64	50	45	50	41
247	pupitar	12	1520	144	["rock", "ground"]	["shed-skin"]	70	84	70	65	70	51
248	tyranitar	20	2020	300	["rock", "dark"]	["sand-stream", "unnerve"]	100	134	110	95	100	61
249	lugia	52	2160	340	["psychic", "flying"]	["pressure", "multiscale"]	106	90	130	90	154	110
250	ho-oh	38	1990	340	["fire", "flying"]	["pressure", "regenerator"]	106	130	90	110	154	90
251	celebi	6	50	300	["psychic", "grass"]	["natural-cure"]	100	100	100	100	100	100
252	treecko	5	50	62	["grass"]	["overgrow", "unburden"]	40	45	35	65	55	70
253	grovyle	9	216	142	["grass"]	["overgrow", "unburden"]	50	65	45	85	65	95
254	sceptile	17	522	265	["grass"]	["overgrow", "unburden"]	70	85	65	105	85	120
255	torchic	4	25	62	["fire"]	["blaze", "speed-boost"]	45	60	40	70	50	45
256	combusken	9	195	142	["fire", "fighting"]	["blaze", "speed-boost"]	60	85	60	85	60	55
257	blaziken	19	520	265	["fire", "fighting"]	["blaze", "speed-boost"]	80	120	70	110	70	80
258	mudkip	4	76	62	["water"]	["torrent", "damp"]	50	70	50	50	50	40
259	marshtomp	7	280	142	["water", "ground"]	["torrent", "damp"]	70	85	70	60	70	50
260	swampert	15	819	268	["water", "ground"]	["torrent", "damp"]	100	110	90	85	90	60
261	poochyena	5	136	56	["dark"]	["run-away", "quick-feet", "rattled"]	35	55	35	30	30	35
262	mightyena	10	370	147	["dark"]	["intimidate", "quick-feet", "moxie"]	70	90	70	60	60	70
263	zigzagoon	4	175	56	["normal"]	["pickup", "gluttony", "quick-feet"]	38	30	41	30	41	60
264	linoone	5	325	147	["normal"]	["pickup", "gluttony", "quick-feet"]	78	70	61	50	61	100
265	wurmple	3	36	56	["bug"]	["shield-dust", "run-away"]	45	45	35	20	30	20
266	silcoon	6	100	72	["bug"]	["shed-skin"]	50	35	55	25	25	15
267	beautifly	10	284	178	["bug", "flying"]	["swarm", "rivalry"]	60	70	50	100	50	65
268	cascoon	7	115	72	["bug"]	["shed-skin"]	50	35	55	25	25	15
269	dustox	12	316	173	["bug", "poison"]	["shield-dust", "compound-eyes"]	60	50	70	50	90	65
270	lotad	5	26	44	["water", "grass"]	["swift-swim", "rain-dish", "own-tempo"]	40	30	30	40	50	30
271	lombre	12	325	119	["water", "grass"]	["swift-swim", "rain-dish", "own-tempo"]	60	50	50	60	70	50
272	ludicolo	15	550	240	["water", "grass"]	["swift-swim", "rain-dish", "own-tempo"]	80	70	70	90	100	70
273	seedot	5	40	44	["grass"]	["chlorophyll", "early-bird", "pickpocket"]	40	40	50	30	30	30
274	nuzleaf	10	280	119	["grass", "dark"]	["chlorophyll", "early-bird", "pickpocket"]	70	70	40	60	40	60
275	shiftry	13	596	240	["grass", "dark"]	["chlorophyll", "wind-rider", "pickpocket"]	90	100	60	90	60	80
276	taillow	3	23	54	["normal", "flying"]	["guts", "scrappy"]	40	55	30	30	30	85
277	swellow	7	198	159	["normal", "flying"]	["guts", "scrappy"]	60	85	60	75	50	125
278	wingull	6	95	54	["water", "flying"]	["keen-eye", "hydration", "rain-dish"]	40	30	30	55	30	85
279	pelipper	12	280	154	["water", "flying"]	["keen-eye", "drizzle", "rain-dish"]	60	50	100	95	70	65
280	ralts	4	66	40	["psychic", "fairy"]	["synchronize", "trace", "telepathy"]	28	25	25	45	35	40
281	kirlia	8	202	97	["psychic", "fairy"]	["synchronize", "trace", "telepathy"]	38	35	35	65	55	50
282	gardevoir	16	484	259	["psychic", "fairy"]	["synchronize", "trace", "telepathy"]	68	65	65	125	115	80
283	surskit	5	17	54	["bug", "water"]	["swift-swim", "rain-dish"]	40	30	32	50	52	65
284	masquerain	8	36	159	["bug", "flying"]	["intimidate", "unnerve"]	70	60	62	100	82	80
285	shroomish	4	45	59	["grass"]	["effect-spore", "poison-heal", "quick-feet"]	60	40	60	40	60	35
286	breloom	12	392	161	["grass", "fighting"]	["effect-spore", "poison-heal", "technician"]	60	130	80	60	60	70
287	slakoth	8	240	56	["normal"]	["truant"]	60	60	60	35	35	30
289	slaking	20	1305	252	["normal"]	["truant"]	150	160	100	95	65	100
290	nincada	5	55	53	["bug", "ground"]	["compound-eyes", "run-away"]	31	45	90	30	30	40
291	ninjask	8	120	160	["bug", "flying"]	["speed-boost", "infiltrator"]	61	90	45	50	50	160
292	shedinja	8	12	83	["bug", "ghost"]	["wonder-guard"]	1	90	45	30	30	40
293	whismur	6	163	48	["normal"]	["soundproof", "rattled"]	64	51	23	51	23	28
294	loudred	10	405	126	["normal"]	["soundproof", "scrappy"]	84	71	43	71	43	48
295	exploud	15	840	245	["normal"]	["soundproof", "scrappy"]	104	91	63	91	73	68
296	makuhita	10	864	47	["fighting"]	["thick-fat", "guts", "sheer-force"]	72	60	30	20	30	25
297	hariyama	23	2538	166	["fighting"]	["thick-fat", "guts", "sheer-force"]	144	120	60	40	60	50
298	azurill	2	20	38	["normal", "fairy"]	["thick-fat", "huge-power", "sap-sipper"]	50	20	40	20	40	20
299	nosepass	10	970	75	["rock"]	["sturdy", "magnet-pull", "sand-force"]	30	45	135	45	90	30
300	skitty	6	110	52	["normal"]	["cute-charm", "normalize", "wonder-skin"]	50	45	45	35	35	50
301	delcatty	11	326	140	["normal"]	["cute-charm", "normalize", "wonder-skin"]	70	65	65	55	55	90
302	sableye	5	110	133	["dark", "ghost"]	["keen-eye", "stall", "prankster"]	50	75	75	65	65	50
303	mawile	6	115	133	["steel", "fairy"]	["hyper-cutter", "intimidate", "sheer-force"]	50	85	85	55	55	50
304	aron	4	600	66	["steel", "rock"]	["sturdy", "rock-head", "heavy-metal"]	50	70	100	40	40	30
305	lairon	9	1200	151	["steel", "rock"]	["sturdy", "rock-head", "heavy-metal"]	60	90	140	50	50	40
306	aggron	21	3600	265	["steel", "rock"]	["sturdy", "rock-head", "heavy-metal"]	70	110	180	60	60	50
307	meditite	6	112	56	["fighting", "psychic"]	["pure-power", "telepathy"]	30	40	55	40	55	60
308	medicham	13	315	144	["fighting", "psychic"]	["pure-power", "telepathy"]	60	60	75	60	75	80
309	electrike	6	152	59	["electric"]	["static", "lightning-rod", "minus"]	40	45	40	65	40	65
310	manectric	15	402	166	["electric"]	["static", "lightning-rod", "minus"]	70	75	60	105	60	105
311	plusle	4	42	142	["electric"]	["plus", "lightning-rod"]	60	50	40	85	75	95
312	minun	4	42	142	["electric"]	["minus", "volt-absorb"]	60	40	50	75	85	95
313	volbeat	7	177	151	["bug"]	["illuminate", "swarm", "prankster"]	65	73	75	47	85	85
314	illumise	6	177	151	["bug"]	["oblivious", "tinted-lens", "prankster"]	65	47	75	73	85	85
315	roselia	3	20	140	["grass", "poison"]	["natural-cure", "poison-point", "leaf-guard"]	50	60	45	100	80	65
316	gulpin	4	103	60	["poison"]	["liquid-ooze", "sticky-hold", "gluttony"]	70	43	53	43	53	40
317	swalot	17	800	163	["poison"]	["liquid-ooze", "sticky-hold", "gluttony"]	100	73	83	73	83	55
318	carvanha	8	208	61	["water", "dark"]	["rough-skin", "speed-boost"]	45	90	20	65	20	65
319	sharpedo	18	888	161	["water", "dark"]	["rough-skin", "speed-boost"]	70	120	40	95	40	95
320	wailmer	20	1300	80	["water"]	["water-veil", "oblivious", "pressure"]	130	70	35	70	35	60
321	wailord	145	3980	175	["water"]	["water-veil", "oblivious", "pressure"]	170	90	45	90	45	60
322	numel	7	240	61	["fire", "ground"]	["oblivious", "simple", "own-tempo"]	60	60	40	65	45	35
323	camerupt	19	2200	161	["fire", "ground"]	["magma-armor", "solid-rock", "anger-point"]	70	100	70	105	75	40
324	torkoal	5	804	165	["fire"]	["white-smoke", "drought", "shell-armor"]	70	85	140	85	70	20
325	spoink	7	306	66	["psychic"]	["thick-fat", "own-tempo", "gluttony"]	60	25	35	70	80	60
326	grumpig	9	715	165	["psychic"]	["thick-fat", "own-tempo", "gluttony"]	80	45	65	90	110	80
327	spinda	11	50	126	["normal"]	["own-tempo", "tangled-feet", "contrary"]	60	60	60	60	60	60
328	trapinch	7	150	58	["ground"]	["hyper-cutter", "arena-trap", "sheer-force"]	45	100	45	45	45	10
329	vibrava	11	153	119	["ground", "dragon"]	["levitate"]	50	70	50	50	50	70
330	flygon	20	820	260	["ground", "dragon"]	["levitate"]	80	100	80	80	80	100
331	cacnea	4	513	67	["grass"]	["sand-veil", "water-absorb"]	50	85	40	85	40	35
332	cacturne	13	774	166	["grass", "dark"]	["sand-veil", "water-absorb"]	70	115	60	115	60	55
333	swablu	4	12	62	["normal", "flying"]	["natural-cure", "cloud-nine"]	45	40	60	40	75	50
334	altaria	11	206	172	["dragon", "flying"]	["natural-cure", "cloud-nine"]	75	70	90	70	105	80
335	zangoose	13	403	160	["normal"]	["immunity", "toxic-boost"]	73	115	60	60	60	90
336	seviper	27	525	160	["poison"]	["shed-skin", "infiltrator"]	73	100	60	100	60	65
337	lunatone	10	1680	161	["rock", "psychic"]	["levitate"]	90	55	65	95	85	70
338	solrock	12	1540	161	["rock", "psychic"]	["levitate"]	90	95	85	55	65	70
339	barboach	4	19	58	["water", "ground"]	["oblivious", "anticipation", "hydration"]	50	48	43	46	41	60
340	whiscash	9	236	164	["water", "ground"]	["oblivious", "anticipation", "hydration"]	110	78	73	76	71	60
341	corphish	6	115	62	["water"]	["hyper-cutter", "shell-armor", "adaptability"]	43	80	65	50	35	35
342	crawdaunt	11	328	164	["water", "dark"]	["hyper-cutter", "shell-armor", "adaptability"]	63	120	85	90	55	55
343	baltoy	5	215	60	["ground", "psychic"]	["levitate"]	40	40	55	40	70	55
344	claydol	15	1080	175	["ground", "psychic"]	["levitate"]	60	70	105	70	120	75
345	lileep	10	238	71	["rock", "grass"]	["suction-cups", "storm-drain"]	66	41	77	61	87	23
346	cradily	15	604	173	["rock", "grass"]	["suction-cups", "storm-drain"]	86	81	97	81	107	43
347	anorith	7	125	71	["rock", "bug"]	["battle-armor", "swift-swim"]	45	95	50	40	50	75
348	armaldo	15	682	173	["rock", "bug"]	["battle-armor", "swift-swim"]	75	125	100	70	80	45
349	feebas	6	74	40	["water"]	["swift-swim", "oblivious", "adaptability"]	20	15	20	10	55	80
350	milotic	62	1620	189	["water"]	["marvel-scale", "competitive", "cute-charm"]	95	60	79	100	125	81
351	castform	3	8	147	["normal"]	["forecast"]	70	70	70	70	70	70
352	kecleon	10	220	154	["normal"]	["color-change", "protean"]	60	90	70	60	120	40
353	shuppet	6	23	59	["ghost"]	["insomnia", "frisk", "cursed-body"]	44	75	35	63	33	45
354	banette	11	125	159	["ghost"]	["insomnia", "frisk", "cursed-body"]	64	115	65	83	63	65
355	duskull	8	150	59	["ghost"]	["levitate", "frisk"]	20	40	90	30	90	25
356	dusclops	16	306	159	["ghost"]	["pressure", "frisk"]	40	70	130	60	130	25
357	tropius	20	1000	161	["grass", "flying"]	["chlorophyll", "solar-power", "harvest"]	99	68	83	72	87	51
358	chimecho	6	10	159	["psychic"]	["levitate"]	75	50	80	95	90	65
359	absol	12	470	163	["dark"]	["pressure", "super-luck", "justified"]	65	130	60	75	60	75
360	wynaut	6	140	52	["psychic"]	["shadow-tag", "telepathy"]	95	23	48	23	48	23
361	snorunt	7	168	60	["ice"]	["inner-focus", "ice-body", "moody"]	50	50	50	50	50	50
362	glalie	15	2565	168	["ice"]	["inner-focus", "ice-body", "moody"]	80	80	80	80	80	80
363	spheal	8	395	58	["ice", "water"]	["thick-fat", "ice-body", "oblivious"]	70	40	50	55	50	25
364	sealeo	11	876	144	["ice", "water"]	["thick-fat", "ice-body", "oblivious"]	90	60	70	75	70	45
365	walrein	14	1506	265	["ice", "water"]	["thick-fat", "ice-body", "oblivious"]	110	80	90	95	90	65
366	clamperl	4	525	69	["water"]	["shell-armor", "rattled"]	35	64	85	74	55	32
367	huntail	17	270	170	["water"]	["swift-swim", "water-veil"]	55	104	105	94	75	52
368	gorebyss	18	226	170	["water"]	["swift-swim", "hydration"]	55	84	105	114	75	52
369	relicanth	10	234	170	["water", "rock"]	["swift-swim", "rock-head", "sturdy"]	100	90	130	45	65	55
370	luvdisc	6	87	116	["water"]	["swift-swim", "hydration"]	43	30	55	40	65	97
371	bagon	6	421	60	["dragon"]	["rock-head", "sheer-force"]	45	75	60	40	30	50
372	shelgon	11	1105	147	["dragon"]	["rock-head", "overcoat"]	65	95	100	60	50	50
373	salamence	15	1026	300	["dragon", "flying"]	["intimidate", "moxie"]	95	135	80	110	80	100
374	beldum	6	952	60	["steel", "psychic"]	["clear-body", "light-metal"]	40	55	80	35	60	30
375	metang	12	2025	147	["steel", "psychic"]	["clear-body", "light-metal"]	60	75	100	55	80	50
376	metagross	16	5500	300	["steel", "psychic"]	["clear-body", "light-metal"]	80	135	130	95	90	70
377	regirock	17	2300	290	["rock"]	["clear-body", "sturdy"]	80	100	200	50	100	50
378	regice	18	1750	290	["ice"]	["clear-body", "ice-body"]	80	50	100	100	200	50
379	registeel	19	2050	290	["steel"]	["clear-body", "light-metal"]	80	75	150	75	150	50
380	latias	14	400	300	["dragon", "psychic"]	["levitate"]	80	80	90	110	130	110
381	latios	20	600	300	["dragon", "psychic"]	["levitate"]	80	90	80	130	110	110
382	kyogre	45	3520	335	["water"]	["drizzle"]	100	100	90	150	140	90
383	groudon	35	9500	335	["ground"]	["drought"]	100	150	140	100	90	90
384	rayquaza	70	2065	340	["dragon", "flying"]	["air-lock"]	105	150	90	150	90	95
385	jirachi	3	11	300	["steel", "psychic"]	["serene-grace"]	100	100	100	100	100	100
386	deoxys-normal	17	608	270	["psychic"]	["pressure"]	50	150	50	150	50	150
387	turtwig	4	102	64	["grass"]	["overgrow", "shell-armor"]	55	68	64	45	55	31
388	grotle	11	970	142	["grass"]	["overgrow", "shell-armor"]	75	89	85	55	65	36
389	torterra	22	3100	236	["grass", "ground"]	["overgrow", "shell-armor"]	95	109	105	75	85	56
390	chimchar	5	62	62	["fire"]	["blaze", "iron-fist"]	44	58	44	58	44	61
391	monferno	9	220	142	["fire", "fighting"]	["blaze", "iron-fist"]	64	78	52	78	52	81
392	infernape	12	550	240	["fire", "fighting"]	["blaze", "iron-fist"]	76	104	71	104	71	108
393	piplup	4	52	63	["water"]	["torrent", "competitive"]	53	51	53	61	56	40
394	prinplup	8	230	142	["water"]	["torrent", "competitive"]	64	66	68	81	76	50
395	empoleon	17	845	239	["water", "steel"]	["torrent", "competitive"]	84	86	88	111	101	60
396	starly	3	20	49	["normal", "flying"]	["keen-eye", "reckless"]	40	55	30	30	30	60
397	staravia	6	155	119	["normal", "flying"]	["intimidate", "reckless"]	55	75	50	40	40	80
398	staraptor	12	249	218	["normal", "flying"]	["intimidate", "reckless"]	85	120	70	50	60	100
399	bidoof	5	200	50	["normal"]	["simple", "unaware", "moody"]	59	45	40	35	40	31
400	bibarel	10	315	144	["normal", "water"]	["simple", "unaware", "moody"]	79	85	60	55	60	71
401	kricketot	3	22	39	["bug"]	["shed-skin", "run-away"]	37	25	41	25	41	25
402	kricketune	10	255	134	["bug"]	["swarm", "technician"]	77	85	51	55	51	65
403	shinx	5	95	53	["electric"]	["rivalry", "intimidate", "guts"]	45	65	34	40	34	45
404	luxio	9	305	127	["electric"]	["rivalry", "intimidate", "guts"]	60	85	49	60	49	60
405	luxray	14	420	262	["electric"]	["rivalry", "intimidate", "guts"]	80	120	79	95	79	70
406	budew	2	12	56	["grass", "poison"]	["natural-cure", "poison-point", "leaf-guard"]	40	30	35	50	70	55
407	roserade	9	145	258	["grass", "poison"]	["natural-cure", "poison-point", "technician"]	60	70	65	125	105	90
408	cranidos	9	315	70	["rock"]	["mold-breaker", "sheer-force"]	67	125	40	30	30	58
409	rampardos	16	1025	173	["rock"]	["mold-breaker", "sheer-force"]	97	165	60	65	50	58
410	shieldon	5	570	70	["rock", "steel"]	["sturdy", "soundproof"]	30	42	118	42	88	30
411	bastiodon	13	1495	173	["rock", "steel"]	["sturdy", "soundproof"]	60	52	168	47	138	30
412	burmy	2	34	45	["bug"]	["shed-skin", "overcoat"]	40	29	45	29	45	36
413	wormadam-plant	5	65	148	["bug", "grass"]	["anticipation", "overcoat"]	60	59	85	79	105	36
414	mothim	9	233	148	["bug", "flying"]	["swarm", "tinted-lens"]	70	94	50	94	50	66
415	combee	3	55	49	["bug", "flying"]	["honey-gather", "hustle"]	30	30	42	30	42	70
416	vespiquen	12	385	166	["bug", "flying"]	["pressure", "unnerve"]	70	80	102	80	102	40
417	pachirisu	4	39	142	["electric"]	["run-away", "pickup", "volt-absorb"]	60	45	70	45	90	95
418	buizel	7	295	66	["water"]	["swift-swim", "water-veil"]	55	65	35	60	30	85
419	floatzel	11	335	173	["water"]	["swift-swim", "water-veil"]	85	105	55	85	50	115
420	cherubi	4	33	55	["grass"]	["chlorophyll"]	45	35	45	62	53	35
421	cherrim	5	93	158	["grass"]	["flower-gift"]	70	60	70	87	78	85
422	shellos	3	63	65	["water"]	["sticky-hold", "storm-drain", "sand-force"]	76	48	48	57	62	34
423	gastrodon	9	299	166	["water", "ground"]	["sticky-hold", "storm-drain", "sand-force"]	111	83	68	92	82	39
424	ambipom	12	203	169	["normal"]	["technician", "pickup", "skill-link"]	75	100	66	60	66	115
425	drifloon	4	12	70	["ghost", "flying"]	["aftermath", "unburden", "flare-boost"]	90	50	34	60	44	70
426	drifblim	12	150	174	["ghost", "flying"]	["aftermath", "unburden", "flare-boost"]	150	80	44	90	54	80
427	buneary	4	55	70	["normal"]	["run-away", "klutz", "limber"]	55	66	44	44	56	85
428	lopunny	12	333	168	["normal"]	["cute-charm", "klutz", "limber"]	65	76	84	54	96	105
429	mismagius	9	44	173	["ghost"]	["levitate"]	60	60	60	105	105	105
430	honchkrow	9	273	177	["dark", "flying"]	["insomnia", "super-luck", "moxie"]	100	125	52	105	52	71
431	glameow	5	39	62	["normal"]	["limber", "own-tempo", "keen-eye"]	49	55	42	42	37	85
432	purugly	10	438	158	["normal"]	["thick-fat", "own-tempo", "defiant"]	71	82	64	64	59	112
433	chingling	2	6	57	["psychic"]	["levitate"]	45	30	50	65	50	45
434	stunky	4	192	66	["poison", "dark"]	["stench", "aftermath", "keen-eye"]	63	63	47	41	41	74
435	skuntank	10	380	168	["poison", "dark"]	["stench", "aftermath", "keen-eye"]	103	93	67	71	61	84
436	bronzor	5	605	60	["steel", "psychic"]	["levitate", "heatproof", "heavy-metal"]	57	24	86	24	86	23
437	bronzong	13	1870	175	["steel", "psychic"]	["levitate", "heatproof", "heavy-metal"]	67	89	116	79	116	33
438	bonsly	5	150	58	["rock"]	["sturdy", "rock-head", "rattled"]	50	80	95	10	45	10
439	mime-jr	6	130	62	["psychic", "fairy"]	["soundproof", "filter", "technician"]	20	25	45	70	90	60
440	happiny	6	244	110	["normal"]	["natural-cure", "serene-grace", "friend-guard"]	100	5	5	15	65	30
441	chatot	5	19	144	["normal", "flying"]	["keen-eye", "tangled-feet", "big-pecks"]	76	65	45	92	42	91
442	spiritomb	10	1080	170	["ghost", "dark"]	["pressure", "infiltrator"]	50	92	108	92	108	35
443	gible	7	205	60	["dragon", "ground"]	["sand-veil", "rough-skin"]	58	70	45	40	45	42
444	gabite	14	560	144	["dragon", "ground"]	["sand-veil", "rough-skin"]	68	90	65	50	55	82
445	garchomp	19	950	300	["dragon", "ground"]	["sand-veil", "rough-skin"]	108	130	95	80	85	102
446	munchlax	6	1050	78	["normal"]	["pickup", "thick-fat", "gluttony"]	135	85	40	40	85	5
447	riolu	7	202	57	["fighting"]	["steadfast", "inner-focus", "prankster"]	40	70	40	35	40	60
448	lucario	12	540	184	["fighting", "steel"]	["steadfast", "inner-focus", "justified"]	70	110	70	115	70	90
449	hippopotas	8	495	66	["ground"]	["sand-stream", "sand-force"]	68	72	78	38	42	32
450	hippowdon	20	3000	184	["ground"]	["sand-stream", "sand-force"]	108	112	118	68	72	47
451	skorupi	8	120	66	["poison", "bug"]	["battle-armor", "sniper", "keen-eye"]	40	50	90	30	55	65
452	drapion	13	615	175	["poison", "dark"]	["battle-armor", "sniper", "keen-eye"]	70	90	110	60	75	95
453	croagunk	7	230	60	["poison", "fighting"]	["anticipation", "dry-skin", "poison-touch"]	48	61	40	61	40	50
454	toxicroak	13	444	172	["poison", "fighting"]	["anticipation", "dry-skin", "poison-touch"]	83	106	65	86	65	85
455	carnivine	14	270	159	["grass"]	["levitate"]	74	100	72	90	72	46
456	finneon	4	70	66	["water"]	["swift-swim", "storm-drain", "water-veil"]	49	49	56	49	61	66
457	lumineon	12	240	161	["water"]	["swift-swim", "storm-drain", "water-veil"]	69	69	76	69	86	91
458	mantyke	10	650	69	["water", "flying"]	["swift-swim", "water-absorb", "water-veil"]	45	20	50	60	120	50
459	snover	10	505	67	["grass", "ice"]	["snow-warning", "soundproof"]	60	62	50	62	60	40
460	abomasnow	22	1355	173	["grass", "ice"]	["snow-warning", "soundproof"]	90	92	75	92	85	60
461	weavile	11	340	179	["dark", "ice"]	["pressure", "pickpocket"]	70	120	65	45	85	125
462	magnezone	12	1800	268	["electric", "steel"]	["magnet-pull", "sturdy", "analytic"]	70	70	115	130	90	60
463	lickilicky	17	1400	180	["normal"]	["own-tempo", "oblivious", "cloud-nine"]	110	85	95	80	95	50
637	volcarona	16	460	275	["bug", "fire"]	["flame-body", "swarm"]	85	60	65	135	105	100
464	rhyperior	24	2828	268	["ground", "rock"]	["lightning-rod", "solid-rock", "reckless"]	115	140	130	55	55	40
465	tangrowth	20	1286	187	["grass"]	["chlorophyll", "leaf-guard", "regenerator"]	100	100	125	110	50	50
466	electivire	18	1386	270	["electric"]	["motor-drive", "vital-spirit"]	75	123	67	95	85	95
467	magmortar	16	680	270	["fire"]	["flame-body", "vital-spirit"]	75	95	67	125	95	83
468	togekiss	15	380	273	["fairy", "flying"]	["hustle", "serene-grace", "super-luck"]	85	50	95	120	115	80
469	yanmega	19	515	180	["bug", "flying"]	["speed-boost", "tinted-lens", "frisk"]	86	76	86	116	56	95
470	leafeon	10	255	184	["grass"]	["leaf-guard", "chlorophyll"]	65	110	130	60	65	95
471	glaceon	8	259	184	["ice"]	["snow-cloak", "ice-body"]	65	60	110	130	95	65
472	gliscor	20	425	179	["ground", "flying"]	["hyper-cutter", "sand-veil", "poison-heal"]	75	95	125	45	75	95
473	mamoswine	25	2910	265	["ice", "ground"]	["oblivious", "snow-cloak", "thick-fat"]	110	130	80	70	60	80
474	porygon-z	9	340	268	["normal"]	["adaptability", "download", "analytic"]	85	80	70	135	75	90
475	gallade	16	520	259	["psychic", "fighting"]	["steadfast", "sharpness", "justified"]	68	125	65	65	115	80
476	probopass	14	3400	184	["rock", "steel"]	["sturdy", "magnet-pull", "sand-force"]	60	55	145	75	150	40
477	dusknoir	22	1066	263	["ghost"]	["pressure", "frisk"]	45	100	135	65	135	45
478	froslass	13	266	168	["ice", "ghost"]	["snow-cloak", "cursed-body"]	70	80	70	80	70	110
479	rotom	3	3	154	["electric", "ghost"]	["levitate"]	50	50	77	95	77	91
480	uxie	3	3	290	["psychic"]	["levitate"]	75	75	130	75	130	95
481	mesprit	3	3	290	["psychic"]	["levitate"]	80	105	105	105	105	80
482	azelf	3	3	290	["psychic"]	["levitate"]	75	125	70	125	70	115
483	dialga	54	6830	340	["steel", "dragon"]	["pressure", "telepathy"]	100	120	120	150	100	90
484	palkia	42	3360	340	["water", "dragon"]	["pressure", "telepathy"]	90	120	100	150	120	100
485	heatran	17	4300	300	["fire", "steel"]	["flash-fire", "flame-body"]	91	90	106	130	106	77
486	regigigas	37	4200	335	["normal"]	["slow-start"]	110	160	110	80	110	100
487	giratina-altered	45	7500	340	["ghost", "dragon"]	["pressure", "telepathy"]	150	100	120	100	120	90
488	cresselia	15	856	300	["psychic"]	["levitate"]	120	70	110	75	120	85
489	phione	4	31	216	["water"]	["hydration"]	80	80	80	80	80	80
490	manaphy	3	14	270	["water"]	["hydration"]	100	100	100	100	100	100
491	darkrai	15	505	270	["dark"]	["bad-dreams"]	70	90	90	135	90	125
492	shaymin-land	2	21	270	["grass"]	["natural-cure"]	100	100	100	100	100	100
493	arceus	32	3200	324	["normal"]	["multitype"]	120	120	120	120	120	120
494	victini	4	40	300	["psychic", "fire"]	["victory-star"]	100	100	100	100	100	100
495	snivy	6	81	62	["grass"]	["overgrow", "contrary"]	45	45	55	45	55	63
496	servine	8	160	145	["grass"]	["overgrow", "contrary"]	60	60	75	60	75	83
497	serperior	33	630	238	["grass"]	["overgrow", "contrary"]	75	75	95	75	95	113
498	tepig	5	99	62	["fire"]	["blaze", "thick-fat"]	65	63	45	45	45	45
499	pignite	10	555	146	["fire", "fighting"]	["blaze", "thick-fat"]	90	93	55	70	55	55
500	emboar	16	1500	238	["fire", "fighting"]	["blaze", "reckless"]	110	123	65	100	65	65
501	oshawott	5	59	62	["water"]	["torrent", "shell-armor"]	55	55	45	63	45	45
502	dewott	8	245	145	["water"]	["torrent", "shell-armor"]	75	75	60	83	60	60
503	samurott	15	946	238	["water"]	["torrent", "shell-armor"]	95	100	85	108	70	70
504	patrat	5	116	51	["normal"]	["run-away", "keen-eye", "analytic"]	45	55	39	35	39	42
505	watchog	11	270	147	["normal"]	["illuminate", "keen-eye", "analytic"]	60	85	69	60	69	77
506	lillipup	4	41	55	["normal"]	["vital-spirit", "pickup", "run-away"]	45	60	45	25	45	55
507	herdier	9	147	130	["normal"]	["intimidate", "sand-rush", "scrappy"]	65	80	65	35	65	60
508	stoutland	12	610	250	["normal"]	["intimidate", "sand-rush", "scrappy"]	85	110	90	45	90	80
509	purrloin	4	101	56	["dark"]	["limber", "unburden", "prankster"]	41	50	37	50	37	66
510	liepard	11	375	156	["dark"]	["limber", "unburden", "prankster"]	64	88	50	88	50	106
511	pansage	6	105	63	["grass"]	["gluttony", "overgrow"]	50	53	48	53	48	64
512	simisage	11	305	174	["grass"]	["gluttony", "overgrow"]	75	98	63	98	63	101
513	pansear	6	110	63	["fire"]	["gluttony", "blaze"]	50	53	48	53	48	64
514	simisear	10	280	174	["fire"]	["gluttony", "blaze"]	75	98	63	98	63	101
515	panpour	6	135	63	["water"]	["gluttony", "torrent"]	50	53	48	53	48	64
516	simipour	10	290	174	["water"]	["gluttony", "torrent"]	75	98	63	98	63	101
517	munna	6	233	58	["psychic"]	["forewarn", "synchronize", "telepathy"]	76	25	45	67	55	24
518	musharna	11	605	170	["psychic"]	["forewarn", "synchronize", "telepathy"]	116	55	85	107	95	29
519	pidove	3	21	53	["normal", "flying"]	["big-pecks", "super-luck", "rivalry"]	50	55	50	36	30	43
520	tranquill	6	150	125	["normal", "flying"]	["big-pecks", "super-luck", "rivalry"]	62	77	62	50	42	65
521	unfezant	12	290	244	["normal", "flying"]	["big-pecks", "super-luck", "rivalry"]	80	115	80	65	55	93
522	blitzle	8	298	59	["electric"]	["lightning-rod", "motor-drive", "sap-sipper"]	45	60	32	50	32	76
523	zebstrika	16	795	174	["electric"]	["lightning-rod", "motor-drive", "sap-sipper"]	75	100	63	80	63	116
524	roggenrola	4	180	56	["rock"]	["sturdy", "weak-armor", "sand-force"]	55	75	85	25	25	15
525	boldore	9	1020	137	["rock"]	["sturdy", "weak-armor", "sand-force"]	70	105	105	50	40	20
526	gigalith	17	2600	258	["rock"]	["sturdy", "sand-stream", "sand-force"]	85	135	130	60	80	25
527	woobat	4	21	65	["psychic", "flying"]	["unaware", "klutz", "simple"]	65	45	43	55	43	72
528	swoobat	9	105	149	["psychic", "flying"]	["unaware", "klutz", "simple"]	67	57	55	77	55	114
529	drilbur	3	85	66	["ground"]	["sand-rush", "sand-force", "mold-breaker"]	60	85	40	30	45	68
530	excadrill	7	404	178	["ground", "steel"]	["sand-rush", "sand-force", "mold-breaker"]	110	135	60	50	65	88
531	audino	11	310	390	["normal"]	["healer", "regenerator", "klutz"]	103	60	86	60	86	50
532	timburr	6	125	61	["fighting"]	["guts", "sheer-force", "iron-fist"]	75	80	55	25	35	35
533	gurdurr	12	400	142	["fighting"]	["guts", "sheer-force", "iron-fist"]	85	105	85	40	50	40
534	conkeldurr	14	870	253	["fighting"]	["guts", "sheer-force", "iron-fist"]	105	140	95	55	65	45
535	tympole	5	45	59	["water"]	["swift-swim", "hydration", "water-absorb"]	50	50	40	50	40	64
536	palpitoad	8	170	134	["water", "ground"]	["swift-swim", "hydration", "water-absorb"]	75	65	55	65	55	69
537	seismitoad	15	620	255	["water", "ground"]	["swift-swim", "poison-touch", "water-absorb"]	105	95	75	85	75	74
538	throh	13	555	163	["fighting"]	["guts", "inner-focus", "mold-breaker"]	120	100	85	30	85	45
539	sawk	14	510	163	["fighting"]	["sturdy", "inner-focus", "mold-breaker"]	75	125	75	30	75	85
540	sewaddle	3	25	62	["bug", "grass"]	["swarm", "chlorophyll", "overcoat"]	45	53	70	40	60	42
541	swadloon	5	73	133	["bug", "grass"]	["leaf-guard", "chlorophyll", "overcoat"]	55	63	90	50	80	42
542	leavanny	12	205	225	["bug", "grass"]	["swarm", "chlorophyll", "overcoat"]	75	103	80	70	80	92
543	venipede	4	53	52	["bug", "poison"]	["poison-point", "swarm", "speed-boost"]	30	45	59	30	39	57
544	whirlipede	12	585	126	["bug", "poison"]	["poison-point", "swarm", "speed-boost"]	40	55	99	40	79	47
545	scolipede	25	2005	243	["bug", "poison"]	["poison-point", "swarm", "speed-boost"]	60	100	89	55	69	112
546	cottonee	3	6	56	["grass", "fairy"]	["prankster", "infiltrator", "chlorophyll"]	40	27	60	37	50	66
547	whimsicott	7	66	168	["grass", "fairy"]	["prankster", "infiltrator", "chlorophyll"]	60	67	85	77	75	116
548	petilil	5	66	56	["grass"]	["chlorophyll", "own-tempo", "leaf-guard"]	45	35	50	70	50	30
549	lilligant	11	163	168	["grass"]	["chlorophyll", "own-tempo", "leaf-guard"]	70	60	75	110	75	90
550	basculin-red-striped	10	180	161	["water"]	["reckless", "adaptability", "mold-breaker"]	70	92	65	80	55	98
551	sandile	7	152	58	["ground", "dark"]	["intimidate", "moxie", "anger-point"]	50	72	35	35	35	65
552	krokorok	10	334	123	["ground", "dark"]	["intimidate", "moxie", "anger-point"]	60	82	45	45	45	74
553	krookodile	15	963	260	["ground", "dark"]	["intimidate", "moxie", "anger-point"]	95	117	80	65	70	92
554	darumaka	6	375	63	["fire"]	["hustle", "inner-focus"]	70	90	45	15	45	50
555	darmanitan-standard	13	929	168	["fire"]	["sheer-force", "zen-mode"]	105	140	55	30	55	95
556	maractus	10	280	161	["grass"]	["water-absorb", "chlorophyll", "storm-drain"]	75	86	67	106	67	60
557	dwebble	3	145	65	["bug", "rock"]	["sturdy", "shell-armor", "weak-armor"]	50	65	85	35	35	55
558	crustle	14	2000	170	["bug", "rock"]	["sturdy", "shell-armor", "weak-armor"]	70	105	125	65	75	45
559	scraggy	6	118	70	["dark", "fighting"]	["shed-skin", "moxie", "intimidate"]	50	75	70	35	70	48
560	scrafty	11	300	171	["dark", "fighting"]	["shed-skin", "moxie", "intimidate"]	65	90	115	45	115	58
561	sigilyph	14	140	172	["psychic", "flying"]	["wonder-skin", "magic-guard", "tinted-lens"]	72	58	80	103	80	97
562	yamask	5	15	61	["ghost"]	["mummy"]	38	30	85	55	65	30
563	cofagrigus	17	765	169	["ghost"]	["mummy"]	58	50	145	95	105	30
564	tirtouga	7	165	71	["water", "rock"]	["solid-rock", "sturdy", "swift-swim"]	54	78	103	53	45	22
565	carracosta	12	810	173	["water", "rock"]	["solid-rock", "sturdy", "swift-swim"]	74	108	133	83	65	32
566	archen	5	95	71	["rock", "flying"]	["defeatist"]	55	112	45	74	45	70
567	archeops	14	320	177	["rock", "flying"]	["defeatist"]	75	140	65	112	65	110
568	trubbish	6	310	66	["poison"]	["stench", "sticky-hold", "aftermath"]	50	50	62	40	62	65
569	garbodor	19	1073	166	["poison"]	["stench", "weak-armor", "aftermath"]	80	95	82	60	82	75
570	zorua	7	125	66	["dark"]	["illusion"]	40	65	40	80	40	65
571	zoroark	16	811	179	["dark"]	["illusion"]	60	105	60	120	60	105
572	minccino	4	58	60	["normal"]	["cute-charm", "technician", "skill-link"]	55	50	40	40	40	75
573	cinccino	5	75	165	["normal"]	["cute-charm", "technician", "skill-link"]	75	95	60	65	60	115
574	gothita	4	58	58	["psychic"]	["frisk", "competitive", "shadow-tag"]	45	30	50	55	65	45
575	gothorita	7	180	137	["psychic"]	["frisk", "competitive", "shadow-tag"]	60	45	70	75	85	55
576	gothitelle	15	440	245	["psychic"]	["frisk", "competitive", "shadow-tag"]	70	55	95	95	110	65
577	solosis	3	10	58	["psychic"]	["overcoat", "magic-guard", "regenerator"]	45	30	40	105	50	20
578	duosion	6	80	130	["psychic"]	["overcoat", "magic-guard", "regenerator"]	65	40	50	125	60	30
579	reuniclus	10	201	245	["psychic"]	["overcoat", "magic-guard", "regenerator"]	110	65	75	125	85	30
580	ducklett	5	55	61	["water", "flying"]	["keen-eye", "big-pecks", "hydration"]	62	44	50	44	50	55
581	swanna	13	242	166	["water", "flying"]	["keen-eye", "big-pecks", "hydration"]	75	87	63	87	63	98
582	vanillite	4	57	61	["ice"]	["ice-body", "snow-cloak", "weak-armor"]	36	50	50	65	60	44
583	vanillish	11	410	138	["ice"]	["ice-body", "snow-cloak", "weak-armor"]	51	65	65	80	75	59
584	vanilluxe	13	575	268	["ice"]	["ice-body", "snow-warning", "weak-armor"]	71	95	85	110	95	79
585	deerling	6	195	67	["normal", "grass"]	["chlorophyll", "sap-sipper", "serene-grace"]	60	60	50	40	50	75
586	sawsbuck	19	925	166	["normal", "grass"]	["chlorophyll", "sap-sipper", "serene-grace"]	80	100	70	60	70	95
587	emolga	4	50	150	["electric", "flying"]	["static", "motor-drive"]	55	75	60	75	60	103
588	karrablast	5	59	63	["bug"]	["swarm", "shed-skin", "no-guard"]	50	75	45	40	45	60
589	escavalier	10	330	173	["bug", "steel"]	["swarm", "shell-armor", "overcoat"]	70	135	105	60	105	20
590	foongus	2	10	59	["grass", "poison"]	["effect-spore", "regenerator"]	69	55	45	55	55	15
591	amoonguss	6	105	162	["grass", "poison"]	["effect-spore", "regenerator"]	114	85	70	85	80	30
592	frillish	12	330	67	["water", "ghost"]	["water-absorb", "cursed-body", "damp"]	55	40	50	65	85	40
593	jellicent	22	1350	168	["water", "ghost"]	["water-absorb", "cursed-body", "damp"]	100	60	70	85	105	60
594	alomomola	12	316	165	["water"]	["healer", "hydration", "regenerator"]	165	75	80	40	45	65
595	joltik	1	6	64	["bug", "electric"]	["compound-eyes", "unnerve", "swarm"]	50	47	50	57	50	65
596	galvantula	8	143	165	["bug", "electric"]	["compound-eyes", "unnerve", "swarm"]	70	77	60	97	60	108
597	ferroseed	6	188	61	["grass", "steel"]	["iron-barbs"]	44	50	91	24	86	10
598	ferrothorn	10	1100	171	["grass", "steel"]	["iron-barbs", "anticipation"]	74	94	131	54	116	20
599	klink	3	210	60	["steel"]	["plus", "minus", "clear-body"]	40	55	70	45	60	30
600	klang	6	510	154	["steel"]	["plus", "minus", "clear-body"]	60	80	95	70	85	50
601	klinklang	6	810	260	["steel"]	["plus", "minus", "clear-body"]	60	100	115	70	85	90
602	tynamo	2	3	55	["electric"]	["levitate"]	35	55	40	45	40	60
603	eelektrik	12	220	142	["electric"]	["levitate"]	65	85	70	75	70	40
604	eelektross	21	805	232	["electric"]	["levitate"]	85	115	80	105	80	50
605	elgyem	5	90	67	["psychic"]	["telepathy", "synchronize", "analytic"]	55	55	55	85	55	30
606	beheeyem	10	345	170	["psychic"]	["telepathy", "synchronize", "analytic"]	75	75	75	125	95	40
607	litwick	3	31	55	["ghost", "fire"]	["flash-fire", "flame-body", "infiltrator"]	50	30	55	65	55	20
608	lampent	6	130	130	["ghost", "fire"]	["flash-fire", "flame-body", "infiltrator"]	60	40	60	95	60	55
609	chandelure	10	343	260	["ghost", "fire"]	["flash-fire", "flame-body", "infiltrator"]	60	55	90	145	90	80
610	axew	6	180	64	["dragon"]	["rivalry", "mold-breaker", "unnerve"]	46	87	60	30	40	57
611	fraxure	10	360	144	["dragon"]	["rivalry", "mold-breaker", "unnerve"]	66	117	70	40	50	67
612	haxorus	18	1055	270	["dragon"]	["rivalry", "mold-breaker", "unnerve"]	76	147	90	60	70	97
613	cubchoo	5	85	61	["ice"]	["snow-cloak", "slush-rush", "rattled"]	55	70	40	60	40	40
614	beartic	26	2600	177	["ice"]	["snow-cloak", "slush-rush", "swift-swim"]	95	130	80	70	80	50
615	cryogonal	11	1480	180	["ice"]	["levitate"]	80	50	50	95	135	105
616	shelmet	4	77	61	["bug"]	["hydration", "shell-armor", "overcoat"]	50	40	85	40	65	25
617	accelgor	8	253	173	["bug"]	["hydration", "sticky-hold", "unburden"]	80	70	40	100	60	145
618	stunfisk	7	110	165	["ground", "electric"]	["static", "limber", "sand-veil"]	109	66	84	81	99	32
619	mienfoo	9	200	70	["fighting"]	["inner-focus", "regenerator", "reckless"]	45	85	50	55	50	65
620	mienshao	14	355	179	["fighting"]	["inner-focus", "regenerator", "reckless"]	65	125	60	95	60	105
621	druddigon	16	1390	170	["dragon"]	["rough-skin", "sheer-force", "mold-breaker"]	77	120	90	60	90	48
622	golett	10	920	61	["ground", "ghost"]	["iron-fist", "klutz", "no-guard"]	59	74	50	35	50	35
623	golurk	28	3300	169	["ground", "ghost"]	["iron-fist", "klutz", "no-guard"]	89	124	80	55	80	55
624	pawniard	5	102	68	["dark", "steel"]	["defiant", "inner-focus", "pressure"]	45	85	70	40	40	60
625	bisharp	16	700	172	["dark", "steel"]	["defiant", "inner-focus", "pressure"]	65	125	100	60	70	70
626	bouffalant	16	946	172	["normal"]	["reckless", "sap-sipper", "soundproof"]	95	110	95	40	95	55
627	rufflet	5	105	70	["normal", "flying"]	["keen-eye", "sheer-force", "hustle"]	70	83	50	37	50	60
628	braviary	15	410	179	["normal", "flying"]	["keen-eye", "sheer-force", "defiant"]	100	123	75	57	75	80
629	vullaby	5	90	74	["dark", "flying"]	["big-pecks", "overcoat", "weak-armor"]	70	55	75	45	65	60
630	mandibuzz	12	395	179	["dark", "flying"]	["big-pecks", "overcoat", "weak-armor"]	110	65	105	55	95	80
631	heatmor	14	580	169	["fire"]	["gluttony", "flash-fire", "white-smoke"]	85	97	66	105	66	65
632	durant	3	330	169	["bug", "steel"]	["swarm", "hustle", "truant"]	58	109	112	48	48	109
633	deino	8	173	60	["dark", "dragon"]	["hustle"]	52	65	50	45	50	38
634	zweilous	14	500	147	["dark", "dragon"]	["hustle"]	72	85	70	65	70	58
635	hydreigon	18	1600	300	["dark", "dragon"]	["levitate"]	92	105	90	125	90	98
636	larvesta	11	288	72	["bug", "fire"]	["flame-body", "swarm"]	55	85	55	50	55	60
638	cobalion	21	2500	290	["steel", "fighting"]	["justified"]	91	90	129	90	72	108
639	terrakion	19	2600	290	["rock", "fighting"]	["justified"]	91	129	90	72	90	108
640	virizion	20	2000	290	["grass", "fighting"]	["justified"]	91	90	72	90	129	108
641	tornadus-incarnate	15	630	290	["flying"]	["prankster", "defiant"]	79	115	70	125	80	111
642	thundurus-incarnate	15	610	290	["electric", "flying"]	["prankster", "defiant"]	79	115	70	125	80	111
643	reshiram	32	3300	340	["dragon", "fire"]	["turboblaze"]	100	120	100	150	120	90
644	zekrom	29	3450	340	["dragon", "electric"]	["teravolt"]	100	150	120	120	100	90
645	landorus-incarnate	15	680	300	["ground", "flying"]	["sand-force", "sheer-force"]	89	125	90	115	80	101
646	kyurem	30	3250	330	["dragon", "ice"]	["pressure"]	125	130	90	130	90	95
647	keldeo-ordinary	14	485	290	["water", "fighting"]	["justified"]	91	72	90	129	90	108
648	meloetta-aria	6	65	270	["normal", "psychic"]	["serene-grace"]	100	77	77	128	128	90
649	genesect	15	825	300	["bug", "steel"]	["download"]	71	120	95	120	95	99
650	chespin	4	90	63	["grass"]	["overgrow", "bulletproof"]	56	61	65	48	45	38
651	quilladin	7	290	142	["grass"]	["overgrow", "bulletproof"]	61	78	95	56	58	57
652	chesnaught	16	900	239	["grass", "fighting"]	["overgrow", "bulletproof"]	88	107	122	74	75	64
653	fennekin	4	94	61	["fire"]	["blaze", "magician"]	40	45	40	62	60	60
654	braixen	10	145	143	["fire"]	["blaze", "magician"]	59	59	58	90	70	73
655	delphox	15	390	240	["fire", "psychic"]	["blaze", "magician"]	75	69	72	114	100	104
656	froakie	3	70	63	["water"]	["torrent", "protean"]	41	56	40	62	44	71
657	frogadier	6	109	142	["water"]	["torrent", "protean"]	54	63	52	83	56	97
658	greninja	15	400	239	["water", "dark"]	["torrent", "protean"]	72	95	67	103	71	122
659	bunnelby	4	50	47	["normal"]	["pickup", "cheek-pouch", "huge-power"]	38	36	38	32	36	57
660	diggersby	10	424	148	["normal", "ground"]	["pickup", "cheek-pouch", "huge-power"]	85	56	77	50	77	78
661	fletchling	3	17	56	["normal", "flying"]	["big-pecks", "gale-wings"]	45	50	43	40	38	62
662	fletchinder	7	160	134	["fire", "flying"]	["flame-body", "gale-wings"]	62	73	55	56	52	84
663	talonflame	12	245	175	["fire", "flying"]	["flame-body", "gale-wings"]	78	81	71	74	69	126
664	scatterbug	3	25	40	["bug"]	["shield-dust", "compound-eyes", "friend-guard"]	38	35	40	27	25	35
665	spewpa	3	84	75	["bug"]	["shed-skin", "friend-guard"]	45	22	60	27	30	29
666	vivillon	12	170	185	["bug", "flying"]	["shield-dust", "compound-eyes", "friend-guard"]	80	52	50	90	50	89
667	litleo	6	135	74	["fire", "normal"]	["rivalry", "unnerve", "moxie"]	62	50	58	73	54	72
668	pyroar	15	815	177	["fire", "normal"]	["rivalry", "unnerve", "moxie"]	86	68	72	109	66	106
669	flabebe	1	1	61	["fairy"]	["flower-veil", "symbiosis"]	44	38	39	61	79	42
670	floette	2	9	130	["fairy"]	["flower-veil", "symbiosis"]	54	45	47	75	98	52
671	florges	11	100	248	["fairy"]	["flower-veil", "symbiosis"]	78	65	68	112	154	75
672	skiddo	9	310	70	["grass"]	["sap-sipper", "grass-pelt"]	66	65	48	62	57	52
673	gogoat	17	910	186	["grass"]	["sap-sipper", "grass-pelt"]	123	100	62	97	81	68
674	pancham	6	80	70	["fighting"]	["iron-fist", "mold-breaker", "scrappy"]	67	82	62	46	48	43
675	pangoro	21	1360	173	["fighting", "dark"]	["iron-fist", "mold-breaker", "scrappy"]	95	124	78	69	71	58
676	furfrou	12	280	165	["normal"]	["fur-coat"]	75	80	60	65	90	102
677	espurr	3	35	71	["psychic"]	["keen-eye", "infiltrator", "own-tempo"]	62	48	54	63	60	68
678	meowstic-male	6	85	163	["psychic"]	["keen-eye", "infiltrator", "prankster"]	74	48	76	83	81	104
679	honedge	8	20	65	["steel", "ghost"]	["no-guard"]	45	80	100	35	37	28
680	doublade	8	45	157	["steel", "ghost"]	["no-guard"]	59	110	150	45	49	35
681	aegislash-shield	17	530	250	["steel", "ghost"]	["stance-change"]	60	50	140	50	140	60
682	spritzee	2	5	68	["fairy"]	["healer", "aroma-veil"]	78	52	60	63	65	23
683	aromatisse	8	155	162	["fairy"]	["healer", "aroma-veil"]	101	72	72	99	89	29
684	swirlix	4	35	68	["fairy"]	["sweet-veil", "unburden"]	62	48	66	59	57	49
685	slurpuff	8	50	168	["fairy"]	["sweet-veil", "unburden"]	82	80	86	85	75	72
686	inkay	4	35	58	["dark", "psychic"]	["contrary", "suction-cups", "infiltrator"]	53	54	53	37	46	45
687	malamar	15	470	169	["dark", "psychic"]	["contrary", "suction-cups", "infiltrator"]	86	92	88	68	75	73
688	binacle	5	310	61	["rock", "water"]	["tough-claws", "sniper", "pickpocket"]	42	52	67	39	56	50
689	barbaracle	13	960	175	["rock", "water"]	["tough-claws", "sniper", "pickpocket"]	72	105	115	54	86	68
690	skrelp	5	73	64	["poison", "water"]	["poison-point", "poison-touch", "adaptability"]	50	60	60	60	60	30
691	dragalge	18	815	173	["poison", "dragon"]	["poison-point", "poison-touch", "adaptability"]	65	75	90	97	123	44
692	clauncher	5	83	66	["water"]	["mega-launcher"]	50	53	62	58	63	44
693	clawitzer	13	353	100	["water"]	["mega-launcher"]	71	73	88	120	89	59
694	helioptile	5	60	58	["electric", "normal"]	["dry-skin", "sand-veil", "solar-power"]	44	38	33	61	43	70
695	heliolisk	10	210	168	["electric", "normal"]	["dry-skin", "sand-veil", "solar-power"]	62	55	52	109	94	109
696	tyrunt	8	260	72	["rock", "dragon"]	["strong-jaw", "sturdy"]	58	89	77	45	45	48
697	tyrantrum	25	2700	182	["rock", "dragon"]	["strong-jaw", "rock-head"]	82	121	119	69	59	71
698	amaura	13	252	72	["rock", "ice"]	["refrigerate", "snow-warning"]	77	59	50	67	63	46
699	aurorus	27	2250	104	["rock", "ice"]	["refrigerate", "snow-warning"]	123	77	72	99	92	58
700	sylveon	10	235	184	["fairy"]	["cute-charm", "pixilate"]	95	65	65	110	130	60
701	hawlucha	8	215	175	["fighting", "flying"]	["limber", "unburden", "mold-breaker"]	78	92	75	74	63	118
702	dedenne	2	22	151	["electric", "fairy"]	["cheek-pouch", "pickup", "plus"]	67	58	57	81	67	101
703	carbink	3	57	100	["rock", "fairy"]	["clear-body", "sturdy"]	50	50	150	50	150	50
704	goomy	3	28	60	["dragon"]	["sap-sipper", "hydration", "gooey"]	45	50	35	55	75	40
705	sliggoo	8	175	158	["dragon"]	["sap-sipper", "hydration", "gooey"]	68	75	53	83	113	60
706	goodra	20	1505	300	["dragon"]	["sap-sipper", "hydration", "gooey"]	90	100	70	110	150	80
707	klefki	2	30	165	["steel", "fairy"]	["prankster", "magician"]	57	80	91	80	87	75
708	phantump	4	70	62	["ghost", "grass"]	["natural-cure", "frisk", "harvest"]	43	70	48	50	60	38
709	trevenant	15	710	166	["ghost", "grass"]	["natural-cure", "frisk", "harvest"]	85	110	76	65	82	56
710	pumpkaboo-average	4	50	67	["ghost", "grass"]	["pickup", "frisk", "insomnia"]	49	66	70	44	55	51
711	gourgeist-average	9	125	173	["ghost", "grass"]	["pickup", "frisk", "insomnia"]	65	90	122	58	75	84
712	bergmite	10	995	61	["ice"]	["own-tempo", "ice-body", "sturdy"]	55	69	85	32	35	28
713	avalugg	20	5050	180	["ice"]	["own-tempo", "ice-body", "sturdy"]	95	117	184	44	46	28
714	noibat	5	80	49	["flying", "dragon"]	["frisk", "infiltrator", "telepathy"]	40	30	35	45	40	55
715	noivern	15	850	187	["flying", "dragon"]	["frisk", "infiltrator", "telepathy"]	85	70	80	97	80	123
716	xerneas	30	2150	340	["fairy"]	["fairy-aura"]	126	131	95	131	98	99
717	yveltal	58	2030	340	["dark", "flying"]	["dark-aura"]	126	131	95	131	98	99
718	zygarde-50	50	3050	300	["dragon", "ground"]	["aura-break"]	108	100	121	81	95	95
719	diancie	7	88	300	["rock", "fairy"]	["clear-body"]	50	100	150	100	150	50
720	hoopa	5	90	270	["psychic", "ghost"]	["magician"]	80	110	60	150	130	70
721	volcanion	17	1950	300	["fire", "water"]	["water-absorb"]	80	110	120	130	90	70
722	rowlet	3	15	64	["grass", "flying"]	["overgrow", "long-reach"]	68	55	55	50	50	42
723	dartrix	7	160	147	["grass", "flying"]	["overgrow", "long-reach"]	78	75	75	70	70	52
724	decidueye	16	366	265	["grass", "ghost"]	["overgrow", "long-reach"]	78	107	75	100	100	70
725	litten	4	43	64	["fire"]	["blaze", "intimidate"]	45	65	40	60	40	70
726	torracat	7	250	147	["fire"]	["blaze", "intimidate"]	65	85	50	80	50	90
727	incineroar	18	830	265	["fire", "dark"]	["blaze", "intimidate"]	95	115	90	80	90	60
728	popplio	4	75	64	["water"]	["torrent", "liquid-voice"]	50	54	54	66	56	40
729	brionne	6	175	147	["water"]	["torrent", "liquid-voice"]	60	69	69	91	81	50
730	primarina	18	440	265	["water", "fairy"]	["torrent", "liquid-voice"]	80	74	74	126	116	60
731	pikipek	3	12	53	["normal", "flying"]	["keen-eye", "skill-link", "pickup"]	35	75	30	30	30	65
732	trumbeak	6	148	124	["normal", "flying"]	["keen-eye", "skill-link", "pickup"]	55	85	50	40	50	75
733	toucannon	11	260	218	["normal", "flying"]	["keen-eye", "skill-link", "sheer-force"]	80	120	75	75	75	60
734	yungoos	4	60	51	["normal"]	["stakeout", "strong-jaw", "adaptability"]	48	70	30	30	30	45
735	gumshoos	7	142	146	["normal"]	["stakeout", "strong-jaw", "adaptability"]	88	110	60	55	60	45
736	grubbin	4	44	60	["bug"]	["swarm"]	47	62	45	55	45	46
737	charjabug	5	105	140	["bug", "electric"]	["battery"]	57	82	95	55	75	36
738	vikavolt	15	450	250	["bug", "electric"]	["levitate"]	77	70	90	145	75	43
739	crabrawler	6	70	68	["fighting"]	["hyper-cutter", "iron-fist", "anger-point"]	47	82	57	42	47	63
740	crabominable	17	1800	167	["fighting", "ice"]	["hyper-cutter", "iron-fist", "anger-point"]	97	132	77	62	67	43
741	oricorio-baile	6	34	167	["fire", "flying"]	["dancer"]	75	70	70	98	70	93
742	cutiefly	1	2	61	["bug", "fairy"]	["honey-gather", "shield-dust", "sweet-veil"]	40	45	40	55	40	84
743	ribombee	2	5	162	["bug", "fairy"]	["honey-gather", "shield-dust", "sweet-veil"]	60	55	60	95	70	124
744	rockruff	5	92	56	["rock"]	["keen-eye", "vital-spirit", "steadfast"]	45	65	40	30	40	60
745	lycanroc-midday	8	250	170	["rock"]	["keen-eye", "sand-rush", "steadfast"]	75	115	65	55	65	112
746	wishiwashi-solo	2	3	61	["water"]	["schooling"]	45	20	20	25	25	40
747	mareanie	4	80	61	["poison", "water"]	["merciless", "limber", "regenerator"]	50	53	62	43	52	45
748	toxapex	7	145	173	["poison", "water"]	["merciless", "limber", "regenerator"]	50	63	152	53	142	35
749	mudbray	10	1100	77	["ground"]	["own-tempo", "stamina", "inner-focus"]	70	100	70	45	55	45
750	mudsdale	25	9200	175	["ground"]	["own-tempo", "stamina", "inner-focus"]	100	125	100	55	85	35
751	dewpider	3	40	54	["water", "bug"]	["water-bubble", "water-absorb"]	38	40	52	40	72	27
752	araquanid	18	820	159	["water", "bug"]	["water-bubble", "water-absorb"]	68	70	92	50	132	42
753	fomantis	3	15	50	["grass"]	["leaf-guard", "contrary"]	40	55	35	50	35	35
754	lurantis	9	185	168	["grass"]	["leaf-guard", "contrary"]	70	105	90	80	90	45
755	morelull	2	15	57	["grass", "fairy"]	["illuminate", "effect-spore", "rain-dish"]	40	35	55	65	75	15
756	shiinotic	10	115	142	["grass", "fairy"]	["illuminate", "effect-spore", "rain-dish"]	60	45	80	90	100	30
757	salandit	6	48	64	["poison", "fire"]	["corrosion", "oblivious"]	48	44	40	71	40	77
758	salazzle	12	222	168	["poison", "fire"]	["corrosion", "oblivious"]	68	64	60	111	60	117
759	stufful	5	68	68	["normal", "fighting"]	["fluffy", "klutz", "cute-charm"]	70	75	50	45	50	50
760	bewear	21	1350	175	["normal", "fighting"]	["fluffy", "klutz", "unnerve"]	120	125	80	55	60	60
761	bounsweet	3	32	42	["grass"]	["leaf-guard", "oblivious", "sweet-veil"]	42	30	38	30	38	32
762	steenee	7	82	102	["grass"]	["leaf-guard", "oblivious", "sweet-veil"]	52	40	48	40	48	62
763	tsareena	12	214	255	["grass"]	["leaf-guard", "queenly-majesty", "sweet-veil"]	72	120	98	50	98	72
764	comfey	1	3	170	["fairy"]	["flower-veil", "triage", "natural-cure"]	51	52	90	82	110	100
765	oranguru	15	760	172	["normal", "psychic"]	["inner-focus", "telepathy", "symbiosis"]	90	60	80	90	110	60
766	passimian	20	828	172	["fighting"]	["receiver", "defiant"]	100	120	90	40	60	80
767	wimpod	5	120	46	["bug", "water"]	["wimp-out"]	25	35	40	20	30	80
768	golisopod	20	1080	186	["bug", "water"]	["emergency-exit"]	75	125	140	60	90	40
769	sandygast	5	700	64	["ghost", "ground"]	["water-compaction", "sand-veil"]	55	55	80	70	45	15
770	palossand	13	2500	168	["ghost", "ground"]	["water-compaction", "sand-veil"]	85	75	110	100	75	35
771	pyukumuku	3	12	144	["water"]	["innards-out", "unaware"]	55	60	130	30	130	5
772	type-null	19	1205	107	["normal"]	["battle-armor"]	95	95	95	95	95	59
773	silvally	23	1005	285	["normal"]	["rks-system"]	95	95	95	95	95	95
774	minior-red-meteor	3	400	154	["rock", "flying"]	["shields-down"]	60	60	100	60	100	60
775	komala	4	199	168	["normal"]	["comatose"]	65	115	65	75	95	65
776	turtonator	20	2120	170	["fire", "dragon"]	["shell-armor"]	60	78	135	91	85	36
777	togedemaru	3	33	152	["electric", "steel"]	["iron-barbs", "lightning-rod", "sturdy"]	65	98	63	40	73	96
778	mimikyu-disguised	2	7	167	["ghost", "fairy"]	["disguise"]	55	90	80	50	105	96
779	bruxish	9	190	166	["water", "psychic"]	["dazzling", "strong-jaw", "wonder-skin"]	68	105	70	70	70	92
780	drampa	30	1850	170	["normal", "dragon"]	["berserk", "sap-sipper", "cloud-nine"]	78	60	85	135	91	36
781	dhelmise	39	2100	181	["ghost", "grass"]	["steelworker"]	70	131	100	86	90	40
782	jangmo-o	6	297	60	["dragon"]	["bulletproof", "soundproof", "overcoat"]	45	55	65	45	45	45
783	hakamo-o	12	470	147	["dragon", "fighting"]	["bulletproof", "soundproof", "overcoat"]	55	75	90	65	70	65
784	kommo-o	16	782	300	["dragon", "fighting"]	["bulletproof", "soundproof", "overcoat"]	75	110	125	100	105	85
785	tapu-koko	18	205	285	["electric", "fairy"]	["electric-surge", "telepathy"]	70	115	85	95	75	130
786	tapu-lele	12	186	285	["psychic", "fairy"]	["psychic-surge", "telepathy"]	70	85	75	130	115	95
787	tapu-bulu	19	455	285	["grass", "fairy"]	["grassy-surge", "telepathy"]	70	130	115	85	95	75
788	tapu-fini	13	212	285	["water", "fairy"]	["misty-surge", "telepathy"]	70	75	115	95	130	85
789	cosmog	2	1	40	["psychic"]	["unaware"]	43	29	31	29	31	37
790	cosmoem	1	9999	140	["psychic"]	["sturdy"]	43	29	131	29	131	37
791	solgaleo	34	2300	340	["psychic", "steel"]	["full-metal-body"]	137	137	107	113	89	97
792	lunala	40	1200	340	["psychic", "ghost"]	["shadow-shield"]	137	113	89	137	107	97
793	nihilego	12	555	285	["rock", "poison"]	["beast-boost"]	109	53	47	127	131	103
794	buzzwole	24	3336	285	["bug", "fighting"]	["beast-boost"]	107	139	139	53	53	79
795	pheromosa	18	250	285	["bug", "fighting"]	["beast-boost"]	71	137	37	137	37	151
796	xurkitree	38	1000	285	["electric"]	["beast-boost"]	83	89	71	173	71	83
797	celesteela	92	9999	285	["steel", "flying"]	["beast-boost"]	97	101	103	107	101	61
798	kartana	3	1	285	["grass", "steel"]	["beast-boost"]	59	181	131	59	31	109
799	guzzlord	55	8880	285	["dark", "dragon"]	["beast-boost"]	223	101	53	97	53	43
800	necrozma	24	2300	300	["psychic"]	["prism-armor"]	97	107	101	127	89	79
801	magearna	10	805	300	["steel", "fairy"]	["soul-heart"]	80	95	115	130	115	65
802	marshadow	7	222	300	["fighting", "ghost"]	["technician"]	90	125	80	90	90	125
803	poipole	6	18	210	["poison"]	["beast-boost"]	67	73	67	73	67	73
804	naganadel	36	1500	270	["poison", "dragon"]	["beast-boost"]	73	73	73	127	73	121
805	stakataka	55	8200	285	["rock", "steel"]	["beast-boost"]	61	131	211	53	101	13
806	blacephalon	18	130	285	["fire", "ghost"]	["beast-boost"]	53	127	53	151	79	107
807	zeraora	15	445	300	["electric"]	["volt-absorb"]	88	112	75	102	80	143
808	meltan	2	80	150	["steel"]	["magnet-pull"]	46	65	65	55	35	34
809	melmetal	25	8000	300	["steel"]	["iron-fist"]	135	143	143	80	65	34
810	grookey	3	50	62	["grass"]	["overgrow", "grassy-surge"]	50	65	50	40	40	65
811	thwackey	7	140	147	["grass"]	["overgrow", "grassy-surge"]	70	85	70	55	60	80
812	rillaboom	21	900	265	["grass"]	["overgrow", "grassy-surge"]	100	125	90	60	70	85
813	scorbunny	3	45	62	["fire"]	["blaze", "libero"]	50	71	40	40	40	69
814	raboot	6	90	147	["fire"]	["blaze", "libero"]	65	86	60	55	60	94
815	cinderace	14	330	265	["fire"]	["blaze", "libero"]	80	116	75	65	75	119
816	sobble	3	40	62	["water"]	["torrent", "sniper"]	50	40	40	70	40	70
817	drizzile	7	115	147	["water"]	["torrent", "sniper"]	65	60	55	95	55	90
818	inteleon	19	452	265	["water"]	["torrent", "sniper"]	70	85	65	125	65	120
819	skwovet	3	25	55	["normal"]	["cheek-pouch", "gluttony"]	70	55	55	35	35	25
820	greedent	6	60	161	["normal"]	["cheek-pouch", "gluttony"]	120	95	95	55	75	20
821	rookidee	2	18	49	["flying"]	["keen-eye", "unnerve", "big-pecks"]	38	47	35	33	35	57
822	corvisquire	8	160	128	["flying"]	["keen-eye", "unnerve", "big-pecks"]	68	67	55	43	55	77
823	corviknight	22	750	248	["flying", "steel"]	["pressure", "unnerve", "mirror-armor"]	98	87	105	53	85	67
824	blipbug	4	80	36	["bug"]	["swarm", "compound-eyes", "telepathy"]	25	20	20	25	45	45
825	dottler	4	195	117	["bug", "psychic"]	["swarm", "compound-eyes", "telepathy"]	50	35	80	50	90	30
826	orbeetle	4	408	253	["bug", "psychic"]	["swarm", "frisk", "telepathy"]	60	45	110	80	120	90
827	nickit	6	89	49	["dark"]	["run-away", "unburden", "stakeout"]	40	28	28	47	52	50
828	thievul	12	199	159	["dark"]	["run-away", "unburden", "stakeout"]	70	58	58	87	92	90
829	gossifleur	4	22	50	["grass"]	["cotton-down", "regenerator", "effect-spore"]	40	40	60	40	60	10
830	eldegoss	5	25	161	["grass"]	["cotton-down", "regenerator", "effect-spore"]	60	50	90	80	120	60
831	wooloo	6	60	122	["normal"]	["fluffy", "run-away", "bulletproof"]	42	40	55	40	45	48
832	dubwool	13	430	172	["normal"]	["fluffy", "steadfast", "bulletproof"]	72	80	100	60	90	88
833	chewtle	3	85	57	["water"]	["strong-jaw", "shell-armor", "swift-swim"]	50	64	50	38	38	44
834	drednaw	10	1155	170	["water", "rock"]	["strong-jaw", "shell-armor", "swift-swim"]	90	115	90	48	68	74
835	yamper	3	135	54	["electric"]	["ball-fetch", "rattled"]	59	45	50	40	50	26
836	boltund	10	340	172	["electric"]	["strong-jaw", "competitive"]	69	90	60	90	60	121
837	rolycoly	3	120	48	["rock"]	["steam-engine", "heatproof", "flash-fire"]	30	40	50	40	50	30
838	carkol	11	780	144	["rock", "fire"]	["steam-engine", "flame-body", "flash-fire"]	80	60	90	60	70	50
839	coalossal	28	3105	255	["rock", "fire"]	["steam-engine", "flame-body", "flash-fire"]	110	80	120	80	90	30
840	applin	2	5	52	["grass", "dragon"]	["ripen", "gluttony", "bulletproof"]	40	40	80	40	40	20
841	flapple	3	10	170	["grass", "dragon"]	["ripen", "gluttony", "hustle"]	70	110	80	95	60	70
842	appletun	4	130	170	["grass", "dragon"]	["ripen", "gluttony", "thick-fat"]	110	85	80	100	80	30
843	silicobra	22	76	63	["ground"]	["sand-spit", "shed-skin", "sand-veil"]	52	57	75	35	50	46
844	sandaconda	38	655	179	["ground"]	["sand-spit", "shed-skin", "sand-veil"]	72	107	125	65	70	71
845	cramorant	8	180	166	["flying", "water"]	["gulp-missile"]	70	85	55	85	95	85
846	arrokuda	5	10	56	["water"]	["swift-swim", "propeller-tail"]	41	63	40	40	30	66
847	barraskewda	13	300	172	["water"]	["swift-swim", "propeller-tail"]	61	123	60	60	50	136
848	toxel	4	110	48	["electric", "poison"]	["rattled", "static", "klutz"]	40	38	35	54	35	40
849	toxtricity-amped	16	400	176	["electric", "poison"]	["punk-rock", "plus", "technician"]	75	98	70	114	70	75
850	sizzlipede	7	10	61	["fire", "bug"]	["flash-fire", "white-smoke", "flame-body"]	50	65	45	50	50	45
851	centiskorch	30	1200	184	["fire", "bug"]	["flash-fire", "white-smoke", "flame-body"]	100	115	65	90	90	65
852	clobbopus	6	40	62	["fighting"]	["limber", "technician"]	50	68	60	50	50	32
853	grapploct	16	390	168	["fighting"]	["limber", "technician"]	80	118	90	70	80	42
854	sinistea	1	2	62	["ghost"]	["weak-armor", "cursed-body"]	40	45	45	74	54	50
855	polteageist	2	4	178	["ghost"]	["weak-armor", "cursed-body"]	60	65	65	134	114	70
856	hatenna	4	34	53	["psychic"]	["healer", "anticipation", "magic-bounce"]	42	30	45	56	53	39
857	hattrem	6	48	130	["psychic"]	["healer", "anticipation", "magic-bounce"]	57	40	65	86	73	49
858	hatterene	21	51	255	["psychic", "fairy"]	["healer", "anticipation", "magic-bounce"]	57	90	95	136	103	29
859	impidimp	4	55	53	["dark", "fairy"]	["prankster", "frisk", "pickpocket"]	45	45	30	55	40	50
860	morgrem	8	125	130	["dark", "fairy"]	["prankster", "frisk", "pickpocket"]	65	60	45	75	55	70
861	grimmsnarl	15	610	255	["dark", "fairy"]	["prankster", "frisk", "pickpocket"]	95	120	65	95	75	60
862	obstagoon	16	460	260	["dark", "normal"]	["reckless", "guts", "defiant"]	93	90	101	60	81	95
863	perrserker	8	280	154	["steel"]	["battle-armor", "tough-claws", "steely-spirit"]	70	110	100	50	60	50
864	cursola	10	4	179	["ghost"]	["weak-armor", "perish-body"]	60	95	50	145	130	30
865	sirfetchd	8	1170	177	["fighting"]	["steadfast", "scrappy"]	62	135	95	68	82	65
866	mr-rime	15	582	182	["ice", "psychic"]	["tangled-feet", "screen-cleaner", "ice-body"]	80	85	75	110	100	70
867	runerigus	16	666	169	["ground", "ghost"]	["wandering-spirit"]	58	95	145	50	105	30
868	milcery	2	3	54	["fairy"]	["sweet-veil", "aroma-veil"]	45	40	40	50	61	34
869	alcremie	3	5	173	["fairy"]	["sweet-veil", "aroma-veil"]	65	60	75	110	121	64
870	falinks	30	620	165	["fighting"]	["battle-armor", "defiant"]	65	100	100	70	60	75
871	pincurchin	3	10	152	["electric"]	["lightning-rod", "electric-surge"]	48	101	95	91	85	15
872	snom	3	38	37	["ice", "bug"]	["shield-dust", "ice-scales"]	30	25	35	45	30	20
873	frosmoth	13	420	166	["ice", "bug"]	["shield-dust", "ice-scales"]	70	65	60	125	90	65
874	stonjourner	25	5200	165	["rock"]	["power-spot"]	100	125	135	20	20	70
875	eiscue-ice	14	890	165	["ice"]	["ice-face"]	75	80	110	65	90	50
876	indeedee-male	9	280	166	["psychic", "normal"]	["inner-focus", "synchronize", "psychic-surge"]	60	65	55	105	95	95
877	morpeko-full-belly	3	30	153	["electric", "dark"]	["hunger-switch"]	58	95	58	70	58	97
878	cufant	12	1000	66	["steel"]	["sheer-force", "heavy-metal"]	72	80	49	40	49	40
879	copperajah	30	6500	175	["steel"]	["sheer-force", "heavy-metal"]	122	130	69	80	69	30
880	dracozolt	18	1900	177	["electric", "dragon"]	["volt-absorb", "hustle", "sand-rush"]	90	100	90	80	70	75
881	arctozolt	23	1500	177	["electric", "ice"]	["volt-absorb", "static", "slush-rush"]	90	100	90	90	80	55
882	dracovish	23	2150	177	["water", "dragon"]	["water-absorb", "strong-jaw", "sand-rush"]	90	90	100	70	80	75
883	arctovish	20	1750	177	["water", "ice"]	["water-absorb", "ice-body", "slush-rush"]	90	90	100	80	90	55
884	duraludon	18	400	187	["steel", "dragon"]	["light-metal", "heavy-metal", "stalwart"]	70	95	115	120	50	85
885	dreepy	5	20	54	["dragon", "ghost"]	["clear-body", "infiltrator", "cursed-body"]	28	60	30	40	30	82
886	drakloak	14	110	144	["dragon", "ghost"]	["clear-body", "infiltrator", "cursed-body"]	68	80	50	60	50	102
887	dragapult	30	500	300	["dragon", "ghost"]	["clear-body", "infiltrator", "cursed-body"]	88	120	75	100	75	142
888	zacian	28	1100	335	["fairy"]	["intrepid-sword"]	92	120	115	80	115	138
889	zamazenta	29	2100	335	["fighting"]	["dauntless-shield"]	92	120	115	80	115	138
890	eternatus	200	9500	345	["poison", "dragon"]	["pressure"]	140	85	95	145	95	130
891	kubfu	6	120	77	["fighting"]	["inner-focus"]	60	90	60	53	50	72
892	urshifu-single-strike	19	1050	275	["fighting", "dark"]	["unseen-fist"]	100	130	100	63	60	97
893	zarude	18	700	300	["dark", "grass"]	["leaf-guard"]	105	120	105	70	95	105
894	regieleki	12	1450	290	["electric"]	["transistor"]	80	100	50	100	50	200
895	regidrago	21	2000	290	["dragon"]	["dragons-maw"]	200	100	50	100	50	80
896	glastrier	22	8000	290	["ice"]	["chilling-neigh"]	100	145	130	65	110	30
897	spectrier	20	445	290	["ghost"]	["grim-neigh"]	100	65	60	145	80	130
898	calyrex	11	77	250	["psychic", "grass"]	["unnerve"]	100	80	80	80	80	80
899	wyrdeer	18	951	\N	["normal", "psychic"]	["intimidate", "frisk", "sap-sipper"]	103	105	72	105	75	65
900	kleavor	18	890	\N	["bug", "rock"]	["swarm", "sheer-force", "sharpness"]	70	135	95	45	70	85
901	ursaluna	24	2900	\N	["ground", "normal"]	["guts", "bulletproof", "unnerve"]	130	140	105	45	80	50
902	basculegion-male	30	1100	\N	["water", "ghost"]	["swift-swim", "adaptability", "mold-breaker"]	120	112	65	80	75	78
903	sneasler	13	430	\N	["fighting", "poison"]	["pressure", "unburden", "poison-touch"]	80	130	60	40	80	120
904	overqwil	25	605	\N	["dark", "poison"]	["poison-point", "swift-swim", "intimidate"]	85	115	95	65	65	85
905	enamorus-incarnate	16	480	\N	["fairy", "flying"]	["cute-charm", "contrary"]	74	115	70	135	80	106
906	sprigatito	4	41	\N	["grass"]	["overgrow", "protean"]	40	61	54	45	45	65
907	floragato	9	122	\N	["grass"]	["overgrow", "protean"]	61	80	63	60	63	83
908	meowscarada	15	312	\N	["grass", "dark"]	["overgrow", "protean"]	76	110	70	81	70	123
909	fuecoco	4	98	\N	["fire"]	["blaze", "unaware"]	67	45	59	63	40	36
910	crocalor	10	307	\N	["fire"]	["blaze", "unaware"]	81	55	78	90	58	49
911	skeledirge	16	3265	\N	["fire", "ghost"]	["blaze", "unaware"]	104	75	100	110	75	66
912	quaxly	5	61	\N	["water"]	["torrent", "moxie"]	55	65	45	50	45	50
913	quaxwell	12	215	\N	["water"]	["torrent", "moxie"]	70	85	65	65	60	65
914	quaquaval	18	619	\N	["water", "fighting"]	["torrent", "moxie"]	85	120	80	85	75	85
915	lechonk	5	102	\N	["normal"]	["aroma-veil", "gluttony", "thick-fat"]	54	45	40	35	45	35
916	oinkologne	10	1200	\N	["normal"]	["lingering-aroma", "gluttony", "thick-fat"]	110	100	75	59	80	65
917	tarountula	3	40	\N	["bug"]	["insomnia", "stakeout"]	35	41	45	29	40	20
918	spidops	10	165	\N	["bug"]	["insomnia", "stakeout"]	60	79	92	52	86	35
919	nymble	2	10	\N	["bug"]	["swarm", "tinted-lens"]	33	46	40	21	25	45
920	lokix	10	175	\N	["bug", "dark"]	["swarm", "tinted-lens"]	71	102	78	52	55	92
921	pawmi	3	25	\N	["electric"]	["static", "natural-cure", "iron-fist"]	45	50	20	40	25	60
922	pawmo	4	65	\N	["electric", "fighting"]	["volt-absorb", "natural-cure", "iron-fist"]	60	75	40	50	40	85
923	pawmot	9	410	\N	["electric", "fighting"]	["volt-absorb", "natural-cure", "iron-fist"]	70	115	70	70	60	105
924	tandemaus	3	18	\N	["normal"]	["run-away", "pickup", "own-tempo"]	50	50	45	40	45	75
925	maushold	3	23	\N	["normal"]	["friend-guard", "cheek-pouch", "technician"]	74	75	70	65	75	111
926	fidough	3	109	\N	["fairy"]	["own-tempo", "klutz"]	37	55	70	30	55	65
927	dachsbun	5	149	\N	["fairy"]	["well-baked-body", "aroma-veil"]	57	80	115	50	80	95
928	smoliv	3	65	\N	["grass", "normal"]	["early-bird", "harvest"]	41	35	45	58	51	30
929	dolliv	6	119	\N	["grass", "normal"]	["early-bird", "harvest"]	52	53	60	78	78	33
930	arboliva	14	482	\N	["grass", "normal"]	["seed-sower", "harvest"]	78	69	90	125	109	39
931	squawkabilly	6	24	\N	["normal", "flying"]	["intimidate", "hustle", "guts"]	82	96	51	45	51	92
932	nacli	4	160	\N	["rock"]	["purifying-salt", "sturdy", "clear-body"]	55	55	75	35	35	25
933	naclstack	6	1050	\N	["rock"]	["purifying-salt", "sturdy", "clear-body"]	60	60	100	35	65	35
934	garganacl	23	2400	\N	["rock"]	["purifying-salt", "sturdy", "clear-body"]	100	100	130	45	90	35
935	charcadet	6	105	\N	["fire"]	["flash-fire", "flame-body"]	40	50	40	50	40	35
936	armarouge	15	850	\N	["fire", "psychic"]	["flash-fire", "weak-armor"]	85	60	100	125	80	75
937	ceruledge	16	620	\N	["fire", "ghost"]	["flash-fire", "weak-armor"]	75	125	80	60	100	85
938	tadbulb	3	4	\N	["electric"]	["own-tempo", "static", "damp"]	61	31	41	59	35	45
939	bellibolt	12	1130	\N	["electric"]	["electromorphosis", "static", "damp"]	109	64	91	103	83	45
940	wattrel	4	36	\N	["electric", "flying"]	["wind-power", "volt-absorb", "competitive"]	40	40	35	55	40	70
941	kilowattrel	14	386	\N	["electric", "flying"]	["wind-power", "volt-absorb", "competitive"]	70	70	60	105	60	125
942	maschiff	5	160	\N	["dark"]	["intimidate", "run-away", "stakeout"]	60	78	60	40	51	51
943	mabosstiff	11	610	\N	["dark"]	["intimidate", "guard-dog", "stakeout"]	80	120	90	60	70	85
944	shroodle	2	7	\N	["poison", "normal"]	["unburden", "pickpocket", "prankster"]	40	65	35	40	35	75
945	grafaiai	7	272	\N	["poison", "normal"]	["unburden", "poison-touch", "prankster"]	63	95	65	80	72	110
946	bramblin	6	6	\N	["grass", "ghost"]	["wind-rider", "infiltrator"]	40	65	30	45	35	60
947	brambleghast	12	60	\N	["grass", "ghost"]	["wind-rider", "infiltrator"]	55	115	70	80	70	90
948	toedscool	9	330	\N	["ground", "grass"]	["mycelium-might", "mycelium-might"]	40	40	35	50	100	70
949	toedscruel	19	580	\N	["ground", "grass"]	["mycelium-might", "mycelium-might"]	80	70	65	80	120	100
950	klawf	13	790	\N	["rock"]	["anger-shell", "shell-armor", "regenerator"]	70	100	115	35	55	75
951	capsakid	3	30	\N	["grass"]	["chlorophyll", "insomnia", "klutz"]	50	62	40	62	40	50
952	scovillain	9	150	\N	["grass", "fire"]	["chlorophyll", "insomnia", "moody"]	65	108	65	108	65	75
953	rellor	2	10	\N	["bug"]	["compound-eyes", "shed-skin"]	41	50	60	31	58	30
954	rabsca	3	35	\N	["bug", "psychic"]	["synchronize", "telepathy"]	75	50	85	115	100	45
955	flittle	2	15	\N	["psychic"]	["anticipation", "frisk", "speed-boost"]	30	35	30	55	30	75
956	espathra	19	900	\N	["psychic"]	["opportunist", "frisk", "speed-boost"]	95	60	60	101	60	105
957	tinkatink	4	89	\N	["fairy", "steel"]	["mold-breaker", "own-tempo", "pickpocket"]	50	45	45	35	64	58
958	tinkatuff	7	591	\N	["fairy", "steel"]	["mold-breaker", "own-tempo", "pickpocket"]	65	55	55	45	82	78
959	tinkaton	7	1128	\N	["fairy", "steel"]	["mold-breaker", "own-tempo", "pickpocket"]	85	75	77	70	105	94
960	wiglett	12	18	\N	["water"]	["gooey", "rattled", "sand-veil"]	10	55	25	35	25	95
961	wugtrio	12	54	\N	["water"]	["gooey", "rattled", "sand-veil"]	35	100	50	50	70	120
962	bombirdier	15	429	\N	["flying", "dark"]	["big-pecks", "keen-eye", "rocky-payload"]	70	103	85	60	85	82
963	finizen	13	602	\N	["water"]	["water-veil", "water-veil"]	70	45	40	45	40	75
964	palafin	13	602	\N	["water"]	["zero-to-hero", "zero-to-hero"]	100	70	72	53	62	100
965	varoom	10	350	\N	["steel", "poison"]	["overcoat", "slow-start"]	45	70	63	30	45	47
966	revavroom	18	1200	\N	["steel", "poison"]	["overcoat", "filter"]	80	119	90	54	67	90
967	cyclizar	16	630	\N	["dragon", "normal"]	["shed-skin", "regenerator"]	70	95	65	85	65	121
968	orthworm	25	3100	\N	["steel"]	["earth-eater", "sand-veil"]	70	85	145	60	55	65
969	glimmet	7	80	\N	["rock", "poison"]	["toxic-debris", "corrosion"]	48	35	42	105	60	60
970	glimmora	15	450	\N	["rock", "poison"]	["toxic-debris", "corrosion"]	83	55	90	130	81	86
971	greavard	6	350	\N	["ghost"]	["pickup", "fluffy"]	50	61	60	30	55	34
972	houndstone	20	150	\N	["ghost"]	["sand-rush", "fluffy"]	72	101	100	50	97	68
973	flamigo	16	370	\N	["flying", "fighting"]	["scrappy", "tangled-feet", "costar"]	82	115	74	75	64	90
974	cetoddle	12	450	\N	["ice"]	["thick-fat", "snow-cloak", "sheer-force"]	108	68	45	30	40	43
975	cetitan	45	7000	\N	["ice"]	["thick-fat", "slush-rush", "sheer-force"]	170	113	65	45	55	73
976	veluza	25	900	\N	["water", "psychic"]	["mold-breaker", "sharpness"]	90	102	73	78	65	70
977	dondozo	120	2200	\N	["water"]	["unaware", "oblivious", "water-veil"]	150	100	115	65	65	35
978	tatsugiri	3	80	\N	["dragon", "water"]	["commander", "storm-drain"]	68	50	60	120	95	82
979	annihilape	12	560	\N	["fighting", "ghost"]	["vital-spirit", "inner-focus", "defiant"]	110	115	80	50	90	90
980	clodsire	18	2230	\N	["poison", "ground"]	["poison-point", "water-absorb", "unaware"]	130	75	60	45	100	20
981	farigiraf	32	1600	\N	["normal", "psychic"]	["cud-chew", "armor-tail", "sap-sipper"]	120	90	70	110	70	60
982	dudunsparce	36	392	\N	["normal"]	["serene-grace", "run-away", "rattled"]	125	100	80	85	75	55
983	kingambit	20	1200	\N	["dark", "steel"]	["defiant", "supreme-overlord", "pressure"]	100	135	120	60	85	50
984	great-tusk	22	3200	\N	["ground", "fighting"]	["protosynthesis", "protosynthesis"]	115	131	131	53	53	87
985	scream-tail	12	80	\N	["fairy", "psychic"]	["protosynthesis", "protosynthesis"]	115	65	99	65	115	111
986	brute-bonnet	12	210	\N	["grass", "dark"]	["protosynthesis", "protosynthesis"]	111	127	99	79	99	55
987	flutter-mane	14	40	\N	["ghost", "fairy"]	["protosynthesis", "protosynthesis"]	55	55	55	135	135	135
988	slither-wing	32	920	\N	["bug", "fighting"]	["protosynthesis", "protosynthesis"]	85	135	79	85	105	81
989	sandy-shocks	23	600	\N	["electric", "ground"]	["protosynthesis", "protosynthesis"]	85	81	97	121	85	101
990	iron-treads	9	2400	\N	["ground", "steel"]	["quark-drive", "quark-drive"]	90	112	120	72	70	106
991	iron-bundle	6	110	\N	["ice", "water"]	["quark-drive", "quark-drive"]	56	80	114	124	60	136
992	iron-hands	18	3807	\N	["fighting", "electric"]	["quark-drive", "quark-drive"]	154	140	108	50	68	50
993	iron-jugulis	13	1110	\N	["dark", "flying"]	["quark-drive", "quark-drive"]	94	80	86	122	80	108
994	iron-moth	12	360	\N	["fire", "poison"]	["quark-drive", "quark-drive"]	80	70	60	140	110	110
995	iron-thorns	16	3030	\N	["rock", "electric"]	["quark-drive", "quark-drive"]	100	134	110	70	84	72
996	frigibax	5	170	\N	["dragon", "ice"]	["thermal-exchange", "ice-body"]	65	75	45	35	45	55
997	arctibax	8	300	\N	["dragon", "ice"]	["thermal-exchange", "ice-body"]	90	95	66	45	65	62
998	baxcalibur	21	2100	\N	["dragon", "ice"]	["thermal-exchange", "ice-body"]	115	145	92	75	86	87
999	gimmighoul	3	50	\N	["ghost"]	["rattled", "rattled"]	45	30	70	75	70	10
1000	gholdengo	12	300	\N	["steel", "ghost"]	["good-as-gold", "good-as-gold"]	87	60	95	133	91	84
1001	wo-chien	15	742	\N	["dark", "grass"]	["tablets-of-ruin", "tablets-of-ruin"]	85	85	100	95	135	70
1002	chien-pao	19	1522	\N	["dark", "ice"]	["sword-of-ruin", "sword-of-ruin"]	80	120	80	90	65	135
1003	ting-lu	27	6997	\N	["dark", "ground"]	["vessel-of-ruin", "vessel-of-ruin"]	155	110	125	55	80	45
1004	chi-yu	4	49	\N	["dark", "fire"]	["beads-of-ruin", "beads-of-ruin"]	55	80	80	135	120	100
1005	roaring-moon	20	3800	\N	["dragon", "dark"]	["protosynthesis", "protosynthesis"]	105	139	71	55	101	119
1006	iron-valiant	14	350	\N	["fairy", "fighting"]	["quark-drive", "quark-drive"]	74	130	90	120	60	116
1007	koraidon	25	3030	\N	["fighting", "dragon"]	["orichalcum-pulse", "orichalcum-pulse"]	100	135	115	85	100	135
1008	miraidon	35	2400	\N	["electric", "dragon"]	["hadron-engine", "hadron-engine"]	100	85	100	135	115	135
1009	walking-wake	35	2800	\N	["water", "dragon"]	["protosynthesis", "protosynthesis"]	99	83	91	125	83	109
1010	iron-leaves	15	1250	\N	["grass", "psychic"]	["quark-drive", "quark-drive"]	90	130	88	70	108	104
1015	ahahah	1.5	25	\N	["NewType"]	["NewAbility"]	80	90	70	110	80	100
\.


--
-- TOC entry 4784 (class 0 OID 16472)
-- Dependencies: 215
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (x1) FROM stdin;
5
\.


--
-- TOC entry 4793 (class 0 OID 0)
-- Dependencies: 216
-- Name: pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_id_seq', 1015, true);


--
-- TOC entry 4640 (class 2606 OID 16647)
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id);


-- Completed on 2024-01-10 00:31:53

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _follows; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._follows (
    follower_id smallint,
    followed_id smallint,
    created_ts bigint
);


ALTER TABLE public._follows OWNER TO rebasedata;

--
-- Name: _friend_requests; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._friend_requests (
    requester_id smallint,
    addressee_id smallint,
    status character varying(8) DEFAULT NULL::character varying,
    requested_ts bigint,
    responded_ts character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._friend_requests OWNER TO rebasedata;

--
-- Name: _ratings; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._ratings (
    show_id smallint,
    user_id smallint,
    rating_half smallint,
    ts bigint
);


ALTER TABLE public._ratings OWNER TO rebasedata;

--
-- Name: _review_votes; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._review_votes (
    show_id smallint,
    review_user_id smallint,
    voter_user_id smallint,
    vote smallint,
    ts bigint
);


ALTER TABLE public._review_votes OWNER TO rebasedata;

--
-- Name: _reviews; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._reviews (
    show_id smallint,
    user_id smallint,
    review_text character varying(1969) DEFAULT NULL::character varying,
    ts bigint
);


ALTER TABLE public._reviews OWNER TO rebasedata;

--
-- Name: _roles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._roles (
    id smallint,
    name character varying(17) DEFAULT NULL::character varying,
    slug character varying(17) DEFAULT NULL::character varying,
    color character varying(7) DEFAULT NULL::character varying,
    created_ts bigint
);


ALTER TABLE public._roles OWNER TO rebasedata;

--
-- Name: _shows; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._shows (
    id smallint,
    title character varying(51) DEFAULT NULL::character varying,
    corps character varying(20) DEFAULT NULL::character varying,
    year smallint,
    norm_key character varying(65) DEFAULT NULL::character varying,
    created_ts bigint,
    poster_url character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._shows OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(5) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Name: _user_roles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user_roles (
    user_id smallint,
    role_id smallint,
    assigned_ts bigint,
    assigned_by_user_id smallint
);


ALTER TABLE public._user_roles OWNER TO rebasedata;

--
-- Name: _users; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._users (
    id smallint,
    username character varying(23) DEFAULT NULL::character varying,
    pass_hash character varying(162) DEFAULT NULL::character varying,
    is_admin smallint,
    created_ts bigint,
    avatar_url character varying(31) DEFAULT NULL::character varying,
    banner_url character varying(180) DEFAULT NULL::character varying,
    theme_color character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE public._users OWNER TO rebasedata;

--
-- Data for Name: _follows; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._follows (follower_id, followed_id, created_ts) FROM stdin;
5	1	1770436276
1	3	1770437080
\.


--
-- Data for Name: _friend_requests; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._friend_requests (requester_id, addressee_id, status, requested_ts, responded_ts) FROM stdin;
5	1	accepted	1770436274	1770436281
3	6	accepted	1770436797	1770437160
3	5	pending	1770436812	
3	7	accepted	1770436825	1770437221
3	4	pending	1770436833	
3	2	pending	1770436848	
1	3	accepted	1770437075	1770437097
6	8	accepted	1770437183	1770437247
6	13	pending	1770437199	
6	7	accepted	1770437213	1770437220
6	2	pending	1770437216	
8	3	pending	1770446895	
8	1	pending	1770446906	
8	5	pending	1770446969	
1	13	pending	1770453043	
\.


--
-- Data for Name: _ratings; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._ratings (show_id, user_id, rating_half, ts) FROM stdin;
46	2	7	1770240981
108	1	8	1770254334
1	1	10	1770254110
34	1	10	1770254343
161	1	7	1770254410
158	1	7	1770254444
24	4	0	1770340960
46	3	6	1770340993
45	3	0	1770341052
1	3	10	1770341086
46	5	7	1770343937
45	4	10	1770344074
3	4	3	1770344089
1	5	10	1770345982
34	5	9	1770346005
108	5	3	1770346041
3	3	10	1770347908
34	3	9	1770347941
108	3	6	1770347969
24	3	6	1770348054
246	3	1	1770348440
24	6	5	1770355270
41	6	9	1770355328
46	6	5	1770355358
46	7	6	1770434635
50	6	8	1770355411
41	8	9	1770355440
24	8	4	1770355474
45	8	0	1770355502
50	3	5	1770355513
48	6	4	1770355535
3	1	10	1770355538
3	8	10	1770355550
45	6	0	1770355572
45	7	0	1770355585
3	7	10	1770355669
661	6	5	1770355677
41	3	9	1770416461
38	6	10	1770355721
39	6	8	1770355831
4	3	10	1770355832
49	7	4	1770355923
38	3	9	1770356324
24	7	6	1770356804
45	9	0	1770356854
179	10	6	1770356942
45	10	0	1770356980
43	10	9	1770357001
184	10	3	1770357091
29	6	7	1770358685
363	6	8	1770358725
367	6	6	1770358783
43	3	7	1770363938
44	6	6	1770358813
661	3	6	1770447020
660	6	6	1770358906
179	3	7	1770358912
179	7	7	1770358964
448	6	8	1770359006
41	7	9	1770359015
60	6	9	1770359585
448	3	8	1770359785
46	10	5	1770359832
29	3	8	1770360370
179	6	7	1770360428
448	7	8	1770360608
367	7	7	1770361433
49	3	3	1770361432
47	3	6	1770361591
181	7	8	1770361698
30	3	1	1770362195
69	3	8	1770363851
68	3	8	1770363865
37	3	9	1770364141
372	7	8	1770364839
349	10	10	1770384958
373	1	0	1770396339
46	13	7	1770403914
41	1	8	1770404593
24	1	5	1770404629
179	1	6	1770404650
50	1	6	1770404671
46	1	7	1770404698
48	1	5	1770404734
179	13	7	1770405135
41	13	9	1770405406
661	13	8	1770407528
363	1	8	1770410816
184	1	4	1770410830
29	1	7	1770410840
661	1	7	1770410860
45	1	0	1770410873
47	1	6	1770410901
367	1	6	1770410913
44	1	7	1770410925
181	1	5	1770410941
51	1	7	1770410950
196	1	2	1770410958
185	1	7	1770410968
70	1	7	1770410984
60	1	8	1770410995
30	1	0	1770411006
186	1	4	1770411016
370	1	3	1770411024
363	3	8	1770415783
44	3	7	1770415818
185	3	6	1770415836
39	3	8	1770415913
181	3	6	1770416017
42	3	8	1770416032
26	3	8	1770416051
25	3	9	1770416062
187	3	7	1770416073
76	3	8	1770416103
109	3	5	1770416135
190	3	8	1770416165
60	3	8	1770416188
51	3	7	1770416211
370	3	2	1770416250
53	3	1	1770416276
373	3	10	1770416296
196	3	3	1770416317
48	7	3	1770423402
3	5	10	1770436260
5	3	9	1770437224
106	3	8	1770437230
6	3	9	1770437239
366	3	8	1770437247
9	3	8	1770437254
164	3	8	1770437269
223	3	7	1770437278
53	1	1	1770437323
189	3	7	1770447495
214	1	9	1770448075
33	3	8	1770449713
32	3	9	1770449722
31	3	7	1770449730
54	3	9	1770449738
107	3	10	1770449744
62	3	8	1770449762
107	1	9	1770449800
38	1	9	1770449814
39	1	8	1770449824
40	1	5	1770449832
33	1	8	1770449839
32	1	9	1770449847
31	1	7	1770449855
54	1	8	1770449868
62	1	9	1770449881
25	1	9	1770450216
841	1	5	1770450223
58	1	4	1770450241
372	1	8	1770450254
28	3	9	1770450991
133	3	9	1770451005
841	6	4	1770451325
121	3	1	1770451350
121	1	2	1770451358
184	6	2	1770451369
842	6	4	1770451411
58	6	8	1770451447
349	1	1	1770451453
205	3	1	1770452086
\.


--
-- Data for Name: _review_votes; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._review_votes (show_id, review_user_id, voter_user_id, vote, ts) FROM stdin;
46	3	1	1	1770341036
24	4	3	1	1770341040
45	3	5	1	1770343868
45	3	4	1	1770344037
46	2	5	1	1770345955
34	5	3	1	1770347949
46	5	1	1	1770355385
46	7	1	1	1770355388
46	6	1	1	1770355400
45	8	7	1	1770355640
45	4	7	1	1770355649
45	5	7	1	1770355651
45	3	7	1	1770355653
45	6	9	1	1770356860
45	6	1	1	1770356862
45	6	3	1	1770356864
45	9	3	1	1770356867
45	6	8	1	1770356875
45	8	3	1	1770356884
45	7	3	1	1770356889
45	7	9	1	1770356895
45	8	9	1	1770356898
45	6	7	1	1770356901
45	9	7	1	1770356909
661	3	6	1	1770358887
179	3	8	1	1770358953
448	6	3	1	1770359797
448	3	6	1	1770359812
179	10	3	1	1770360337
29	3	6	1	1770360384
29	7	6	1	1770360389
41	3	1	1	1770404602
661	3	1	1	1770410866
46	13	7	1	1770434574
46	6	7	1	1770434608
41	13	7	1	1770434648
45	4	6	-1	1770437323
45	4	3	-1	1770437340
45	4	1	-1	1770437343
\.


--
-- Data for Name: _reviews; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._reviews (show_id, user_id, review_text, ts) FROM stdin;
46	2	Ass	1770240988
24	4	Worst show ever.	1770340970
46	3	mid	1770341000
45	3	never write again	1770341058
45	5	Why are you like this	1770343922
45	4	Holy fucking ass wipe. Gross	1770343928
46	5	Derivative midness	1770345805
24	5	Israel propagnda	1770345933
34	5	The best part was when they died	1770346014
108	5	My review tilted into the shit category	1770346052
24	6	The 2nd best high school show to win dci finals.	1770355284
46	7	Epic	1770355366
41	6	ðððð	1770355347
46	6	wow what a step in innovation dci made with woodwind soloists! surely the blue devils utilized the rule change well right?	1770355388
50	6	I love this ballad, seeing spectator sport live is much more different than on video. Brass was awesome.	1770355446
24	8	children counting	1770355483
1	7	d	1770355493
45	8	wait! wait! wait! wait!	1770355533
50	3	a pretty bad show saved by an extremely talented corps	1770416539
48	6	The worst crown show post covid	1770355547
45	7	I had to get lasik after watching this show	1770355626
45	6	At DCI Atlanta, I sat to a man who marched memphis blues in the 60s. Talking to him, I learned he was an avid drum corps fan and would give standing ovations at the end of every show, no matter the corps. This continued through the day, and as the crossmen finally crosswalked to the end, all he gave was a slow clap.	1770355660
661	6	I can't find the bell	1770355683
41	3	great show. seems like designers struggled a little bit with finishing the show, but that doesn't bring the overall product down much.	1770355793
38	6	Cinema. I fw this show heavy, also one of the best uses of trombone	1770355804
39	6	So fun, not the best show, but its so entertaining and it really feels like a certain trip.	1770355868
45	9	wait	1770356857
179	10	Fun show idea, really liked the creativity in this show	1770356957
45	10	Woah	1770356986
43	10	Flie or die	1770357010
29	6	Im shifting	1770358690
363	6	Im biased cause my friend is in the euph duet	1770358742
367	6	the best dies irae arrangment	1770358794
44	6	I love the other one	1770358819
661	3	i cant find the bell (louder)	1770358835
660	6	This show mogs crosswalking heavy	1770358914
179	3	it is dripping	1770358927
179	7	My faucet literally dripped after watching this. Great show and comeback from a past great corp	1770360394
448	6	EFFECTIVE	1770359013
41	7	The show is overall great. The closer did seem like they were struggling to fit the sidechain gimmick + the Son Lux original song though.	1770359114
60	6	this is my favorite post covid mandarins show, just a shame it didnt have the best finals run	1770359603
448	3	i nutted!!!!!!!!!!!!!!!!!	1770359793
46	10	I gathered to watch this	1770359840
29	7	Im shifting	1770360348
29	3	im shifting	1770360378
448	7	Actually, a surprisingly good show. They even played Hey Jude and had a great company front in the closer	1770360631
372	7	Great Design. Couple design mishaps in the opener and ballad isn't necessarily the msot complicated	1770364868
3	1	Perfect pacing, perfect visual design. Some of the most effective moments in drum corps, period. Flow.	1770404818
46	13	Visually this program checks most of your typical top tier show boxes, but still somehow falls short with seemingly less inspired drill and staging than we're used to from the Blue Devils of years past. The musical arrangements for this show are excellent but seem to lack direction and energy in many moments. The theming and basis behind this show are second to none but it feels the design staff was never able to make it over the hump per se.\r\n\r\nI personally didn't hate the inclusion of the Soprano sax, especially in the introduction. I think it possibly could have gotten shoehorned into the musical program after the rule changes, but I'd like to think that isn't the case. The way the chairs transform to become stages and their use in the show is quite genius. The closer drill was fantastic and tight (matching with the final gathering moment) which was a refreshing dynamic moment in the staging era.\r\n\r\nspecial shoutout to the snareline for powering through the season and cleaning up their add in feature and making it great. The amount of dogpiling from the internet they received was so unnecessary and disrespectful of the work these performers put into these shows.	1770405102
41	13	Observer effect is what me and many of my Gen Z cohorts would call a "Mega Brain" Show. As usual with the bluecoats design team, every visual aspect of this show is incredibly well thought out and refined. The idea of the observer effect being that we can only observe a moment of an event and not the entire totality, also that our act of observation causes an effect on the event. Speaking to how important our engagement and spectator experience of the marching art form is so integral to the activity.\r\n\r\nThe designers love to play with your idea of perception. In the opener the drill and props set up the ensemble to resemble the Double-Slit experiment. In quantum mechanics this experiment demonstrates the observer effect. As the drumline approaches front field, they are separated and playing the same figures but with timing differences. You can only really listen in on one group to understand what you're hearing, forcing you to observe them independently and only really getting a decent read on that one event. \r\n\r\nThe sidechaining effect used in the closer was really neat when utilized and will be interesting to see in the future. As we have seen in the past the bluecoats are always on the cutting edge of design and always spawn groups using the similar ideas in the years after.\r\n\r\nThe use of live mixing and looping is pretty revolutionary as well. The ensemble has done similar effects in past shows (notably 2015,2019, and 2021) of having multiple small ensembles playing in a sequence or using samples. With the advent of recorded brass not being permitted the music team was able to find a loophole in this with using live sampling and looping. How they are able to line things up musically with this is impressive but the musical effect is powerful.\r\n\r\nOverall, this is an extremely progressive and cutting-edge show. It unfortunately stepped on its own feet a few times in execution but was still easily the strongest show design of the year.	1770407507
373	3	wonderful.	1770416294
3	5	Perfect	1770436264
24	3	bibi approves!	1770437321
661	1	i still can't find the bell	1770446980
184	1	more like, making me dream. honk shooooo	1770447034
29	1	im shifting	1770447046
841	6	i fw the music heavy but besides it i wasn’t interedted	1770451342
184	6	I HATE AI	1770451375
842	6	repertoire was fun	1770451423
58	6	I LOVE ATLANTA ð¤	1770451466
\.


--
-- Data for Name: _roles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._roles (id, name, slug, color, created_ts) FROM stdin;
1	Verified Reviewer	verified-reviewer	#409c40	1770248751
2	Creator	creator	#e1e226	1770404326
\.


--
-- Data for Name: _shows; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._shows (id, title, corps, year, norm_key, created_ts, poster_url) FROM stdin;
1	Felliniesque	Blue Devils	2014	2014|blue devils|felliniesque	1770231476	
2	Roman Images	Star of Indiana	1991	1991|star of indiana|roman images	1770231476	
3	Change is Everything	Bluecoats	2024	2024|bluecoats|change is everything	1770231476	
4	Cabaret Voltaire	Blue Devils	2012	2012|blue devils|cabaret voltaire	1770231476	
5	Ghostlight	Blue Devils	2019	2019|blue devils|ghostlight	1770231476	
6	Metamorph	Blue Devils	2017	2017|blue devils|metamorph	1770231476	
7	E=MC²	Carolina Crown	2013	2013|carolina crown|emc	1770231476	
8	Spartacus	Phantom Regiment	2008	2008|phantom regiment|spartacus	1770231476	
9	Ink	Blue Devils	2015	2015|blue devils|ink	1770231476	
10	Niagara Falls	Cavaliers	2000	2000|cavaliers|niagara falls	1770231476	
11	Beast	Carolina Crown	2018	2018|carolina crown|beast	1770231476	
12	Four Corners	Cavaliers	2001	2001|cavaliers|four corners	1770231476	
13	Frameworks	Cavaliers	2002	2002|cavaliers|frameworks	1770231476	
14	Spin Cycle	Cavaliers	2003	2003|cavaliers|spin cycle	1770231476	
15	007	Cavaliers	2004	2004|cavaliers|007	1770231476	
16	My Kind of Town	Cavaliers	2005	2005|cavaliers|my kind of town	1770231476	
17	Machine	Cavaliers	2006	2006|cavaliers|machine	1770231476	
18	And So It Goes	Cavaliers	2007	2007|cavaliers|and so it goes	1770231476	
19	Samurai	Cavaliers	2008	2008|cavaliers|samurai	1770231476	
20	The Great Divide	Cavaliers	2009	2009|cavaliers|the great divide	1770231476	
21	Mad World	Cavaliers	2010	2010|cavaliers|mad world	1770231476	
22	XtraordinarY	Cavaliers	2011	2011|cavaliers|xtraordinary	1770231476	
23	Men Are From Mars	Cavaliers	2017	2017|cavaliers|men are from mars	1770231476	
24	BOOM	Boston Crusaders	2025	2025|boston crusaders|boom	1770231476	
25	The Cutouts	Blue Devils	2023	2023|blue devils|the cutouts	1770231476	
26	Tempus Blue	Blue Devils	2022	2022|blue devils|tempus blue	1770231476	
27	The Wrong Side of the Tracks	Cavaliers	2019	2019|cavaliers|the wrong side of the tracks	1770231476	
28	Babylon	Santa Clara Vanguard	2018	2018|santa clara vanguard|babylon	1770231476	
29	ShapeShift	Cavaliers	2025	2025|cavaliers|shapeshift	1770231476	
30	Beneath the Armor	Cavaliers	2024	2024|cavaliers|beneath the armor	1770231476	
31	Jagged Line	Bluecoats	2017	2017|bluecoats|jagged line	1770231476	
32	Session 44	Bluecoats	2018	2018|bluecoats|session 44	1770231476	
33	The Bluecoats	Bluecoats	2019	2019|bluecoats|the bluecoats	1770231476	
34	That One Second	Blue Knights	2014	2014|blue knights|that one second	1770231476	
35	Stonehenge	Cadets	1998	1998|cadets|stonehenge	1770231476	
36	Phenomenon of Cool	Blue Devils	2003	2003|blue devils|phenomenon of cool	1770231476	
37	On Air	Phantom Regiment	2007	2007|phantom regiment|on air	1770231476	
38	Garden of Love	Bluecoats	2023	2023|bluecoats|garden of love	1770231476	
39	Riffs and Revelations	Bluecoats	2022	2022|bluecoats|riffs and revelations	1770231476	
40	Lucy	Bluecoats	2021	2021|bluecoats|lucy	1770231476	
41	The Observer Effect	Bluecoats	2025	2025|bluecoats|the observer effect	1770231476	
42	Exogenesis	Phantom Regiment	2023	2023|phantom regiment|exogenesis	1770231476	
43	Mynd	Phantom Regiment	2024	2024|phantom regiment|mynd	1770231476	
44	*No Title*	Phantom Regiment	2025	2025|phantom regiment|no title	1770231476	
45	Crosswalking	Crossmen	2025	2025|crossmen|crosswalking	1770231476	
46	Variations on a Gathering	Blue Devils	2025	2025|blue devils|variations on a gathering	1770231476	
47	aVANt GUARD	Santa Clara Vanguard	2025	2025|santa clara vanguard|avant guard	1770231476	
48	The Point of No Return	Carolina Crown	2025	2025|carolina crown|the point of no return	1770231476	
49	Promethean	Carolina Crown	2024	2024|carolina crown|promethean	1770231476	
50	Spectator Sport	Blue Stars	2025	2025|blue stars|spectator sport	1770231476	
51	The Romantics	Blue Devils	2024	2024|blue devils|the romantics	1770231476	
52	Wicked Games	Boston Crusaders	2017	2017|boston crusaders|wicked games	1770231476	
53	Right Here Right Now	Carolina Crown	2022	2022|carolina crown|right here right now	1770231476	
54	Downside Up	Bluecoats	2016	2016|bluecoats|downside up	1770231476	
55	Inferno	Carolina Crown	2015	2015|carolina crown|inferno	1770231476	
56	For The Common Good	Carolina Crown	2012	2012|carolina crown|for the common good	1770231476	
57	The Round Table: Echoes of Camelot	Carolina Crown	2023	2023|carolina crown|the round table echoes of camelot	1770231476	
58	Rocket	Spirit of Atlanta	2025	2025|spirit of atlanta|rocket	1770231476	
59	Constantly Risking Absurdity	Blue Devils	2008	2008|blue devils|constantly risking absurdity	1770231476	
60	Vieux Carré	Mandarins	2024	2024|mandarins|vieux carr	1770231476	
61	Side by Side	Cadets	2013	2013|cadets|side by side	1770231476	
62	To Look for America	Bluecoats	2013	2013|bluecoats|to look for america	1770231476	
63	Brave New World	Bluecoats	2011	2011|bluecoats|brave new world	1770231476	
64	To The Moon	Blue Devils B	2016	2016|blue devils b|to the moon	1770231476	
65	Rach Star	Carolina Crown	2011	2011|carolina crown|rach star	1770231476	
66	Juliet	Phantom Regiment	2011	2011|phantom regiment|juliet	1770231476	
67	Between Angels and Demons	Cadets	2011	2011|cadets|between angels and demons	1770231476	
68	Through a Glass, Darkly	Blue Devils	2010	2010|blue devils|through a glass darkly	1770231476	
69	1930	Blue Devils	2009	2009|blue devils|1930	1770231476	
70	Glitch	Boston Crusaders	2024	2024|boston crusaders|glitch	1770231476	
71	Vagabond	Santa Clara Vanguard	2024	2024|santa clara vanguard|vagabond	1770231476	
72	Winged Victory	Blue Devils	2007	2007|blue devils|winged victory	1770231476	
73	The Zone	Cadets	2005	2005|cadets|the zone	1770231476	
74	We Are The Future	Cadets	2000	2000|cadets|we are the future	1770231476	
147	The Power of 10	Cadets	2015	2015|cadets|the power of 10	1770231476	
75	Inventions for a New Millennium	Santa Clara Vanguard	1999	1999|santa clara vanguard|inventions for a new millennium	1770231476	
76	Paradise Lost	Boston Crusaders	2022	2022|boston crusaders|paradise lost	1770231476	
77	Rhythms... At the Edge of Time	Blue Devils	1999	1999|blue devils|rhythms at the edge of time	1770231476	
78	As Time Goes By...	Blue Devils	1997	1997|blue devils|as time goes by	1770231476	
79	Club Blue: A Gangster Chronicle	Blue Devils	1996	1996|blue devils|club blue a gangster chronicle	1770231476	
80	A Defiant Heart	Phantom Regiment	1996	1996|phantom regiment|a defiant heart	1770231476	
81	The Planets	Cavaliers	1995	1995|cavaliers|the planets	1770231476	
82	My Spanish Heart	Blue Devils	1994	1994|blue devils|my spanish heart	1770231476	
83	In the Spring, At the Time When Kings Go Off to War	Cadets	1993	1993|cadets|in the spring at the time when kings go off to war	1770231476	
84	Revolution and Triumph	Cavaliers	1992	1992|cavaliers|revolution and triumph	1770231476	
85	A Bernstein Celebration	Cadets	1990	1990|cadets|a bernstein celebration	1770231476	
86	Phantom of the Opera	Santa Clara Vanguard	1989	1989|santa clara vanguard|phantom of the opera	1770231476	
87	Malagueña	Madison Scouts	1988	1988|madison scouts|malaguea	1770231476	
88	Appalachian Spring	Cadets	1987	1987|cadets|appalachian spring	1770231476	
89	Channel One Suite	Blue Devils	1986	1986|blue devils|channel one suite	1770231476	
90	To Candide	Cadets	1985	1985|cadets|to candide	1770231476	
91	*No Title*	Cadets	1984	1984|cadets|no title	1770231476	
92	*No Title*	Cadets	1983	1983|cadets|no title	1770231476	
93	*No Title*	Blue Devils	1982	1982|blue devils|no title	1770231476	
94	*No Title*	Santa Clara Vanguard	1981	1981|santa clara vanguard|no title	1770231476	
95	*No Title*	Blue Devils	1980	1980|blue devils|no title	1770231476	
96	*No Title*	Blue Devils	1979	1979|blue devils|no title	1770231476	
97	*No Title*	Santa Clara Vanguard	1978	1978|santa clara vanguard|no title	1770231476	
98	*No Title*	Blue Devils	1977	1977|blue devils|no title	1770231476	
99	*No Title*	Blue Devils	1976	1976|blue devils|no title	1770231476	
100	*No Title*	Madison Scouts	1975	1975|madison scouts|no title	1770231476	
101	*No Title*	Santa Clara Vanguard	1974	1974|santa clara vanguard|no title	1770231476	
102	Creatures	Spirit of Atlanta	2024	2024|spirit of atlanta|creatures	1770231476	
103	*No Title*	Santa Clara Vanguard	1973	1973|santa clara vanguard|no title	1770231476	
104	*No Title*	Anaheim Kingsmen	1972	1972|anaheim kingsmen|no title	1770231476	
105	Life Rite After	Mandarins	2018	2018|mandarins|life rite after	1770231476	
106	Dreams and Nighthawks	Blue Devils	2018	2018|blue devils|dreams and nighthawks	1770231476	
107	Kinetic Noise	Bluecoats	2015	2015|bluecoats|kinetic noise	1770231476	
108	Tilt	Bluecoats	2014	2014|bluecoats|tilt	1770231476	
109	White Whale	Boston Crusaders	2023	2023|boston crusaders|white whale	1770231476	
110	Animal Farm	Boston Crusaders	2014	2014|boston crusaders|animal farm	1770231476	
111	Propaganda	Cavaliers	2016	2016|cavaliers|propaganda	1770231476	
112	Fiddler on the Roof	Santa Clara Vanguard	1992	1992|santa clara vanguard|fiddler on the roof	1770231476	
113	Beneath the Surface	Carolina Crown	2019	2019|carolina crown|beneath the surface	1770231476	
114	Vox Eversio	Santa Clara Vanguard	2019	2019|santa clara vanguard|vox eversio	1770231476	
115	Goliath	Boston Crusaders	2019	2019|boston crusaders|goliath	1770231476	
116	I Remember Everything	Blue Knights	2019	2019|blue knights|i remember everything	1770231476	
117	Call of the Wild	Blue Stars	2019	2019|blue stars|call of the wild	1770231476	
118	Behold	Cadets	2019	2019|cadets|behold	1770231476	
119	SubTerra	Mandarins	2019	2019|mandarins|subterra	1770231476	
120	Valkyrie	Crossmen	2019	2019|crossmen|valkyrie	1770231476	
121	I Am Joan	Phantom Regiment	2019	2019|phantom regiment|i am joan	1770231476	
122	S.O.S.	Boston Crusaders	2018	2018|boston crusaders|sos	1770231476	
123	On Madness and Creativity	Cavaliers	2018	2018|cavaliers|on madness and creativity	1770231476	
124	The Unity Project	Cadets	2018	2018|cadets|the unity project	1770231476	
125	The Once and Future Carpenter	Blue Stars	2018	2018|blue stars|the once and future carpenter	1770231476	
126	The Fall and Rise	Blue Knights	2018	2018|blue knights|the fall and rise	1770231476	
127	This New World	Phantom Regiment	2018	2018|phantom regiment|this new world	1770231476	
128	The In	Between - Crossmen	2018	2018|between - crossmen|the in	1770231476	
129	Relentless	Carolina Crown	2016	2016|carolina crown|relentless	1770231476	
130	The Great Event	Blue Knights	2016	2016|blue knights|the great event	1770231476	
131	It Is	Carolina Crown	2017	2017|carolina crown|it is	1770231476	
132	i	Blue Knights	2017	2017|blue knights|i	1770231476	
133	Ouroboros	Santa Clara Vanguard	2017	2017|santa clara vanguard|ouroboros	1770231476	
134	The Faithful, The Fallen, The Forgiven	Cadets	2017	2017|cadets|the faithful the fallen the forgiven	1770231476	
135	Phantasm	Phantom Regiment	2017	2017|phantom regiment|phantasm	1770231476	
136	Star Crossed	Blue Stars	2017	2017|blue stars|star crossed	1770231476	
137	Enigma	Crossmen	2017	2017|crossmen|enigma	1770231476	
138	Last Man Standing	Madison Scouts	2017	2017|madison scouts|last man standing	1770231476	
139	Force of Nature	Santa Clara Vanguard	2016	2016|santa clara vanguard|force of nature	1770231476	
140	Awakening	Cadets	2016	2016|cadets|awakening	1770231476	
141	Voice of Promise	Phantom Regiment	2016	2016|phantom regiment|voice of promise	1770231476	
142	City of Light	Phantom Regiment	2015	2015|phantom regiment|city of light	1770231476	
143	La Reve	Blue Stars	2016	2016|blue stars|la reve	1770231476	
144	Continuum	Crossmen	2016	2016|crossmen|continuum	1770231476	
145	Drum Corpse Bride	Academy	2016	2016|academy|drum corpse bride	1770231476	
146	Quixotic	Boston Crusaders	2016	2016|boston crusaders|quixotic	1770231476	
148	The Spark of Invention	Santa Clara Vanguard	2015	2015|santa clara vanguard|the spark of invention	1770231476	
149	Because...	Blue Knights	2015	2015|blue knights|because	1770231476	
150	78th and Madison	Madison Scouts	2015	2015|madison scouts|78th and madison	1770231476	
151	Game On	Cavaliers	2015	2015|cavaliers|game on	1770231476	
152	Conquest	Boston Crusaders	2015	2015|boston crusaders|conquest	1770231476	
153	Side Show	Blue Stars	2015	2015|blue stars|side show	1770231476	
154	Above and Beyond	Crossmen	2015	2015|crossmen|above and beyond	1770231476	
155	Fragile	Crossmen	2012	2012|crossmen|fragile	1770231476	
156	Promise: An American Portrait	Cadets	2014	2014|cadets|promise an american portrait	1770231476	
157	Scheherazade	Santa Clara Vanguard	2014	2014|santa clara vanguard|scheherazade	1770231476	
158	Out Of This World	Carolina Crown	2014	2014|carolina crown|out of this world	1770231476	
159	Immortal	Cavaliers	2014	2014|cavaliers|immortal	1770231476	
160	Swan Lake	Phantom Regiment	2014	2014|phantom regiment|swan lake	1770231476	
161	Where the Heart Is	Blue Stars	2014	2014|blue stars|where the heart is	1770231476	
162	Time Trip	Madison Scouts	2014	2014|madison scouts|time trip	1770231476	
163	Alma Gitana	Crossmen	2014	2014|crossmen|alma gitana	1770231476	
164	The Re:Rite of Spring	Blue Devils	2013	2013|blue devils|the rerite of spring	1770231476	
165	Les Misérables	Santa Clara Vanguard	2013	2013|santa clara vanguard|les misrables	1770231476	
166	Triumphant Journey	Phantom Regiment	2013	2013|phantom regiment|triumphant journey	1770231476	
167	Secret Society	Cavaliers	2013	2013|cavaliers|secret society	1770231476	
168	RISE	Boston Crusaders	2013	2013|boston crusaders|rise	1770231476	
169	Corps of Brothers	Madison Scouts	2013	2013|madison scouts|corps of brothers	1770231476	
170	NoBeginningNoEnd	Blue Knights	2013	2013|blue knights|nobeginningnoend	1770231476	
171	Speakeasy	Spirit of Atlanta	2013	2013|spirit of atlanta|speakeasy	1770231476	
172	Voodoo	Blue Stars	2013	2013|blue stars|voodoo	1770231476	
173	Turandot	Phantom Regiment	2012	2012|phantom regiment|turandot	1770231476	
174	12.25	Cadets	2012	2012|cadets|1225	1770231476	
175	Music of the Starry Night	Santa Clara Vanguard	2012	2012|santa clara vanguard|music of the starry night	1770231476	
176	Unmasqued	Bluecoats	2012	2012|bluecoats|unmasqued	1770231476	
177	The Titans	Boston Crusaders	2012	2012|boston crusaders|the titans	1770231476	
178	15 Minutes of Fame	Cavaliers	2012	2012|cavaliers|15 minutes of fame	1770231476	
179	Drip	Blue Knights	2025	2025|blue knights|drip	1770231476	
180	Reframed	Madison Scouts	2012	2012|madison scouts|reframed	1770231476	
181	The Final Sunset	Troopers	2025	2025|troopers|the final sunset	1770231476	
182	Avian	Blue Knights	2012	2012|blue knights|avian	1770231476	
183	Sin City	Spirit of Atlanta	2012	2012|spirit of atlanta|sin city	1770231476	
184	In Restless Dreams	Colts	2025	2025|colts|in restless dreams	1770231476	
185	Universal	Blue Stars	2024	2024|blue stars|universal	1770231476	
186	On Fields	Colts	2024	2024|colts|on fields	1770231476	
187	Dance With The Devil	Troopers	2024	2024|troopers|dance with the devil	1770231476	
188	Mosaic	Madison Scouts	2024	2024|madison scouts|mosaic	1770231476	
189	Atlas Rising	Cadets	2023	2023|cadets|atlas rising	1770231476	
190	Sinnerman	Mandarins	2023	2023|mandarins|sinnerman	1770231476	
191	Where You'll Find Me	Cavaliers	2023	2023|cavaliers|where youll find me	1770231476	
192	Where the Heart Is	Colts	2023	2023|colts|where the heart is	1770231476	
193	To Lasso the Sun	Troopers	2023	2023|troopers|to lasso the sun	1770231476	
194	In ABSINTHEia	Blue Stars	2023	2023|blue stars|in absintheia	1770231476	
195	Unharnessed	Blue Knights	2023	2023|blue knights|unharnessed	1770231476	
196	BusK	Blue Knights	2024	2024|blue knights|busk	1770231476	
197	Finding Nirvana	Santa Clara Vanguard	2022	2022|santa clara vanguard|finding nirvana	1770231476	
198	Rear View Mirror	Cadets	2022	2022|cadets|rear view mirror	1770231476	
199	Of War & Peace	Blue Stars	2022	2022|blue stars|of war  peace	1770231476	
200	No Walk Too Far	Phantom Regiment	2022	2022|phantom regiment|no walk too far	1770231476	
201	Sign of the Times	Cavaliers	2022	2022|cavaliers|sign of the times	1770231476	
202	The Otherside	Mandarins	2022	2022|mandarins|the otherside	1770231476	
203	Silk Road	Colts	2022	2022|colts|silk road	1770231476	
204	VorAcious	Troopers	2022	2022|troopers|voracious	1770231476	
205	Zoom	Boston Crusaders	2021	2021|boston crusaders|zoom	1770231476	
206	Harmonic Journey	Phantom Regiment	2003	2003|phantom regiment|harmonic journey	1770231476	
207	Harmonic Journey	Phantom Regiment	2021	2021|phantom regiment|harmonic journey	1770231476	
208	Always	Blue Knights	2021	2021|blue knights|always	1770231476	
209	Wait For Me	Santa Clara Vanguard	2021	2021|santa clara vanguard|wait for me	1770231476	
210	Legend of the Bottle Tree	Spirit of Atlanta	2021	2021|spirit of atlanta|legend of the bottle tree	1770231476	
211	Exposed	Academy	2021	2021|academy|exposed	1770231476	
212	At the Top of the World	Blue Stars	2021	2021|blue stars|at the top of the world	1770231476	
213	...Shall Always Be	Cadets	2021	2021|cadets|shall always be	1770231476	
214	LIVE! From the Rose	Cavaliers	2021	2021|cavaliers|live from the rose	1770231476	
215	Circuloso	Music City	2021	2021|music city|circuloso	1770231476	
216	There's No Place Like Home	Genesis	2021	2021|genesis|theres no place like home	1770231476	
217	eX	Pacific Crest	2021	2021|pacific crest|ex	1770231476	
218	Leap of Faith	Colts	2021	2021|colts|leap of faith	1770231476	
219	Your Move	Crossmen	2021	2021|crossmen|your move	1770231476	
220	Between the Lines	Madison Scouts	2021	2021|madison scouts|between the lines	1770231476	
221	Beyond the Canvas	Mandarins	2021	2021|mandarins|beyond the canvas	1770231476	
222	Unleashed	Troopers	2021	2021|troopers|unleashed	1770231476	
223	The Beat My Heart Skipped	Blue Devils	2011	2011|blue devils|the beat my heart skipped	1770231476	
224	The Devil's Staircase	Santa Clara Vanguard	2011	2011|santa clara vanguard|the devils staircase	1770231476	
225	Revolution	Boston Crusaders	2011	2011|boston crusaders|revolution	1770231476	
226	An English Folk Song Suite	Blue Knights	2011	2011|blue knights|an english folk song suite	1770231476	
227	New York Morning	Madison Scouts	2011	2011|madison scouts|new york morning	1770231476	
228	Rebourne	Blue Stars	2011	2011|blue stars|rebourne	1770231476	
229	ATL Confidential	Spirit of Atlanta	2011	2011|spirit of atlanta|atl confidential	1770231476	
230	Metropolis	Bluecoats	2010	2010|bluecoats|metropolis	1770231476	
231	A Sec2nd Chance	Carolina Crown	2010	2010|carolina crown|a sec2nd chance	1770231476	
232	Toy Souldier	Cadets	2010	2010|cadets|toy souldier	1770231476	
233	Into the Light	Phantom Regiment	2010	2010|phantom regiment|into the light	1770231476	
234	Bartók	Santa Clara Vanguard	2010	2010|santa clara vanguard|bartk	1770231476	
235	Houdini	Blue Stars	2010	2010|blue stars|houdini	1770231476	
236	Thy Kingdom Come	Boston Crusaders	2010	2010|boston crusaders|thy kingdom come	1770231476	
237	*No Title*	Madison Scouts	2010	2010|madison scouts|no title	1770231476	
238	Europa!	Blue Knights	2010	2010|blue knights|europa	1770231476	
239	The Prayer Cycle	Glassmen	2010	2010|glassmen|the prayer cycle	1770231476	
240	The Grass is Always Greener	Carolina Crown	2009	2009|carolina crown|the grass is always greener	1770231476	
241	West Side Story, Conflict and Resolution	Cadets	2009	2009|cadets|west side story conflict and resolution	1770231476	
242	Ballet For Martha	Santa Clara Vanguard	2009	2009|santa clara vanguard|ballet for martha	1770231476	
243	Imagine	Bluecoats	2009	2009|bluecoats|imagine	1770231476	
244	The Core of Temptation	Boston Crusaders	2009	2009|boston crusaders|the core of temptation	1770231476	
245	The Factory	Blue Stars	2009	2009|blue stars|the factory	1770231476	
246	The Red Violin	Phantom Regiment	2009	2009|phantom regiment|the red violin	1770231476	
247	The Journey of One	Glassmen	2009	2009|glassmen|the journey of one	1770231476	
248	Shiver, A Winter in Colorado	Blue Knights	2009	2009|blue knights|shiver a winter in colorado	1770231476	
249	Western Side Story	Troopers	2009	2009|troopers|western side story	1770231476	
250	Finis	Carolina Crown	2008	2008|carolina crown|finis	1770231476	
251	And The Pursuit of Happiness	Cadets	2008	2008|cadets|and the pursuit of happiness	1770231476	
252	The Knockout	Bluecoats	2008	2008|bluecoats|the knockout	1770231476	
253	3HREE	Santa Clara Vanguard	2008	2008|santa clara vanguard|3hree	1770231476	
254	Le Tour: Every Second Counts	Blue Stars	2008	2008|blue stars|le tour every second counts	1770231476	
255	Knight Reign	Blue Knights	2008	2008|blue knights|knight reign	1770231476	
256	Neocosmos	Boston Crusaders	2008	2008|boston crusaders|neocosmos	1770231476	
257	Kar	Ne-Val - Glassmen	2008	2008|ne-val - glassmen|kar	1770231476	
258	La Noche de la Iguana	Madison Scouts	2008	2008|madison scouts|la noche de la iguana	1770231476	
259	This I Believe	Cadets	2007	2007|cadets|this i believe	1770231476	
260	!	Santa Clara Vanguard	2007	2007|santa clara vanguard|	1770231476	
261	Triple Crown	Carolina Crown	2007	2007|carolina crown|triple crown	1770231476	
262	Criminal	Bluecoats	2007	2007|bluecoats|criminal	1770231476	
263	Dark Dances	Blue Knights	2007	2007|blue knights|dark dances	1770231476	
264	A Picasso Suite	Boston Crusaders	2007	2007|boston crusaders|a picasso suite	1770231476	
265	Equinox	Colts	2007	2007|colts|equinox	1770231476	
266	Gitano	Glassmen	2007	2007|glassmen|gitano	1770231476	
267	Metamorphosis	Crossmen	2007	2007|crossmen|metamorphosis	1770231477	
268	Faust	Phantom Regiment	2006	2006|phantom regiment|faust	1770231477	
269	The Godfather Part BLUE	Blue Devils	2006	2006|blue devils|the godfather part blue	1770231477	
270	Connexus	Bluecoats	2006	2006|bluecoats|connexus	1770231477	
271	Volume 2: Through the Looking Glass	Cadets	2006	2006|cadets|volume 2 through the looking glass	1770231477	
272	Moto Perpetuo	Santa Clara Vanguard	2006	2006|santa clara vanguard|moto perpetuo	1770231477	
273	Dark Knights	Blue Knights	2006	2006|blue knights|dark knights	1770231477	
274	In.Trace.It	Carolina Crown	2006	2006|carolina crown|intraceit	1770231477	
275	Primal Forces	Madison Scouts	2006	2006|madison scouts|primal forces	1770231477	
276	Cathedrals of the Mind	Boston Crusaders	2006	2006|boston crusaders|cathedrals of the mind	1770231477	
277	Beethoven: Mystery & Madness	Glassmen	2006	2006|glassmen|beethoven mystery  madness	1770231477	
278	Old, New, Borrowed & Blue	Spirit of Atlanta	2006	2006|spirit of atlanta|old new borrowed  blue	1770231477	
279	Rhapsody	Phantom Regiment	2005	2005|phantom regiment|rhapsody	1770231477	
280	Dancy Derby of the Century	Blue Devils	2005	2005|blue devils|dancy derby of the century	1770231477	
281	Caravan	Bluecoats	2005	2005|bluecoats|caravan	1770231477	
282	The Carmen Project	Madison Scouts	2005	2005|madison scouts|the carmen project	1770231477	
283	Angelus	Carolina Crown	2005	2005|carolina crown|angelus	1770231477	
284	Russia: Revolution	Santa Clara Vanguard	2005	2005|santa clara vanguard|russia revolution	1770231477	
285	Ode to Joy	Boston Crusaders	2005	2005|boston crusaders|ode to joy	1770231477	
286	A Midsummer Knight's Dream	Blue Knights	2005	2005|blue knights|a midsummer knights dream	1770231477	
287	A New World	Glassmen	2005	2005|glassmen|a new world	1770231477	
288	The Spirit of Broadway	Spirit of Atlanta	2005	2005|spirit of atlanta|the spirit of broadway	1770231477	
289	Summertrain in Blues Mix	Blue Devils	2004	2004|blue devils|summertrain in blues mix	1770231477	
290	ATTRACTION: The Music of Scheherazade	Santa Clara Vanguard	2004	2004|santa clara vanguard|attraction the music of scheherazade	1770231477	
291	Living With The Past	Cadets	2004	2004|cadets|living with the past	1770231477	
292	Apasionada 874	Phantom Regiment	2004	2004|phantom regiment|apasionada 874	1770231477	
293	Mood Swings	Bluecoats	2004	2004|bluecoats|mood swings	1770231477	
294	Bohemia	Carolina Crown	2004	2004|carolina crown|bohemia	1770231477	
295	Madisonic	Madison Scouts	2004	2004|madison scouts|madisonic	1770231477	
296	The Composition of Color	Boston Crusaders	2004	2004|boston crusaders|the composition of color	1770231477	
297	The Big Apple	Cadets	1999	1999|cadets|the big apple	1770231477	
298	A Knight's Tale	Blue Knights	2004	2004|blue knights|a knights tale	1770231477	
299	Unity	Crossmen	2004	2004|crossmen|unity	1770231477	
300	The Voice of One	Glassmen	2004	2004|glassmen|the voice of one	1770231477	
301	Our Favorite Things	Cadets	2003	2003|cadets|our favorite things	1770231477	
302	Pathways	Santa Clara Vanguard	2003	2003|santa clara vanguard|pathways	1770231477	
303	Bravo	Boston Crusaders	2003	2003|boston crusaders|bravo	1770231477	
304	Capture and Escape	Bluecoats	2003	2003|bluecoats|capture and escape	1770231477	
305	Gold, Green and Red	Madison Scouts	2003	2003|madison scouts|gold green and red	1770231477	
306	Color	Crossmen	2003	2003|crossmen|color	1770231477	
307	Bellisimo!	Carolina Crown	2003	2003|carolina crown|bellisimo	1770231477	
308	Time	Spirit of JSU	2003	2003|spirit of jsu|time	1770231477	
309	Silver Voices	Magic of Orlando	2003	2003|magic of orlando|silver voices	1770231477	
310	Jazz, Music Made in America	Blue Devils	2002	2002|blue devils|jazz music made in america	1770231477	
311	An American Revival	Cadets	2002	2002|cadets|an american revival	1770231477	
312	Sound, Shape and Color	Santa Clara Vanguard	2002	2002|santa clara vanguard|sound shape and color	1770231477	
313	You Are My Star	Boston Crusaders	2002	2002|boston crusaders|you are my star	1770231477	
314	Heroic Sketches: The Passion Of Shostakovich	Phantom Regiment	2002	2002|phantom regiment|heroic sketches the passion of shostakovich	1770231477	
315	Urban Dances	Bluecoats	2002	2002|bluecoats|urban dances	1770231477	
316	Odyssey	Glassmen	2002	2002|glassmen|odyssey	1770231477	
317	The Signature Series	Crossmen	2002	2002|crossmen|the signature series	1770231477	
318	Darkness Into Light	Spirit of JSU	2002	2002|spirit of jsu|darkness into light	1770231477	
319	Desert Winds	Magic of Orlando	2002	2002|magic of orlando|desert winds	1770231477	
320	City Riffs	Seattle Cascades	2002	2002|seattle cascades|city riffs	1770231477	
321	Awayday Blue	Blue Devils	2001	2001|blue devils|awayday blue	1770231477	
322	Juxtaperformance	Cadets	2001	2001|cadets|juxtaperformance	1770231477	
323	New Era Metropolis	Santa Clara Vanguard	2001	2001|santa clara vanguard|new era metropolis	1770231477	
324	Imago	Glassmen	2001	2001|glassmen|imago	1770231477	
325	Virtuoso	Phantom Regiment	2001	2001|phantom regiment|virtuoso	1770231477	
326	Late Night Jazz	Crossmen	2001	2001|crossmen|late night jazz	1770231477	
327	Latin Sketches	Bluecoats	2001	2001|bluecoats|latin sketches	1770231477	
328	Harmonium	Boston Crusaders	2001	2001|boston crusaders|harmonium	1770231477	
329	Industry	Carolina Crown	2001	2001|carolina crown|industry	1770231477	
330	Hot Jazz, Madison Style	Madison Scouts	2001	2001|madison scouts|hot jazz madison style	1770231477	
331	Chivalry	Colts	2001	2001|colts|chivalry	1770231477	
332	Methods of Madness	Blue Devils	2000	2000|blue devils|methods of madness	1770231477	
333	Age of Reverence	Santa Clara Vanguard	2000	2000|santa clara vanguard|age of reverence	1770231477	
334	Red	Boston Crusaders	2000	2000|boston crusaders|red	1770231477	
335	Colors of Brass and Percussion	Blue Knights	2000	2000|blue knights|colors of brass and percussion	1770231477	
336	Masters of Mystique	Phantom Regiment	2000	2000|phantom regiment|masters of mystique	1770231477	
337	Concerto in F	Glassmen	2000	2000|glassmen|concerto in f	1770231477	
338	Clubbin' With The Crossmen	Crossmen	2000	2000|crossmen|clubbin with the crossmen	1770231477	
339	The Cossack Brotherhood	Madison Scouts	2000	2000|madison scouts|the cossack brotherhood	1770231477	
340	The Mask of Zorro	Carolina Crown	2000	2000|carolina crown|the mask of zorro	1770231477	
341	Threshold	Bluecoats	2000	2000|bluecoats|threshold	1770231477	
342	Classical Innovations	Cavaliers	1999	1999|cavaliers|classical innovations	1770231477	
343	Empire of Gold	Glassmen	1999	1999|glassmen|empire of gold	1770231477	
344	Jesus Christ Superstar	Madison Scouts	1999	1999|madison scouts|jesus christ superstar	1770231477	
345	Trittico	Blue Knights	1999	1999|blue knights|trittico	1770231477	
346	Tragedy and Triumph	Phantom Regiment	1999	1999|phantom regiment|tragedy and triumph	1770231477	
347	A Collection of Symphonic Dances	Boston Crusaders	1999	1999|boston crusaders|a collection of symphonic dances	1770231477	
348	Changing Perspectives	Crossmen	1999	1999|crossmen|changing perspectives	1770231477	
349	*No Title*	Phantom Regiment	1973	1973|phantom regiment|no title	1770231477	
350	Jekyll and Hyde	Carolina Crown	1999	1999|carolina crown|jekyll and hyde	1770231477	
351	Voices	Colts	1999	1999|colts|voices	1770231477	
352	Aaron Copland: The Modernist	Santa Clara Vanguard	1998	1998|santa clara vanguard|aaron copland the modernist	1770231477	
353	One Hand, One Heart	Blue Devils	1998	1998|blue devils|one hand one heart	1770231477	
354	Traditions For a New Era	Cavaliers	1998	1998|cavaliers|traditions for a new era	1770231477	
355	Dreams of Gold, The Music of Alexander Borodin	Glassmen	1998	1998|glassmen|dreams of gold the music of alexander borodin	1770231477	
356	Power, Pizazz, and All That Jazz	Madison Scouts	1998	1998|madison scouts|power pizazz and all that jazz	1770231477	
357	The Music of Pat Metheny	Crossmen	1998	1998|crossmen|the music of pat metheny	1770231477	
358	Songs from the Eternal City	Phantom Regiment	1998	1998|phantom regiment|songs from the eternal city	1770231477	
359	Masters of the Symphony	Blue Knights	1998	1998|blue knights|masters of the symphony	1770231477	
360	Four Seasons of Jazz	Bluecoats	1998	1998|bluecoats|four seasons of jazz	1770231477	
361	Heroes Then and Now, the Music of Alfred Reed	Carolina Crown	1998	1998|carolina crown|heroes then and now the music of alfred reed	1770231477	
362	A Cappella Celebration	Colts	1998	1998|colts|a cappella celebration	1770231477	
363	If I Must Fall	Mandarins	2025	2025|mandarins|if i must fall	1770231477	
364	Magical Mystery Tour: Part III	Velvet Knights	1992	1992|velvet knights|magical mystery tour part iii	1770231477	
365	The Music of Barber and Bartók	Star of Indiana	1993	1993|star of indiana|the music of barber and bartk	1770231477	
366	As Dreams Are Made On	Blue Devils	2016	2016|blue devils|as dreams are made on	1770231477	
367	It Sin Our Nature	Pacific Crest	2025	2025|pacific crest|it sin our nature	1770231477	
368	The Road Home	Troopers	2011	2011|troopers|the road home	1770231477	
369	A Mobius Trip	Crossmen	2022	2022|crossmen|a mobius trip	1770231477	
370	Lush Life	Crossmen	2024	2024|crossmen|lush life	1770231477	
371	Neon Underground	Spirit of Atlanta	2019	2019|spirit of atlanta|neon underground	1770231477	
372	The Broken Column	Pacific Crest	2024	2024|pacific crest|the broken column	1770231477	
373	9/11	Infinity	2020	2020|infinity|911	1770231477	
374	The Spectrum	Pacific Crest	2012	2012|pacific crest|the spectrum	1770231477	
375	In My Mind	Carolina Crown	2021	2021|carolina crown|in my mind	1770231477	
376	Welcome to the Void	Pacific Crest	2022	2022|pacific crest|welcome to the void	1770231477	
377	Celebration	Cadets	1997	1997|cadets|celebration	1770231477	
378	Fog City Sketches	Santa Clara Vanguard	1997	1997|santa clara vanguard|fog city sketches	1770231477	
379	The Ring	Phantom Regiment	1997	1997|phantom regiment|the ring	1770231477	
380	The Pirates of Lake Mendota	Madison Scouts	1997	1997|madison scouts|the pirates of lake mendota	1770231477	
381	The Colors of Jazz	Crossmen	1997	1997|crossmen|the colors of jazz	1770231477	
382	The Firebird	Cavaliers	1997	1997|cavaliers|the firebird	1770231477	
383	The Age of Gold, The Music of Georges Bizet	Glassmen	1997	1997|glassmen|the age of gold the music of georges bizet	1770231477	
384	Selections from Ben Hur	Blue Knights	1997	1997|blue knights|selections from ben hur	1770231477	
385	Carnivale, Celebrations for Sinner and Saint	Magic of Orlando	1997	1997|magic of orlando|carnivale celebrations for sinner and saint	1770231477	
386	Midnight Blue... Jazz After Dark	Bluecoats	1997	1997|bluecoats|midnight blue jazz after dark	1770231477	
387	Postcards from Britain	Carolina Crown	1997	1997|carolina crown|postcards from britain	1770231477	
388	The American West	Cadets	1996	1996|cadets|the american west	1770231477	
389	Pan American Sketches	Cavaliers	1996	1996|cavaliers|pan american sketches	1770231477	
390	La Mer	Santa Clara Vanguard	1996	1996|santa clara vanguard|la mer	1770231477	
391	A Drum Corps Fan's Dream: Part Dos	Madison Scouts	1996	1996|madison scouts|a drum corps fans dream part dos	1770231477	
392	American Celebrations	Bluecoats	1996	1996|bluecoats|american celebrations	1770231477	
393	The Voices of Jazz	Crossmen	1996	1996|crossmen|the voices of jazz	1770231477	
394	Twelve Seconds to the Moon	Magic of Orlando	1996	1996|magic of orlando|twelve seconds to the moon	1770231477	
395	Chess and the Art of Strategy	Carolina Crown	1996	1996|carolina crown|chess and the art of strategy	1770231477	
396	Magnificat	Colts	1996	1996|colts|magnificat	1770231477	
397	Music of Ron Nelson	Blue Knights	1996	1996|blue knights|music of ron nelson	1770231477	
398	An American Quintet	Cadets	1995	1995|cadets|an american quintet	1770231477	
399	Carpe Noctem	Blue Devils	1995	1995|blue devils|carpe noctem	1770231477	
400	A Drum Corps Fan's Dream	Madison Scouts	1995	1995|madison scouts|a drum corps fans dream	1770231477	
401	Adventures Under a Darkened Sky	Phantom Regiment	1995	1995|phantom regiment|adventures under a darkened sky	1770231477	
402	Not The Nutcracker	Santa Clara Vanguard	1995	1995|santa clara vanguard|not the nutcracker	1770231477	
403	Homefront '45	Bluecoats	1995	1995|bluecoats|homefront 45	1770231477	
404	A Joyful Celebration	Glassmen	1995	1995|glassmen|a joyful celebration	1770231477	
405	Sunday Afternoon in the Park with George	Colts	1995	1995|colts|sunday afternoon in the park with george	1770231477	
406	School for Scandal	Crossmen	1995	1995|crossmen|school for scandal	1770231477	
407	Stormworks	Carolina Crown	1995	1995|carolina crown|stormworks	1770231477	
408	Danse Animale	Magic of Orlando	1995	1995|magic of orlando|danse animale	1770231477	
409	West Side Story	Cadets	1994	1994|cadets|west side story	1770231477	
410	Songs for a Summer Night	Phantom Regiment	1994	1994|phantom regiment|songs for a summer night	1770231477	
411	Rituals	Cavaliers	1994	1994|cavaliers|rituals	1770231477	
412	The Red Poppy	Santa Clara Vanguard	1994	1994|santa clara vanguard|the red poppy	1770231477	
413	Santos, Malaga	Madison Scouts	1994	1994|madison scouts|santos malaga	1770231477	
414	Trittico for Brass Band	Blue Knights	1994	1994|blue knights|trittico for brass band	1770231477	
415	Songs for the Planet Earth Part III, Suite Children	Crossmen	1994	1994|crossmen|songs for the planet earth part iii suite children	1770231477	
416	Blues	Bluecoats	1994	1994|bluecoats|blues	1770231477	
417	Days of Future Past	Glassmen	1994	1994|glassmen|days of future past	1770231477	
418	Cirque de Magique, Part Deux	Magic of Orlando	1994	1994|magic of orlando|cirque de magique part deux	1770231477	
419	Relations and Romance	Colts	1994	1994|colts|relations and romance	1770231477	
420	The Modern Imagination	Phantom Regiment	1993	1993|phantom regiment|the modern imagination	1770231477	
421	A Don Ellis Portrait	Blue Devils	1993	1993|blue devils|a don ellis portrait	1770231477	
422	Heroes: A Symphonic Trilogy	Cavaliers	1993	1993|cavaliers|heroes a symphonic trilogy	1770231477	
423	Reflection and Evolution	Madison Scouts	1993	1993|madison scouts|reflection and evolution	1770231477	
424	A Walton Trilogy	Santa Clara Vanguard	1993	1993|santa clara vanguard|a walton trilogy	1770231477	
425	Songs for the Planet Earth, Part II	Crossmen	1993	1993|crossmen|songs for the planet earth part ii	1770231477	
426	Standards in Blue	Bluecoats	1993	1993|bluecoats|standards in blue	1770231477	
427	The Next Generation	Blue Knights	1993	1993|blue knights|the next generation	1770231477	
428	A Voyage Through Imagination	Glassmen	1993	1993|glassmen|a voyage through imagination	1770231477	
429	The Four Seasons	Colts	1993	1993|colts|the four seasons	1770231477	
430	To Tame the Perilous Skies	The Cadets	1992	1992|the cadets|to tame the perilous skies	1770231477	
431	American Variations	Star of Indiana	1992	1992|star of indiana|american variations	1770231477	
432	Big, Bad and Blue	Blue Devils	1992	1992|blue devils|big bad and blue	1770231477	
433	City of Angels	Madison Scouts	1992	1992|madison scouts|city of angels	1770231477	
434	Songs for the Planet Earth	Crossmen	1992	1992|crossmen|songs for the planet earth	1770231477	
435	War and Peace	Phantom Regiment	1992	1992|phantom regiment|war and peace	1770231477	
436	Portrait of Aaron Copland	Blue Knights	1992	1992|blue knights|portrait of aaron copland	1770231477	
437	A Day in the Life	Bluecoats	1992	1992|bluecoats|a day in the life	1770231477	
438	Symphony No. 1	Freelancers	1992	1992|freelancers|symphony no 1	1770231477	
439	Cavalier Anthems: An Advent Collection	Cavaliers	1991	1991|cavaliers|cavalier anthems an advent collection	1770231477	
440	Phantom Voices	Phantom Regiment	1991	1991|phantom regiment|phantom voices	1770231477	
441	Miss Saigon	Santa Clara Vanguard	1991	1991|santa clara vanguard|miss saigon	1770231477	
442	Conversations in Jazz	Blue Devils	1991	1991|blue devils|conversations in jazz	1770231477	
443	The ABCs of Modern American Music	Cadets	1991	1991|cadets|the abcs of modern american music	1770231477	
444	City of Angels	Madison Scouts	1991	1991|madison scouts|city of angels	1770231477	
445	Pat Metheny Suite	Crossmen	1991	1991|crossmen|pat metheny suite	1770231477	
446	Savannah River Holiday	Blue Knights	1991	1991|blue knights|savannah river holiday	1770231477	
447	Dance Suite	Freelancers	1991	1991|freelancers|dance suite	1770231477	
448	Nutville	Bluecoats	1991	1991|bluecoats|nutville	1770231477	
449	Camelot	Sky Ryders	1991	1991|sky ryders|camelot	1770231477	
450	Cavalier Anthems	Cavaliers	1990	1990|cavaliers|cavalier anthems	1770231477	
451	Belshazzar's Feast	Star of Indiana	1990	1990|star of indiana|belshazzars feast	1770231477	
452	Selections from Tommy	Blue Devils	1990	1990|blue devils|selections from tommy	1770231477	
453	Dreams of Desire	Phantom Regiment	1990	1990|phantom regiment|dreams of desire	1770231477	
454	Carmen	Santa Clara Vanguard	1990	1990|santa clara vanguard|carmen	1770231477	
455	*No Title*	Crossmen	1990	1990|crossmen|no title	1770231477	
456	*No Title*	Bluecoats	1990	1990|bluecoats|no title	1770231477	
457	Undiscovered Madison	Madison Scouts	1990	1990|madison scouts|undiscovered madison	1770231477	
458	Universal Studios Hollywood Tour	Velvet Knights	1990	1990|velvet knights|universal studios hollywood tour	1770231477	
459	*No Title*	Dutch Boy	1990	1990|dutch boy|no title	1770231477	
460	New World Symphony	Phantom Regiment	1989	1989|phantom regiment|new world symphony	1770231477	
461	Gloria	Cavaliers	1989	1989|cavaliers|gloria	1770231477	
462	Ya Gotta Try	Blue Devils	1989	1989|blue devils|ya gotta try	1770231477	
463	Les Misérables	Cadets	1989	1989|cadets|les misrables	1770231477	
464	Crown Imperial	Star of Indiana	1989	1989|star of indiana|crown imperial	1770231477	
465	Make His Praise Glorious	Madison Scouts	1989	1989|madison scouts|make his praise glorious	1770231477	
466	Sing, Sing, Sing	Bluecoats	1989	1989|bluecoats|sing sing sing	1770231477	
467	Florida Suite	Suncoast Sound	1989	1989|suncoast sound|florida suite	1770231477	
468	Adventures on Earth	Freelancers	1989	1989|freelancers|adventures on earth	1770231477	
469	Yo Mambo	Velvet Knights	1989	1989|velvet knights|yo mambo	1770231477	
470	Wind Machine	Crossmen	1989	1989|crossmen|wind machine	1770231477	
471	*No Title*	Blue Stars	1972	1972|blue stars|no title	1770231477	
472	*No Title*	Santa Clara Vanguard	1972	1972|santa clara vanguard|no title	1770231477	
473	*No Title*	27th Lancers	1972	1972|27th lancers|no title	1770231477	
474	*No Title*	Argonne Rebels	1972	1972|argonne rebels|no title	1770231477	
475	*No Title*	Spirit of Atlanta	1990	1990|spirit of atlanta|no title	1770231477	
476	*No Title*	Troopers	1972	1972|troopers|no title	1770231477	
477	Phantom of the Opera	Santa Clara Vanguard	1988	1988|santa clara vanguard|phantom of the opera	1770231477	
478	*No Title*	Kilties	1972	1972|kilties|no title	1770231477	
479	*No Title*	Cavaliers	1972	1972|cavaliers|no title	1770231477	
480	Happy Days Are Here Again	Blue Devils	1988	1988|blue devils|happy days are here again	1770231477	
481	*No Title*	Muchachos	1972	1972|muchachos|no title	1770231477	
482	*No Title*	Bridgemen	1972	1972|bridgemen|no title	1770231477	
483	Third Symphony	Cadets	1988	1988|cadets|third symphony	1770231477	
484	*No Title*	Bleu Raiders	1972	1972|bleu raiders|no title	1770231477	
485	The Firebird	Cavaliers	1988	1988|cavaliers|the firebird	1770231477	
486	Romeo and Juliet	Phantom Regiment	1988	1988|phantom regiment|romeo and juliet	1770231477	
487	Porgy and Bess	Star of Indiana	1988	1988|star of indiana|porgy and bess	1770231477	
488	Magical Mystery Tour: Part II	Velvet Knights	1988	1988|velvet knights|magical mystery tour part ii	1770231477	
489	Pertrouchka	Spirit of Atlanta	1988	1988|spirit of atlanta|pertrouchka	1770231477	
490	Symphonic Dances for the Contemporary Child	Suncoast Sound	1988	1988|suncoast sound|symphonic dances for the contemporary child	1770231477	
491	Old Black Magic	Bluecoats	1988	1988|bluecoats|old black magic	1770231477	
492	The Sound of Music	Sky Ryders	1988	1988|sky ryders|the sound of music	1770231477	
493	Russian Christmas Music	Santa Clara Vanguard	1987	1987|santa clara vanguard|russian christmas music	1770231477	
494	Festival Variations	Cavaliers	1987	1987|cavaliers|festival variations	1770231477	
568	*No Title*	Freelancers	1981	1981|freelancers|no title	1770231477	
495	Fanfare for the New	Blue Devils	1987	1987|blue devils|fanfare for the new	1770231477	
496	Songs from the Winter Palace	Phantom Regiment	1987	1987|phantom regiment|songs from the winter palace	1770231477	
497	Captain from Castille	Madison Scouts	1987	1987|madison scouts|captain from castille	1770231477	
498	Ritual Fire Dance	Star of Indiana	1987	1987|star of indiana|ritual fire dance	1770231477	
499	Magical Mystery Tour: Part I	Velvet Knights	1987	1987|velvet knights|magical mystery tour part i	1770231477	
500	My Fair Lady... Our Way	Suncoast Sound	1987	1987|suncoast sound|my fair lady our way	1770231477	
501	Are You From Dixie	Spirit of Atlanta	1987	1987|spirit of atlanta|are you from dixie	1770231477	
502	Bye Bye Blues	Bluecoats	1987	1987|bluecoats|bye bye blues	1770231477	
503	West Side Story	Sky Ryders	1987	1987|sky ryders|west side story	1770231477	
504	Festive Overture	Santa Clara Vanguard	1986	1986|santa clara vanguard|festive overture	1770231477	
505	Canzona	Cavaliers	1986	1986|cavaliers|canzona	1770231477	
506	On the Waterfront	Cadets	1986	1986|cadets|on the waterfront	1770231477	
507	Adventures in Time	Suncoast Sound	1986	1986|suncoast sound|adventures in time	1770231477	
508	Dixie, Sweet Georgia Brown	Spirit of Atlanta	1986	1986|spirit of atlanta|dixie sweet georgia brown	1770231477	
509	Alex's Rag	Madison Scouts	1986	1986|madison scouts|alexs rag	1770231477	
510	Adventures on Earth	Star of Indiana	1986	1986|star of indiana|adventures on earth	1770231477	
511	Wizard of Oz	Sky Ryders	1986	1986|sky ryders|wizard of oz	1770231477	
512	Resurrection Symphony	Phantom Regiment	1986	1986|phantom regiment|resurrection symphony	1770231477	
513	American Salute	Troopers	1986	1986|troopers|american salute	1770231477	
514	James Bond	Velvet Knights	1986	1986|velvet knights|james bond	1770231477	
515	Festive Overture	Santa Clara Vanguard	1985	1985|santa clara vanguard|festive overture	1770231477	
516	Karn Evil 9	Blue Devils	1985	1985|blue devils|karn evil 9	1770231477	
517	Rhapsody in Blue	Madison Scouts	1985	1985|madison scouts|rhapsody in blue	1770231477	
518	The Planets	Cavaliers	1985	1985|cavaliers|the planets	1770231477	
519	A Florida Suite	Suncoast Sound	1985	1985|suncoast sound|a florida suite	1770231477	
520	Concerto in F	Spirit of Atlanta	1985	1985|spirit of atlanta|concerto in f	1770231477	
521	Symphonie Fantastique	Phantom Regiment	1985	1985|phantom regiment|symphonie fantastique	1770231477	
522	Fiesta	Troopers	1985	1985|troopers|fiesta	1770231477	
523	The Music of Walt Disney	Star of Indiana	1985	1985|star of indiana|the music of walt disney	1770231477	
524	Peter Gunn	Velvet Knights	1985	1985|velvet knights|peter gunn	1770231477	
525	Immanuel	Freelancers	1985	1985|freelancers|immanuel	1770231477	
526	*No Title*	Blue Devils	1984	1984|blue devils|no title	1770231477	
527	*No Title*	Santa Clara Vanguard	1984	1984|santa clara vanguard|no title	1770231477	
528	*No Title*	Phantom Regiment	1984	1984|phantom regiment|no title	1770231477	
529	*No Title*	Madison Scouts	1984	1984|madison scouts|no title	1770231477	
530	*No Title*	Spirit of Atlanta	1984	1984|spirit of atlanta|no title	1770231477	
531	*No Title*	Suncoast Sound	1984	1984|suncoast sound|no title	1770231477	
532	*No Title*	Cavaliers	1984	1984|cavaliers|no title	1770231477	
533	*No Title*	Freelancers	1984	1984|freelancers|no title	1770231477	
534	*No Title*	Crossmen	1984	1984|crossmen|no title	1770231477	
535	*No Title*	27th Lancers	1984	1984|27th lancers|no title	1770231477	
536	*No Title*	Velvet Knights	1984	1984|velvet knights|no title	1770231477	
537	*No Title*	Blue Devils	1983	1983|blue devils|no title	1770231477	
538	*No Title*	Santa Clara Vanguard	1983	1983|santa clara vanguard|no title	1770231477	
539	*No Title*	Phantom Regiment	1983	1983|phantom regiment|no title	1770231477	
540	*No Title*	Madison Scouts	1983	1983|madison scouts|no title	1770231477	
541	*No Title*	Suncoast Sound	1983	1983|suncoast sound|no title	1770231477	
542	*No Title*	Spirit of Atlanta	1983	1983|spirit of atlanta|no title	1770231477	
543	*No Title*	Freelancers	1983	1983|freelancers|no title	1770231477	
544	*No Title*	Cavaliers	1983	1983|cavaliers|no title	1770231477	
545	*No Title*	27th Lancers	1983	1983|27th lancers|no title	1770231477	
546	*No Title*	Bridgemen	1983	1983|bridgemen|no title	1770231477	
547	*No Title*	Sky Ryders	1983	1983|sky ryders|no title	1770231477	
548	*No Title*	Santa Clara Vanguard	1982	1982|santa clara vanguard|no title	1770231477	
549	*No Title*	Cadets	1982	1982|cadets|no title	1770231477	
550	*No Title*	Phantom Regiment	1982	1982|phantom regiment|no title	1770231477	
551	*No Title*	Madison Scouts	1982	1982|madison scouts|no title	1770231477	
552	*No Title*	27th Lancers	1982	1982|27th lancers|no title	1770231477	
553	*No Title*	Crossmen	1982	1982|crossmen|no title	1770231477	
554	*No Title*	Bridgemen	1982	1982|bridgemen|no title	1770231477	
555	*No Title*	Freelancers	1982	1982|freelancers|no title	1770231477	
556	*No Title*	Sky Ryders	1982	1982|sky ryders|no title	1770231477	
557	*No Title*	Cavaliers	1982	1982|cavaliers|no title	1770231477	
558	*No Title*	Spirit of Atlanta	1982	1982|spirit of atlanta|no title	1770231477	
559	*No Title*	Blue Devils	1981	1981|blue devils|no title	1770231477	
560	*No Title*	Madison Scouts	1981	1981|madison scouts|no title	1770231477	
561	*No Title*	27th Lancers	1981	1981|27th lancers|no title	1770231477	
562	*No Title*	Phantom Regiment	1981	1981|phantom regiment|no title	1770231477	
563	*No Title*	Bridgemen	1981	1981|bridgemen|no title	1770231477	
564	*No Title*	Cadets	1981	1981|cadets|no title	1770231477	
565	*No Title*	Crossmen	1981	1981|crossmen|no title	1770231477	
566	*No Title*	Spirit of Atlanta	1981	1981|spirit of atlanta|no title	1770231477	
567	*No Title*	Cavaliers	1981	1981|cavaliers|no title	1770231477	
569	*No Title*	Troopers	1981	1981|troopers|no title	1770231477	
570	*No Title*	27th Lancers	1980	1980|27th lancers|no title	1770231477	
571	*No Title*	Bridgemen	1980	1980|bridgemen|no title	1770231477	
572	*No Title*	Spirit of Atlanta	1980	1980|spirit of atlanta|no title	1770231477	
573	*No Title*	Phantom Regiment	1980	1980|phantom regiment|no title	1770231477	
574	*No Title*	Madison Scouts	1980	1980|madison scouts|no title	1770231477	
575	*No Title*	Santa Clara Vanguard	1980	1980|santa clara vanguard|no title	1770231477	
576	*No Title*	Crossmen	1980	1980|crossmen|no title	1770231477	
577	*No Title*	Cavaliers	1980	1980|cavaliers|no title	1770231477	
578	*No Title*	Cadets	1980	1980|cadets|no title	1770231477	
579	*No Title*	North Star	1980	1980|north star|no title	1770231477	
580	*No Title*	Guardsmen	1980	1980|guardsmen|no title	1770231477	
581	*No Title*	Phantom Regiment	1979	1979|phantom regiment|no title	1770231477	
582	*No Title*	Santa Clara Vanguard	1979	1979|santa clara vanguard|no title	1770231477	
583	*No Title*	Spirit of Atlanta	1979	1979|spirit of atlanta|no title	1770231477	
584	*No Title*	27th Lancers	1979	1979|27th lancers|no title	1770231477	
585	*No Title*	Bridgemen	1979	1979|bridgemen|no title	1770231477	
586	*No Title*	Guardsmen	1979	1979|guardsmen|no title	1770231477	
587	*No Title*	Madison Scouts	1979	1979|madison scouts|no title	1770231477	
588	*No Title*	North Star	1979	1979|north star|no title	1770231477	
589	*No Title*	Blue Stars	1979	1979|blue stars|no title	1770231477	
590	*No Title*	Cavaliers	1979	1979|cavaliers|no title	1770231477	
591	*No Title*	Troopers	1979	1979|troopers|no title	1770231477	
592	*No Title*	Phantom Regiment	1978	1978|phantom regiment|no title	1770231477	
593	*No Title*	Blue Devils	1978	1978|blue devils|no title	1770231477	
594	*No Title*	Madison Scouts	1978	1978|madison scouts|no title	1770231477	
595	*No Title*	Bridgemen	1978	1978|bridgemen|no title	1770231477	
596	*No Title*	Spirit of Atlanta	1978	1978|spirit of atlanta|no title	1770231477	
597	*No Title*	27th Lancers	1978	1978|27th lancers|no title	1770231477	
598	*No Title*	Blue Stars	1978	1978|blue stars|no title	1770231477	
599	*No Title*	Crossmen	1978	1978|crossmen|no title	1770231477	
600	*No Title*	North Star	1978	1978|north star|no title	1770231477	
601	*No Title*	Guardsmen	1978	1978|guardsmen|no title	1770231477	
602	*No Title*	Kilties	1978	1978|kilties|no title	1770231477	
603	*No Title*	Phantom Regiment	1977	1977|phantom regiment|no title	1770231477	
604	*No Title*	Santa Clara Vanguard	1977	1977|santa clara vanguard|no title	1770231477	
605	*No Title*	Bridgemen	1977	1977|bridgemen|no title	1770231477	
606	*No Title*	27th Lancers	1977	1977|27th lancers|no title	1770231477	
607	*No Title*	Madison Scouts	1977	1977|madison scouts|no title	1770231477	
608	*No Title*	Blue Stars	1977	1977|blue stars|no title	1770231477	
609	*No Title*	Cavaliers	1977	1977|cavaliers|no title	1770231477	
610	*No Title*	Freelancers	1977	1977|freelancers|no title	1770231477	
611	*No Title*	Seneca Optimists	1977	1977|seneca optimists|no title	1770231477	
612	*No Title*	Kilties	1977	1977|kilties|no title	1770231477	
613	*No Title*	Crossmen	1977	1977|crossmen|no title	1770231477	
614	*No Title*	Cadets	1977	1977|cadets|no title	1770231477	
615	*No Title*	Madison Scouts	1976	1976|madison scouts|no title	1770231477	
616	*No Title*	Santa Clara Vanguard	1976	1976|santa clara vanguard|no title	1770231477	
617	*No Title*	Phantom Regiment	1976	1976|phantom regiment|no title	1770231477	
618	*No Title*	27th Lancers	1976	1976|27th lancers|no title	1770231477	
619	*No Title*	Bridgemen	1976	1976|bridgemen|no title	1770231477	
620	*No Title*	Cavaliers	1976	1976|cavaliers|no title	1770231477	
621	*No Title*	Oakland Crusaders	1976	1976|oakland crusaders|no title	1770231477	
622	*No Title*	Blue Stars	1976	1976|blue stars|no title	1770231477	
623	*No Title*	Seneca Optimists	1976	1976|seneca optimists|no title	1770231477	
624	*No Title*	Freelancers	1976	1976|freelancers|no title	1770231477	
625	*No Title*	Guardsmen	1976	1976|guardsmen|no title	1770231477	
626	*No Title*	Santa Clara Vanguard	1975	1975|santa clara vanguard|no title	1770231477	
627	*No Title*	Blue Devils	1975	1975|blue devils|no title	1770231477	
628	*No Title*	27th Lancers	1975	1975|27th lancers|no title	1770231477	
629	*No Title*	Blue Stars	1975	1975|blue stars|no title	1770231477	
630	*No Title*	Oakland Crusaders	1975	1975|oakland crusaders|no title	1770231477	
631	*No Title*	Kilties	1975	1975|kilties|no title	1770231477	
632	*No Title*	Cavaliers	1975	1975|cavaliers|no title	1770231477	
633	*No Title*	Royal Crusaders	1975	1975|royal crusaders|no title	1770231477	
634	*No Title*	Phantom Regiment	1975	1975|phantom regiment|no title	1770231477	
635	*No Title*	Cadets	1975	1975|cadets|no title	1770231477	
636	*No Title*	Troopers	1975	1975|troopers|no title	1770231477	
637	*No Title*	Madison Scouts	1974	1974|madison scouts|no title	1770231477	
638	*No Title*	Anaheim Kingsmen	1974	1974|anaheim kingsmen|no title	1770231477	
639	*No Title*	Muchachos	1974	1974|muchachos|no title	1770231477	
640	*No Title*	Troopers	1974	1974|troopers|no title	1770231477	
641	*No Title*	Kilties	1974	1974|kilties|no title	1770231477	
642	*No Title*	DeLaSalle Oaklands	1974	1974|delasalle oaklands|no title	1770231477	
643	*No Title*	Cavaliers	1974	1974|cavaliers|no title	1770231477	
644	*No Title*	Blue Devils	1974	1974|blue devils|no title	1770231477	
645	*No Title*	Purple Lancers	1974	1974|purple lancers|no title	1770231477	
646	*No Title*	Phantom Regiment	1974	1974|phantom regiment|no title	1770231477	
647	*No Title*	Blue Stars	1974	1974|blue stars|no title	1770231477	
648	*No Title*	Troopers	1973	1973|troopers|no title	1770231477	
649	*No Title*	Blue Stars	1973	1973|blue stars|no title	1770231477	
650	*No Title*	Madison Scouts	1973	1973|madison scouts|no title	1770231477	
651	*No Title*	Kilties	1973	1973|kilties|no title	1770231477	
652	*No Title*	Anaheim Kingsmen	1973	1973|anaheim kingsmen|no title	1770231477	
653	*No Title*	27th Lancers	1973	1973|27th lancers|no title	1770231477	
654	*No Title*	Muchachos	1973	1973|muchachos|no title	1770231477	
655	*No Title*	Bridgemen	1973	1973|bridgemen|no title	1770231477	
656	*No Title*	Black Knights	1973	1973|black knights|no title	1770231477	
657	*No Title*	Argonne Rebels	1973	1973|argonne rebels|no title	1770231477	
658	*No Title*	Stockton Commodores	1973	1973|stockton commodores|no title	1770231477	
659	Pianoman	Academy	2013	2013|academy|pianoman	1770231477	
660	Mistica	Spartans	2025	2025|spartans|mistica	1770231477	
661	It Tolls For Thee	Music City	2025	2025|music city|it tolls for thee	1770231477	
662	Everglow	Pacific Crest	2019	2019|pacific crest|everglow	1770335351	
663	The Bridge Between	Academy	2019	2019|academy|the bridge between	1770335351	
664	When Hell Freezes Over	Colts	2019	2019|colts|when hell freezes over	1770335351	
665	Majestic	Madison Scouts	2019	2019|madison scouts|majestic	1770335351	
666	Beyond Boundaries	Troopers	2019	2019|troopers|beyond boundaries	1770335351	
667	From the Ground Up	Genesis	2019	2019|genesis|from the ground up	1770335351	
668	Of Mice & Music	Music City	2019	2019|music city|of mice  music	1770335351	
669	FantaSea	Jersey Surf	2019	2019|jersey surf|fantasea	1770335351	
670	Off the Grid	Seattle Cascades	2019	2019|seattle cascades|off the grid	1770335351	
671	Knock	Spirit of Atlanta	2018	2018|spirit of atlanta|knock	1770335351	
672	Academic	Academy	2018	2018|academy|academic	1770335351	
673	True Believer	Colts	2018	2018|colts|true believer	1770335351	
674	Heart & Soul	Madison Scouts	2018	2018|madison scouts|heart  soul	1770335351	
675	The New Road West	Troopers	2018	2018|troopers|the new road west	1770335351	
676	Here's To The Ones Who Dream	Pacific Crest	2018	2018|pacific crest|heres to the ones who dream	1770335351	
677	Hell on Wheels	Music City	2018	2018|music city|hell on wheels	1770335351	
678	Redrum	Oregon Crusaders	2018	2018|oregon crusaders|redrum	1770335351	
679	Retrovertigo	Genesis	2018	2018|genesis|retrovertigo	1770335351	
680	What Goes Around	Seattle Cascades	2018	2018|seattle cascades|what goes around	1770335351	
681	Mono Mondrian	Jersey Surf	2018	2018|jersey surf|mono mondrian	1770335351	
682	Inside the Ink	Mandarins	2017	2017|mandarins|inside the ink	1770335351	
683	Both Sides Now	Colts	2017	2017|colts|both sides now	1770335351	
684	By A Hare	Academy	2017	2017|academy|by a hare	1770335351	
685	Duels & Duets	Troopers	2017	2017|troopers|duels  duets	1770335351	
686	Crossroads: We Are Here	Spirit of Atlanta	2017	2017|spirit of atlanta|crossroads we are here	1770335351	
687	ENcompass	Oregon Crusaders	2017	2017|oregon crusaders|encompass	1770335351	
688	Golden State of Mind	Pacific Crest	2017	2017|pacific crest|golden state of mind	1770335351	
689	The Other Side of Now	Genesis	2017	2017|genesis|the other side of now	1770335351	
690	Set Free	Seattle Cascades	2017	2017|seattle cascades|set free	1770335351	
691	Make It Our Own	Jersey Surf	2017	2017|jersey surf|make it our own	1770335351	
692	Judas	Madison Scouts	2016	2016|madison scouts|judas	1770335351	
693	Hero	Troopers	2016	2016|troopers|hero	1770335351	
694	Nachtmusik	Colts	2016	2016|colts|nachtmusik	1770335351	
695	Forbidden Forest	Mandarins	2016	2016|mandarins|forbidden forest	1770335351	
696	Hunted	Oregon Crusaders	2016	2016|oregon crusaders|hunted	1770335351	
697	The Union	Pacific Crest	2016	2016|pacific crest|the union	1770335351	
698	Georgia	Spirit of Atlanta	2016	2016|spirit of atlanta|georgia	1770335351	
699	O	Seattle Cascades	2016	2016|seattle cascades|o	1770335351	
700	Ebb & Flow	Jersey Surf	2016	2016|jersey surf|ebb  flow	1770335351	
701	The Story of St. Joan of Arc	Pioneer	2016	2016|pioneer|the story of st joan of arc	1770335351	
702	Irish on Broadway	Pioneer	2017	2017|pioneer|irish on broadway	1770335351	
703	Celtic Dragons	Pioneer	2018	2018|pioneer|celtic dragons	1770335351	
704	Wild Horses	Troopers	2015	2015|troopers|wild horses	1770335351	
705	...And a Shot Rings Out	Colts	2015	2015|colts|and a shot rings out	1770335351	
706	A Step in Time	Academy	2015	2015|academy|a step in time	1770335351	
707	The Midnight Garden	Oregon Crusaders	2015	2015|oregon crusaders|the midnight garden	1770335351	
708	Out of the Ashes	Spirit of Atlanta	2015	2015|spirit of atlanta|out of the ashes	1770335351	
709	Resurrection	Mandarins	2015	2015|mandarins|resurrection	1770335351	
710	The Catalyst	Pacific Crest	2015	2015|pacific crest|the catalyst	1770335351	
711	Intergalactic	Seattle Cascades	2015	2015|seattle cascades|intergalactic	1770335351	
712	Sun Surfing	Jersey Surf	2015	2015|jersey surf|sun surfing	1770335351	
713	Exodus	Pioneer	2015	2015|pioneer|exodus	1770335351	
714	The Dark Side of the Rainbow	Colts	2014	2014|colts|the dark side of the rainbow	1770335351	
715	A People's House	Troopers	2014	2014|troopers|a peoples house	1770335351	
716	Magnolia	Spirit of Atlanta	2014	2014|spirit of atlanta|magnolia	1770335351	
717	Vanity Fair	Academy	2014	2014|academy|vanity fair	1770335351	
718	Nevermore	Oregon Crusaders	2014	2014|oregon crusaders|nevermore	1770335351	
719	No Strings Attached	Pacific Crest	2014	2014|pacific crest|no strings attached	1770335351	
720	UnbreakABLE	Mandarins	2014	2014|mandarins|unbreakable	1770335351	
721	Pay it Forward	Jersey Surf	2014	2014|jersey surf|pay it forward	1770335351	
722	Turn	Seattle Cascades	2014	2014|seattle cascades|turn	1770335351	
723	Joy!	Pioneer	2014	2014|pioneer|joy	1770335351	
724	Protest	Crossmen	2013	2013|crossmen|protest	1770335351	
725	Magnificent 11	Troopers	2013	2013|troopers|magnificent 11	1770335351	
726	Transfixed	Pacific Crest	2013	2013|pacific crest|transfixed	1770335351	
727	Field of Dreams	Colts	2013	2013|colts|field of dreams	1770335351	
728	Destination America	Mandarins	2013	2013|mandarins|destination america	1770335351	
729	My Heart My Battle My Soul	Oregon Crusaders	2013	2013|oregon crusaders|my heart my battle my soul	1770335351	
730	Soul Surfing	Jersey Surf	2013	2013|jersey surf|soul surfing	1770335351	
731	Inescapable	Seattle Cascades	2013	2013|seattle cascades|inescapable	1770335351	
732	Anum Nua: A New Spirit	Pioneer	2013	2013|pioneer|anum nua a new spirit	1770335351	
733	Blue World	Blue Stars	2012	2012|blue stars|blue world	1770335351	
734	Glassworks	Glassmen	2012	2012|glassmen|glassworks	1770335351	
735	Left of Spring	Academy	2012	2012|academy|left of spring	1770335351	
736	Boundless	Colts	2012	2012|colts|boundless	1770335351	
737	This Was the Future	Troopers	2012	2012|troopers|this was the future	1770335351	
738	Bridgemania	Jersey Surf	2012	2012|jersey surf|bridgemania	1770335351	
739	Prophecy	Mandarins	2012	2012|mandarins|prophecy	1770335351	
740	Shinto	Cascades	2012	2012|cascades|shinto	1770335351	
741	Irish Immigrants	Pioneer	2012	2012|pioneer|irish immigrants	1770335351	
742	My Mortal Beloved	Glassmen	2011	2011|glassmen|my mortal beloved	1770335351	
743	(RE)	Academy	2011	2011|academy|re	1770335351	
744	Deception: The Jagged Edge	Colts	2011	2011|colts|deception the jagged edge	1770335351	
745	Renewal	Crossmen	2011	2011|crossmen|renewal	1770335351	
746	Push Pull Twist Turn	Pacific Crest	2011	2011|pacific crest|push pull twist turn	1770335351	
747	The Forty Thieves	Mandarins	2011	2011|mandarins|the forty thieves	1770335351	
748	Sinvitation 7	Teal Sound	2011	2011|teal sound|sinvitation 7	1770335351	
749	Pandora: A Dark Gift	Cascades	2011	2011|cascades|pandora a dark gift	1770335351	
750	Petal Tones	Jersey Surf	2011	2011|jersey surf|petal tones	1770335351	
751	Celebrate	Pioneer	2011	2011|pioneer|celebrate	1770335351	
752	True Colors	Colts	2010	2010|colts|true colors	1770335351	
753	Strangers in Paradise	Academy	2010	2010|academy|strangers in paradise	1770335351	
754	Wanted	Troopers	2010	2010|troopers|wanted	1770335351	
755	Forging an Icon	Spirit	2010	2010|spirit|forging an icon	1770335351	
756	Full Circle	Crossmen	2010	2010|crossmen|full circle	1770335351	
757	Maze	Pacific Crest	2010	2010|pacific crest|maze	1770335351	
758	To Dream of Far Away Lands	Mandarins	2010	2010|mandarins|to dream of far away lands	1770335351	
759	In the Presence of Enemies	Teal Sound	2010	2010|teal sound|in the presence of enemies	1770335351	
760	Living the Dream	Jersey Surf	2010	2010|jersey surf|living the dream	1770335351	
761	Silver Lining	Cascades	2010	2010|cascades|silver lining	1770335351	
762	Corps Prayer	Pioneer	2010	2010|pioneer|corps prayer	1770335351	
763	Fathoms	Colts	2009	2009|colts|fathoms	1770335351	
764	The Ascent	Academy	2009	2009|academy|the ascent	1770335351	
765	El Relámpago	Madison Scouts	2009	2009|madison scouts|el relmpago	1770335351	
766	ForbiddeN	Crossmen	2009	2009|crossmen|forbidden	1770335351	
767	Live... In Concert!	Spirit	2009	2009|spirit|live in concert	1770335351	
768	ABSOLUTE	Mandarins	2009	2009|mandarins|absolute	1770335351	
769	El Corazon de la Gente	Pacific Crest	2009	2009|pacific crest|el corazon de la gente	1770335351	
770	Mozart Effect	Jersey Surf	2009	2009|jersey surf|mozart effect	1770335351	
771	Celtic Trinity	Pioneer	2009	2009|pioneer|celtic trinity	1770335351	
772	Beyond the Forest	Cascades	2009	2009|cascades|beyond the forest	1770335351	
773	Three	Cascades	2007	2007|cascades|three	1770335351	
774	Redemption	Cascades	2006	2006|cascades|redemption	1770335351	
775	Airborne Symphony	Cascades	2005	2005|cascades|airborne symphony	1770335351	
776	Festiva Danza	Cascades	2003	2003|cascades|festiva danza	1770335351	
777	Nature's Confession	Cascades	2004	2004|cascades|natures confession	1770335351	
778	River	Mandarins	2008	2008|mandarins|river	1770335351	
779	Dragon Dance	Mandarins	2007	2007|mandarins|dragon dance	1770335351	
780	Rhythm Nation	Mandarins	2006	2006|mandarins|rhythm nation	1770335351	
781	Loves Me... Loves Me Not...	Mandarins	2005	2005|mandarins|loves me loves me not	1770335351	
782	Samurai	Mandarins	2004	2004|mandarins|samurai	1770335351	
783	Black Market Bazaar	Mandarins	2003	2003|mandarins|black market bazaar	1770335351	
784	Celtic Reflections	Pioneer	2008	2008|pioneer|celtic reflections	1770335351	
785	Fields of Green	Pioneer	2007	2007|pioneer|fields of green	1770335351	
786	Emeraldscapes	Pioneer	2006	2006|pioneer|emeraldscapes	1770335351	
787	This Place Called Ireland	Pioneer	2005	2005|pioneer|this place called ireland	1770335351	
788	Return to Ireland	Pioneer	2004	2004|pioneer|return to ireland	1770335351	
789	Spirit of the Pioneer	Pioneer	2003	2003|pioneer|spirit of the pioneer	1770335351	
790	Oliver!	Pioneer	2002	2002|pioneer|oliver	1770335351	
791	Irish in the Civil War... A Quest for Freedom	Pioneer	2001	2001|pioneer|irish in the civil war a quest for freedom	1770335351	
792	Dances of Brigadoon	Pioneer	2000	2000|pioneer|dances of brigadoon	1770335351	
793	Greensleeves	Pioneer	1999	1999|pioneer|greensleeves	1770335351	
794	Irish In Your Face	Pioneer	1998	1998|pioneer|irish in your face	1770335351	
795	Riverdance	Pioneer	1997	1997|pioneer|riverdance	1770335351	
796	Primality: The Rituals of Passion	Pacific Crest	2008	2008|pacific crest|primality the rituals of passion	1770335351	
797	What Happens in Vegas...	Pacific Crest	2007	2007|pacific crest|what happens in vegas	1770335351	
798	From the City of Angels	Pacific Crest	2006	2006|pacific crest|from the city of angels	1770335351	
799	Fluid States: Vapor Solid Liquid	Pacific Crest	2005	2005|pacific crest|fluid states vapor solid liquid	1770335351	
800	On Dangerous Ground	Pacific Crest	2004	2004|pacific crest|on dangerous ground	1770335351	
801	Invocation a Poderosos	Pacific Crest	2003	2003|pacific crest|invocation a poderosos	1770335351	
802	Per-if-4-ry	Spirit	2008	2008|spirit|per-if-4-ry	1770335351	
803	Genesis	Spirit	2007	2007|spirit|genesis	1770335351	
804	The Architecture of Life	Spirit	2004	2004|spirit|the architecture of life	1770335351	
805	Ghost Train	Spirit	2001	2001|spirit|ghost train	1770335351	
806	Southern Harmonies... Music For the New South	Spirit of Atlanta	2000	2000|spirit of atlanta|southern harmonies music for the new south	1770335351	
807	Jump Jive Jazz and Wail	Spirit of Atlanta	1999	1999|spirit of atlanta|jump jive jazz and wail	1770335351	
808	*No Title*	Spirit of Atlanta	1998	1998|spirit of atlanta|no title	1770335351	
809	Southern Jazz: Spirit Style	Spirit of Atlanta	1997	1997|spirit of atlanta|southern jazz spirit style	1770335351	
810	By George... It's Gershwin	Spirit of Atlanta	1996	1996|spirit of atlanta|by george its gershwin	1770335351	
811	All On a Southern Afternoon	Spirit of Atlanta	1995	1995|spirit of atlanta|all on a southern afternoon	1770335351	
812	A Soulful Celebration	Spirit of Atlanta	1993	1993|spirit of atlanta|a soulful celebration	1770335351	
813	Songs of the New South	Spirit of Atlanta	1992	1992|spirit of atlanta|songs of the new south	1770335351	
814	*No Title*	Spirit of Atlanta	1991	1991|spirit of atlanta|no title	1770335351	
815	*No Title*	Spirit of Atlanta	1989	1989|spirit of atlanta|no title	1770335351	
816	*No Title*	Spirit of Atlanta	1977	1977|spirit of atlanta|no title	1770335351	
817	Planet X	Crossmen	2008	2008|crossmen|planet x	1770335351	
818	Changing Lanes	Crossmen	2006	2006|crossmen|changing lanes	1770335351	
819	Crossroads	Crossmen	2005	2005|crossmen|crossroads	1770335351	
820	*No Title*	Crossmen	1988	1988|crossmen|no title	1770335351	
821	*No Title*	Crossmen	1987	1987|crossmen|no title	1770335351	
822	*No Title*	Crossmen	1986	1986|crossmen|no title	1770335351	
823	*No Title*	Crossmen	1985	1985|crossmen|no title	1770335351	
824	*No Title*	Crossmen	1983	1983|crossmen|no title	1770335351	
825	*No Title*	Crossmen	1979	1979|crossmen|no title	1770335351	
826	*No Title*	Crossmen	1976	1976|crossmen|no title	1770335351	
827	*No Title*	Crossmen	1975	1975|crossmen|no title	1770335351	
828	Unbound	Madison Scouts	2007	2007|madison scouts|unbound	1770335351	
829	Conquest	Madison Scouts	2002	2002|madison scouts|conquest	1770335351	
830	*No Title*	Madison Scouts	1972	1972|madison scouts|no title	1770335351	
831	*No Title*	Anaheim Kingsmen	1986	1986|anaheim kingsmen|no title	1770335351	
832	*No Title*	Anaheim Kingsmen	1985	1985|anaheim kingsmen|no title	1770335351	
833	*No Title*	Anaheim Kingsmen	1984	1984|anaheim kingsmen|no title	1770335351	
834	*No Title*	Anaheim Kingsmen	1983	1983|anaheim kingsmen|no title	1770335351	
835	*No Title*	Anaheim Kingsmen	1982	1982|anaheim kingsmen|no title	1770335351	
836	*No Title*	Anaheim Kingsmen	1978	1978|anaheim kingsmen|no title	1770335351	
837	*No Title*	Anaheim Kingsmen	1988	1988|anaheim kingsmen|no title	1770335351	
838	*No Title*	Anaheim Kingsmen	1977	1977|anaheim kingsmen|no title	1770335351	
839	*No Title*	Anaheim Kingsmen	1976	1976|anaheim kingsmen|no title	1770335351	
840	The Nature of Being	Madison Scouts	2025	2025|madison scouts|the nature of being	1770447157	
841	London Fog	Academy	2025	2025|academy|london fog	1770447157	
842	Kaleidoscope Heart	Genesis	2025	2025|genesis|kaleidoscope heart	1770447157	
843	Primary	Seattle Cascades	2025	2025|seattle cascades|primary	1770447157	
844	Leave it at the River	Music City	2024	2024|music city|leave it at the river	1770447157	
845	An Opportunity Knocks	Academy	2024	2024|academy|an opportunity knocks	1770447157	
846	Signal	Genesis	2024	2024|genesis|signal	1770447157	
847	Sky Above	Seattle Cascades	2024	2024|seattle cascades|sky above	1770447157	
848	Surfadelic	Jersey Surf	2024	2024|jersey surf|surfadelic	1770447157	
849	Meetings at the Edge	Crossmen	2023	2023|crossmen|meetings at the edge	1770447157	
850	Goddess	Pacific Crest	2023	2023|pacific crest|goddess	1770447157	
851	Up Down and All Around	Spirit of Atlanta	2023	2023|spirit of atlanta|up down and all around	1770447157	
852	The Sound Garden	Madison Scouts	2023	2023|madison scouts|the sound garden	1770447157	
853	Violent Delights	Music City	2023	2023|music city|violent delights	1770447157	
854	Sol et Luna: Until Our Next Eclipse	Academy	2023	2023|academy|sol et luna until our next eclipse	1770447157	
855	Symbio.sys	Genesis	2023	2023|genesis|symbiosys	1770447157	
856	Express Yourself	Jersey Surf	2023	2023|jersey surf|express yourself	1770447157	
857	Revival	Seattle Cascades	2023	2023|seattle cascades|revival	1770447157	
858	Vibe	Blue Knights	2022	2022|blue knights|vibe	1770447157	
859	Installation 85	Madison Scouts	2022	2022|madison scouts|installation 85	1770447157	
860	A World of My Creation	Academy	2022	2022|academy|a world of my creation	1770447157	
861	Gasoline Rainbows	Music City	2022	2022|music city|gasoline rainbows	1770447157	
862	Dorothy	Genesis	2022	2022|genesis|dorothy	1770447157	
863	Meet Me in Atlantic City	Jersey Surf	2022	2022|jersey surf|meet me in atlantic city	1770447157	
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
users	14
shows	863
roles	2
\.


--
-- Data for Name: _user_roles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user_roles (user_id, role_id, assigned_ts, assigned_by_user_id) FROM stdin;
2	1	1770248853	1
3	1	1770355798	1
5	1	1770355803	1
6	1	1770355811	1
1	2	1770404541	1
1	1	1770404881	1
\.


--
-- Data for Name: _users; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._users (id, username, pass_hash, is_admin, created_ts, avatar_url, banner_url, theme_color) FROM stdin;
1	W_GEM	scrypt:32768:8:1$YLRACtpeb5jseXMy$86375ea0a5a4db2583d5a4ca19884ea2c5bee7a6b23b09cf2db39452d5f19eea457594f6ba01aba4c8be87226046ab7c27292015a90de248404f1d052d18407d	1	1770231454	/static/pfps/pfp_w_gem.png	https://cdn.discordapp.com/attachments/926219336014762015/1468726391834149060/togif.gif?ex=6985118b&is=6983c00b&hm=a9827005c0d97787fd8e4912c0e6ad78a7af16834e039d13f2b121b4da3a4745&	#01ff00
2	GEMtestaccount	scrypt:32768:8:1$Ar9XMMCzA7scZDQs$8e81a2961dbaa3e59e6f6e10f6ea607d92fd35953ff4e626be5d19ec7662e0d1fc3efc6ea648941de94226d8218823537d8860a62996795c984d68ce87cd9c24	0	1770235723			
3	bailey	scrypt:32768:8:1$uuE0QI8yRorhMyYk$e459551046c51d73649b5f614d79b1d9d647feb5b0ef06e974a42f4fc0e23d21ba3a098e71789228bc36d03dfa9393c606225342d7da56cfddcd841051f9211b	0	1770340942	/static/pfps/pfp_bailey.jpg		#FF0000
4	Declan is being serious	scrypt:32768:8:1$EzPIXIjoiQx1Fknt$e41f983d1883be0ff0b006828e49e1b6b44edbf7cb1ee3220825f35e7bcac1caced0de5bb7e20cb5ebc52ecf047efdc8e56af9831a756ab8fda0e701217b716f	0	1770340947			
5	Bryan Palbaum	scrypt:32768:8:1$9qqd426zyrGTaBDL$8982d298269a50ad81a49ec85bdb07fe5567dd3bb0966106bfd9cd44e4c2b02b302c50b4f20d4ee90dd064b85880c729cd91f5396a8d4ee25c6b48deef660d74	0	1770343703			
6	travist494	scrypt:32768:8:1$a8EqrJ3GKq0hq6Uz$dcd812d4d81adb102d51841a4ebb42d0bf87d40d5b2a2eed7c73215e0320e9cf496d8f78c77c48c369bdf4bd4bf7fec3e906d3a8477f3a252044fa90c9b1cf26	0	1770355259	/static/pfps/pfp_travist494.png		#eea7f5
7	Nint	scrypt:32768:8:1$BAHEf88vgUhGVkGI$299448e54fecf1c1ecbe50a373f894a2bb1825b0d707efb503724dd7f9aadc0042a3602709e8edf911f747a0335f664eb08fcef79ad004c2527545e4bd8af8bb	0	1770355262	/static/pfps/pfp_nint.jpg		#3D4E73
8	rye	scrypt:32768:8:1$ZirIFT67XWOWzuFy$fe7f39b82ff3f9f6a4609aac91cc77fbbe05a3060848e50edbe64bd6fa9d26d716fb5f30e78b6ecc1b84b131561bf5c4d83886b77c4573e44d8ebfa38b1c7473	0	1770355295	/static/pfps/pfp_rye.png		
9	diddenchudden	scrypt:32768:8:1$nQGMmKI88yOFfwpZ$674e811978edcad42801111c9aa38d7a5965a4de60a30a20124a79513c9747f8fe5c3592664e03a43a386dfeaa9b7a1a9c81731e80cd5d752ab8ad427d9996fa	0	1770356843			
10	Bushpresidency2001	scrypt:32768:8:1$muYQ4L3TGbSZFS4c$42f90a3a082f0ba249d49ae90df790bfa88208078529a49b1706ad42eb98e1be501016805089b23601d0d8f09087e426f3315fb8fe4f1fb97ddb7b3e8fe7bf56	0	1770356918			
11	Chud	scrypt:32768:8:1$B6Sos7KDovgbxF5b$ee2af66d6516f11eb7b961e42f43fe99b2870a93d4bb373f4c823608529f850e6334445411e6ea7986b2f1389ffd3bfd553f86dbdfd5f71f3467e9a485eca672	0	1770356920			
12	George Hopkins	scrypt:32768:8:1$sRWu0WFAQt6tUBQk$b35650911692be910cf464a9bd31f7c454623ad28b03756156870f7be6a36f0d0f81a860d477903fd0bcc8c4461fa509a0cc3a5edab4151851c9204cdc5dd26c	0	1770356958			
13	lukeshoots	scrypt:32768:8:1$RafI9YEihph3uf0x$c267157a694416201bfa8a07351d15afd85c0381b70a4b635d1a6af121cd448ea26da36499958fd2af075939a7fed3c467d0098483459dcdda7be681acb16f7c	0	1770403829			
14	Benjamin Netanyahu	scrypt:32768:8:1$YIOM1nGxcFIAJg1t$194e8b5648cfbf623b07de66e40bdad24a7005308a638acbcdd0eac25b2411ffe64b6a9c4276caa9fa035036d46bdf650926811b1752203227530a621ce2fbda	0	1770407744			
\.


--
-- PostgreSQL database dump complete
--


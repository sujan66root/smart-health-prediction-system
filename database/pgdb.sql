PGDMP     4                     z            medical    12.8    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    medical    DATABASE     k   CREATE DATABASE medical WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE medical;
                postgres    false            �            1259    16425 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16621 
   chats_chat    TABLE     �   CREATE TABLE public.chats_chat (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    message text NOT NULL,
    consultation_id_id integer NOT NULL,
    sender_id integer NOT NULL
);
    DROP TABLE public.chats_chat;
       public         heap    postgres    false            �            1259    16619    chats_chat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chats_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.chats_chat_id_seq;
       public          postgres    false    227            �           0    0    chats_chat_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.chats_chat_id_seq OWNED BY public.chats_chat.id;
          public          postgres    false    226            �            1259    16644    chats_feedback    TABLE     �   CREATE TABLE public.chats_feedback (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    feedback text NOT NULL,
    sender_id integer NOT NULL
);
 "   DROP TABLE public.chats_feedback;
       public         heap    postgres    false            �            1259    16642    chats_feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chats_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.chats_feedback_id_seq;
       public          postgres    false    229            �           0    0    chats_feedback_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.chats_feedback_id_seq OWNED BY public.chats_feedback.id;
          public          postgres    false    228            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16683    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16575    main_app_consultation    TABLE     �   CREATE TABLE public.main_app_consultation (
    id integer NOT NULL,
    consultation_date date NOT NULL,
    status character varying(20) NOT NULL,
    diseaseinfo_id integer,
    doctor_id integer,
    patient_id integer
);
 )   DROP TABLE public.main_app_consultation;
       public         heap    postgres    false            �            1259    16573    main_app_consultation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_app_consultation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.main_app_consultation_id_seq;
       public          postgres    false    225            �           0    0    main_app_consultation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.main_app_consultation_id_seq OWNED BY public.main_app_consultation.id;
          public          postgres    false    224            �            1259    16564    main_app_diseaseinfo    TABLE     =  CREATE TABLE public.main_app_diseaseinfo (
    id integer NOT NULL,
    diseasename character varying(200) NOT NULL,
    no_of_symp integer NOT NULL,
    symptomsname character varying(200)[] NOT NULL,
    confidence numeric(5,2) NOT NULL,
    consultdoctor character varying(200) NOT NULL,
    patient_id integer
);
 (   DROP TABLE public.main_app_diseaseinfo;
       public         heap    postgres    false            �            1259    16562    main_app_diseaseinfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_app_diseaseinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.main_app_diseaseinfo_id_seq;
       public          postgres    false    223            �           0    0    main_app_diseaseinfo_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.main_app_diseaseinfo_id_seq OWNED BY public.main_app_diseaseinfo.id;
          public          postgres    false    222            �            1259    16552    main_app_doctor    TABLE     g  CREATE TABLE public.main_app_doctor (
    user_id integer NOT NULL,
    is_patient boolean NOT NULL,
    is_doctor boolean NOT NULL,
    name character varying(50) NOT NULL,
    dob date NOT NULL,
    address character varying(100) NOT NULL,
    mobile_no character varying(15) NOT NULL,
    gender character varying(10) NOT NULL,
    registration_no character varying(20) NOT NULL,
    year_of_registration date NOT NULL,
    qualification character varying(20) NOT NULL,
    "State_Medical_Council" character varying(30) NOT NULL,
    specialization character varying(30) NOT NULL,
    rating integer NOT NULL
);
 #   DROP TABLE public.main_app_doctor;
       public         heap    postgres    false            �            1259    16557    main_app_doctorr    TABLE     N  CREATE TABLE public.main_app_doctorr (
    user_id integer NOT NULL,
    is_patient boolean NOT NULL,
    is_doctor boolean NOT NULL,
    name character varying(50) NOT NULL,
    dob date NOT NULL,
    address character varying(100) NOT NULL,
    mobile_no character varying(15) NOT NULL,
    gender character varying(10) NOT NULL
);
 $   DROP TABLE public.main_app_doctorr;
       public         heap    postgres    false            �            1259    16661    main_app_rating_review    TABLE     �   CREATE TABLE public.main_app_rating_review (
    id integer NOT NULL,
    rating integer NOT NULL,
    review text NOT NULL,
    doctor_id integer,
    patient_id integer
);
 *   DROP TABLE public.main_app_rating_review;
       public         heap    postgres    false            �            1259    16659    main_app_rating_review_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_app_rating_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_app_rating_review_id_seq;
       public          postgres    false    231            �           0    0    main_app_rating_review_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_app_rating_review_id_seq OWNED BY public.main_app_rating_review.id;
          public          postgres    false    230            �
           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    16624    chats_chat id    DEFAULT     n   ALTER TABLE ONLY public.chats_chat ALTER COLUMN id SET DEFAULT nextval('public.chats_chat_id_seq'::regclass);
 <   ALTER TABLE public.chats_chat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �
           2604    16647    chats_feedback id    DEFAULT     v   ALTER TABLE ONLY public.chats_feedback ALTER COLUMN id SET DEFAULT nextval('public.chats_feedback_id_seq'::regclass);
 @   ALTER TABLE public.chats_feedback ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16578    main_app_consultation id    DEFAULT     �   ALTER TABLE ONLY public.main_app_consultation ALTER COLUMN id SET DEFAULT nextval('public.main_app_consultation_id_seq'::regclass);
 G   ALTER TABLE public.main_app_consultation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    16567    main_app_diseaseinfo id    DEFAULT     �   ALTER TABLE ONLY public.main_app_diseaseinfo ALTER COLUMN id SET DEFAULT nextval('public.main_app_diseaseinfo_id_seq'::regclass);
 F   ALTER TABLE public.main_app_diseaseinfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �
           2604    16664    main_app_rating_review id    DEFAULT     �   ALTER TABLE ONLY public.main_app_rating_review ALTER COLUMN id SET DEFAULT nextval('public.main_app_rating_review_id_seq'::regclass);
 H   ALTER TABLE public.main_app_rating_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �          0    16425 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��       �          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    16417    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��       �          0    16443 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    16453    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��       �          0    16461    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    16621 
   chats_chat 
   TABLE DATA           Y   COPY public.chats_chat (id, created, message, consultation_id_id, sender_id) FROM stdin;
    public          postgres    false    227   ��       �          0    16644    chats_feedback 
   TABLE DATA           J   COPY public.chats_feedback (id, created, feedback, sender_id) FROM stdin;
    public          postgres    false    229   �       �          0    16521    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    16407    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   *�       �          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��       �          0    16683    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   &�       �          0    16575    main_app_consultation 
   TABLE DATA           u   COPY public.main_app_consultation (id, consultation_date, status, diseaseinfo_id, doctor_id, patient_id) FROM stdin;
    public          postgres    false    225   ��       �          0    16564    main_app_diseaseinfo 
   TABLE DATA           �   COPY public.main_app_diseaseinfo (id, diseasename, no_of_symp, symptomsname, confidence, consultdoctor, patient_id) FROM stdin;
    public          postgres    false    223   ��       �          0    16552    main_app_doctor 
   TABLE DATA           �   COPY public.main_app_doctor (user_id, is_patient, is_doctor, name, dob, address, mobile_no, gender, registration_no, year_of_registration, qualification, "State_Medical_Council", specialization, rating) FROM stdin;
    public          postgres    false    220   ��       �          0    16557    main_app_doctorr 
   TABLE DATA           q   COPY public.main_app_doctorr (user_id, is_patient, is_doctor, name, dob, address, mobile_no, gender) FROM stdin;
    public          postgres    false    221   ��       �          0    16661    main_app_rating_review 
   TABLE DATA           [   COPY public.main_app_rating_review (id, rating, review, doctor_id, patient_id) FROM stdin;
    public          postgres    false    231   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    206                        0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
          public          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0    chats_chat_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.chats_chat_id_seq', 1, false);
          public          postgres    false    226                       0    0    chats_feedback_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.chats_feedback_id_seq', 3, true);
          public          postgres    false    228                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          postgres    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);
          public          postgres    false    202                       0    0    main_app_consultation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.main_app_consultation_id_seq', 1, true);
          public          postgres    false    224            	           0    0    main_app_diseaseinfo_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.main_app_diseaseinfo_id_seq', 165, true);
          public          postgres    false    222            
           0    0    main_app_rating_review_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_app_rating_review_id_seq', 1, false);
          public          postgres    false    230            �
           2606    16550    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    16477 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                        2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    16468 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    16492 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    16506 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            +           2606    16629    chats_chat chats_chat_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.chats_chat
    ADD CONSTRAINT chats_chat_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.chats_chat DROP CONSTRAINT chats_chat_pkey;
       public            postgres    false    227            .           2606    16652 "   chats_feedback chats_feedback_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.chats_feedback
    ADD CONSTRAINT chats_feedback_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.chats_feedback DROP CONSTRAINT chats_feedback_pkey;
       public            postgres    false    229                       2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            6           2606    16690 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232            $           2606    16585 >   main_app_consultation main_app_consultation_diseaseinfo_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_app_consultation
    ADD CONSTRAINT main_app_consultation_diseaseinfo_id_key UNIQUE (diseaseinfo_id);
 h   ALTER TABLE ONLY public.main_app_consultation DROP CONSTRAINT main_app_consultation_diseaseinfo_id_key;
       public            postgres    false    225            (           2606    16583 0   main_app_consultation main_app_consultation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.main_app_consultation
    ADD CONSTRAINT main_app_consultation_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.main_app_consultation DROP CONSTRAINT main_app_consultation_pkey;
       public            postgres    false    225            "           2606    16572 .   main_app_diseaseinfo main_app_diseaseinfo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.main_app_diseaseinfo
    ADD CONSTRAINT main_app_diseaseinfo_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.main_app_diseaseinfo DROP CONSTRAINT main_app_diseaseinfo_pkey;
       public            postgres    false    223                       2606    16556 $   main_app_doctor main_app_doctor_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.main_app_doctor
    ADD CONSTRAINT main_app_doctor_pkey PRIMARY KEY (user_id);
 N   ALTER TABLE ONLY public.main_app_doctor DROP CONSTRAINT main_app_doctor_pkey;
       public            postgres    false    220                       2606    16561 &   main_app_doctorr main_app_patient_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.main_app_doctorr
    ADD CONSTRAINT main_app_patient_pkey PRIMARY KEY (user_id);
 P   ALTER TABLE ONLY public.main_app_doctorr DROP CONSTRAINT main_app_patient_pkey;
       public            postgres    false    221            3           2606    16669 2   main_app_rating_review main_app_rating_review_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_app_rating_review
    ADD CONSTRAINT main_app_rating_review_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_app_rating_review DROP CONSTRAINT main_app_rating_review_pkey;
       public            postgres    false    231            �
           1259    16551    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            	           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            )           1259    16640 &   chats_chat_consultation_id_id_a0baf189    INDEX     k   CREATE INDEX chats_chat_consultation_id_id_a0baf189 ON public.chats_chat USING btree (consultation_id_id);
 :   DROP INDEX public.chats_chat_consultation_id_id_a0baf189;
       public            postgres    false    227            ,           1259    16641    chats_chat_sender_id_d5482301    INDEX     Y   CREATE INDEX chats_chat_sender_id_d5482301 ON public.chats_chat USING btree (sender_id);
 1   DROP INDEX public.chats_chat_sender_id_d5482301;
       public            postgres    false    227            /           1259    16658 !   chats_feedback_sender_id_c2f7bf67    INDEX     a   CREATE INDEX chats_feedback_sender_id_c2f7bf67 ON public.chats_feedback USING btree (sender_id);
 5   DROP INDEX public.chats_feedback_sender_id_c2f7bf67;
       public            postgres    false    229                       1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            4           1259    16692 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232            7           1259    16691 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            %           1259    16617 (   main_app_consultation_doctor_id_1ebbdc23    INDEX     o   CREATE INDEX main_app_consultation_doctor_id_1ebbdc23 ON public.main_app_consultation USING btree (doctor_id);
 <   DROP INDEX public.main_app_consultation_doctor_id_1ebbdc23;
       public            postgres    false    225            &           1259    16618 )   main_app_consultation_patient_id_d949f254    INDEX     q   CREATE INDEX main_app_consultation_patient_id_d949f254 ON public.main_app_consultation USING btree (patient_id);
 =   DROP INDEX public.main_app_consultation_patient_id_d949f254;
       public            postgres    false    225                        1259    16601 (   main_app_diseaseinfo_patient_id_b3d1d749    INDEX     o   CREATE INDEX main_app_diseaseinfo_patient_id_b3d1d749 ON public.main_app_diseaseinfo USING btree (patient_id);
 <   DROP INDEX public.main_app_diseaseinfo_patient_id_b3d1d749;
       public            postgres    false    223            0           1259    16680 )   main_app_rating_review_doctor_id_9f4e848b    INDEX     q   CREATE INDEX main_app_rating_review_doctor_id_9f4e848b ON public.main_app_rating_review USING btree (doctor_id);
 =   DROP INDEX public.main_app_rating_review_doctor_id_9f4e848b;
       public            postgres    false    231            1           1259    16681 *   main_app_rating_review_patient_id_c905d6e3    INDEX     s   CREATE INDEX main_app_rating_review_patient_id_c905d6e3 ON public.main_app_rating_review USING btree (patient_id);
 >   DROP INDEX public.main_app_rating_review_patient_id_c905d6e3;
       public            postgres    false    231            :           2606    16483 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2811    207    211            9           2606    16478 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2816    211    209            8           2606    16469 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2806    205    207            <           2606    16498 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2816            ;           2606    16493 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2824    215    213            >           2606    16512 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    2811    217            =           2606    16507 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    213    2824            G           2606    16630 >   chats_chat chats_chat_consultation_id_id_a0baf189_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.chats_chat
    ADD CONSTRAINT chats_chat_consultation_id_id_a0baf189_fk_main_app_ FOREIGN KEY (consultation_id_id) REFERENCES public.main_app_consultation(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.chats_chat DROP CONSTRAINT chats_chat_consultation_id_id_a0baf189_fk_main_app_;
       public          postgres    false    2856    225    227            H           2606    16635 8   chats_chat chats_chat_sender_id_d5482301_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chats_chat
    ADD CONSTRAINT chats_chat_sender_id_d5482301_fk_auth_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.chats_chat DROP CONSTRAINT chats_chat_sender_id_d5482301_fk_auth_user_id;
       public          postgres    false    227    2824    213            I           2606    16653 @   chats_feedback chats_feedback_sender_id_c2f7bf67_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chats_feedback
    ADD CONSTRAINT chats_feedback_sender_id_c2f7bf67_fk_auth_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.chats_feedback DROP CONSTRAINT chats_feedback_sender_id_c2f7bf67_fk_auth_user_id;
       public          postgres    false    2824    213    229            ?           2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    2806            @           2606    16536 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2824    213    219            D           2606    16602 O   main_app_consultation main_app_consultatio_diseaseinfo_id_481a54aa_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_consultation
    ADD CONSTRAINT main_app_consultatio_diseaseinfo_id_481a54aa_fk_main_app_ FOREIGN KEY (diseaseinfo_id) REFERENCES public.main_app_diseaseinfo(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.main_app_consultation DROP CONSTRAINT main_app_consultatio_diseaseinfo_id_481a54aa_fk_main_app_;
       public          postgres    false    2850    223    225            E           2606    16607 J   main_app_consultation main_app_consultatio_doctor_id_1ebbdc23_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_consultation
    ADD CONSTRAINT main_app_consultatio_doctor_id_1ebbdc23_fk_main_app_ FOREIGN KEY (doctor_id) REFERENCES public.main_app_doctor(user_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.main_app_consultation DROP CONSTRAINT main_app_consultatio_doctor_id_1ebbdc23_fk_main_app_;
       public          postgres    false    225    2845    220            F           2606    16612 K   main_app_consultation main_app_consultatio_patient_id_d949f254_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_consultation
    ADD CONSTRAINT main_app_consultatio_patient_id_d949f254_fk_main_app_ FOREIGN KEY (patient_id) REFERENCES public.main_app_doctorr(user_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.main_app_consultation DROP CONSTRAINT main_app_consultatio_patient_id_d949f254_fk_main_app_;
       public          postgres    false    221    2847    225            C           2606    16596 J   main_app_diseaseinfo main_app_diseaseinfo_patient_id_b3d1d749_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_diseaseinfo
    ADD CONSTRAINT main_app_diseaseinfo_patient_id_b3d1d749_fk_main_app_ FOREIGN KEY (patient_id) REFERENCES public.main_app_doctorr(user_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.main_app_diseaseinfo DROP CONSTRAINT main_app_diseaseinfo_patient_id_b3d1d749_fk_main_app_;
       public          postgres    false    221    2847    223            A           2606    16586 @   main_app_doctor main_app_doctor_user_id_74e83ddb_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_doctor
    ADD CONSTRAINT main_app_doctor_user_id_74e83ddb_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.main_app_doctor DROP CONSTRAINT main_app_doctor_user_id_74e83ddb_fk_auth_user_id;
       public          postgres    false    220    2824    213            B           2606    16591 B   main_app_doctorr main_app_patient_user_id_2893643b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_doctorr
    ADD CONSTRAINT main_app_patient_user_id_2893643b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.main_app_doctorr DROP CONSTRAINT main_app_patient_user_id_2893643b_fk_auth_user_id;
       public          postgres    false    213    2824    221            J           2606    16670 K   main_app_rating_review main_app_rating_revi_doctor_id_9f4e848b_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_rating_review
    ADD CONSTRAINT main_app_rating_revi_doctor_id_9f4e848b_fk_main_app_ FOREIGN KEY (doctor_id) REFERENCES public.main_app_doctor(user_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.main_app_rating_review DROP CONSTRAINT main_app_rating_revi_doctor_id_9f4e848b_fk_main_app_;
       public          postgres    false    220    231    2845            K           2606    16675 L   main_app_rating_review main_app_rating_revi_patient_id_c905d6e3_fk_main_app_    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_app_rating_review
    ADD CONSTRAINT main_app_rating_revi_patient_id_c905d6e3_fk_main_app_ FOREIGN KEY (patient_id) REFERENCES public.main_app_doctorr(user_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.main_app_rating_review DROP CONSTRAINT main_app_rating_revi_patient_id_c905d6e3_fk_main_app_;
       public          postgres    false    221    231    2847            �      x�3�.�J������ ��      �   �   x�л�0��[̍@B�^�'8YEzCR}D��������z]���y=�׋�oB#�@T(��QMH��F�tP8]*N*n�y~���W��դ�բ�զ�ա�ե�����x�6���t�6�'��7��/���Y8�����h��<q</�����|���`ƛbƛ���NL6�      �     x�]�[n�0E��UdU�#��n�RE����i���=�y<g���$)�6��i��峙C
��}]�:˲�enb���m��Y�Xa���O�����W�S�9���+�d.��>�@�@��Ma8J"�I�
	s�T�p��1��	���6���d�Di*4� ��R�<����*�BUL�͢���i�8�4�BH���M7�f�]B��;1��)9����gw^�C3x�7'�`<>�&��C?=���*Cx��V,�U�4_y7��`܀���(��Վq��o�c^�p��n/N�-O�7#Ι��ߌ}��\M���r�ƿp��Ke,�N��J:�,IY�4bY"*e���w7M�8�`�K�%Y3{�,̲��fQT΀j�m�����)���SM 
G��KʄLe��P_MzNy	�$�u��:ܦH8W�� H9���nm=��O���9��E^�֭X6;ZEց��c7�"���y�pYa�`�����Pk瀁(�p� �QD���7$c��%���c��      �   �  x�u�[o�@�g�)|���C�dEQ�U�֪M��(*�\�bk?��]���R2aH��q�Z-]����}�(S��ӽW���T����8�I����z�e�"��2f���r>Ϧ7��QmS�D���Z�&�YY�=�?�����U��E�!���A����5D k jz��]��c�Gǚ*�Zs~,�%��n؞����[<lv��,��0;����\:�k�� �����%+;I���_.EPV�?*` s1��Q�y�|��|�J����h��Nol��C�"✽tt϶K{p�����+�?fx�Xp�`����KVE�I��^�"E�o� �� d �2��.nZ�~M��o�����H�qsog�`sj�"�xtV1�k7��O��Y�~o�Y���5�rա<Zp�C�x?���ٰ�����
���3�/nX���K�{vwF���O�3�l�C�k=y�$�'=ig�ж+w6 �����Z �B�j*�@�TJT^">�伫Y�
Iu��e�就��(� ��I��3��d�,��m*�Č���!�n�C�m��6[`����	�5mp�0\�_ܲ)U�.�>�Y�߳���-OL&���@B/j�MJL[�Y��Pi���D�iwe���y8wph��30%�i�;27��:�\�H�/��y�r��IQmY��4�f`����~V���~6�O�      �      x�3�4�4����� �X      �      x�3�4�4����� �X      �      x������ � �      �   �   x�=�K
�0��q��;���HLr�N]�����Jwo�������029"�{���h��dJ�v�a�����#�\�<��9v��H%��/����y��Ҟ&Z�����2*fR�U���ck�՜���S$d      �   n   x�]�A�0F���]j���2@��F+�a)�����m�4@#�����1i���mN-	��T�y{~�R�E�i+9����Dc��q��M�����4�����[���      �   �   x�M�I�0E��a�:ޥr����D�ӊۗ�l,��?��,��h��'��0���u��6I{����I��&�e�6xɽN����4�V�ߎ?x���T�F�e� r�Ȝ5��)�Ƭ*'4�<�SR�ȲhJ^���〈_"�V�      �   ?  x����n�0���S�^D�.��,Vfl���D��ۗrE�B�8]��4;.T��ׇp�\B���o�
	��'�? �A=��9PF�O?`e�p~$���(�D�����T��B�?�n*4�p�����\7�9]��E��Dj�a�Co�(5�	~��KkO�9��i�qZJ�p�Cz�<mf=1��\��ㄔo4��Dc��&3����[���u�)�U���3�h*��F[��p���c��@:��=h}\Mc(G���"$c�=��sX���#.m�	Z� � �D�u�SN����'�i�!��+7Co��G�i�V�M�0��ͳ=}�-5�����ԗ�C $Xf�q}F��yV�h@6�i��{$���$�I`�1���8�����5Ȅ�U�ao�8>ZP+�sȪj�6<ZUk���5�&C����m�u
���8�3���?��y����5Wy�<;=������-A�Q�<�����DǾ�R�#0E�t��84���@E���Y�����n��K�u}~qY"N�`i ��d�	�f�`#��1�ٓ�f�u�AX�H�_��p�c9ݬ      �   ^  x��ˎ�8�ש����"_p"բ�Hh��Qb40	`�@原~�L��{Q��Ŭ�lK>�w�Y��wc����f#���������	�A�-��CԄ����KO�WIǩ\.g��3�i��5�#MM7�[����I7�]�,�`P_���¯vņ)�ܚ'�&�	d[�~W庸|���>K�3߬A�F�='z�r�|��8:�\/��o����܅���*�J{��qTqU��+5s�n� �W�yK��Yl�˙a�����N��A���ŷ�g�@��Ƶ�{�`^ ��=��8S<N�;v��L�ԡwa�ö�l�x���o�떴��%`���?3���ЛK���f��a:�\�H�̛�+$��0�)b�W�Lkn��ɺ�~���&�%d^s�i�E�y%�������weỽ���8��}��½�E/�N��)O�;�`�"���=g�[)3]fn}8��f��:w.����lB�u����
�I��>�+l�HU�-*�ݱ�l*�x�c����E�#"����o|ÀЮ�ڕ�sTt?�5����,!:�n��#�����������c�����*��G��9�̐:�]��%8�D�kZ��8�������x��#��Z��X�0������uM��ه~n��wX���H�ɽt��,S&����L�(
K�eC����?��'|�v	:}�3�ƧV�n7j2�Dl�z\nW������K[ ���Ս�+���1��|
����f����"�%��H����sē�a��П]�Wif�*��PO *U�<a�.���s������NM�<y����}?j��0y��"����A�������S,      �      x������ � �      �   �  x��Zˎ�6]�_a�*�T�\�3A�E��M�* �m#�%M��ｔ,[�Hzd{m������B֧톊��������!2N�"�$%IF)�������-�}g��=)�9_����̱>~��A�e�EA� �Z4��IX��-���i��'*�ay#��"�����9-k*���.XI�v^��sV�h"-�����GT,�9�i�ʸ�4uSt��U�y!i
�RV%�XqQC_2�>��Zߚ%I��U|�:�S��r��f�-
���
�n��>ϩ�H|.���a��;��B�������X��t#�/���%��Y��.4��*n��`k�kmX�M͒y�'T��`��Υ)/�yg���-��ZA�-�b�f) l�т��dM߶��q� 9��4��-�)�-����6&�R�ej�Gv�QN/��@�C8f+�zl��$YsAʟ�J�hlU���ņ�l�;z?i��
$���=�7C��Gp�^), �7+�MT`�*}6�#O�8���b _�@ ��l,J����FrlU����Š��m��
Ш�2�z����X�
±>��
����[��q@�3c��w��5���w�uϋt��yz�"t۩�=C��3ɍl��8q��E3�'Q߾�Z�;d[���U�R�s���uF�$�q
��L��!�xM���N����r ��F����\��ΈXgGO��I�bt�I�s9)�&�{�H�à�;zO����6�#-D��<}���O^�)��ɝ .�A$��-@���uo!� ,y��|�Jb��fT�	��o�5��~���q_o{-���G��'R�r�OI#hB�+�q7z��UV��jC��2{��!��I1��"��)5ɟy:ծ7:��Ӱ����3�י����� ��Z4U��[�a��|{�m|4�s��s�m*v���h����B�� 6�7v{ۉ q�6;,�>> �i�m��<�z��*^_z Ļ0��tZD�Ӛ��iǏn ط ��G�KH>�6�L��M??&]A���`�p�ڹ%�6(��p���:�Z�����D�+:��l���]O��,Qh�D�'���)�E,�п(���5IO�"��HF=�3�;^�O	��`tPQNi[�sO{b"�E���|�S&R��a`��cN���T�"�}R��h ��kң�y(���E�1!B�~�1�Nn�c����#�D������I��#���Ǘ|��qb7Oy��_���D^a�h�5嚊-a�X�?BM����{�8�W��E7��}s�,�����I�nś<�
��s޼=�ݩw���M`�h�Z���9\"�+yq$y���"Z��L�|8j��ٷ�둭��B
�Xa��(1��.�zd�ƴoD)װ�%u#3�==Gc����h��X6�g�s%	�ёIg몤��>od�j|��8������4w�����wg �ř32�R4�j%���%[�Ҏ=ƙt�P4�\�$%i*JT��<��+�h�KE�F�����r�-6Y\�VJ��
%!v��D��@a��2�DF�<_�@hx��ofT�NM�����^��b�?��9���!��[,rp{=&Mx��)�*�ɗ�l�"|���&��=�[���n��[߶���g�C��o+�?�F6.���5VU���Q��K싺�]�X�}����K:v����S���s�;V^zzL(���Hl���eaO=ۅgD��d�'��Xqk��r���+�"�Z.'�� J
��-����g��/�����d`���z3D�~��wC9FT?�L+{�kl�+�8�{g��J c��/��5N�?(DK�5I����m����� ����Cg��E�g���q�}�4,�'^�e�]�d!���642Y|� y�`TG��t_i��R�����ms4��*lh��Lb�R�n�'*Q�q�{���r%���(��'q�]��(ןŷ_�$�}��)Qn�>��_�{����?���l6�.\�      �      x������ � �      �   �   x�e����0����)� c1����2`��鶛34E�F�	���2gq7�W�N�����H���E�����͞��̚�6�O;xQ#+2:/d.�/p|���bU��<��䧵�8c�H��e���q�m�mrR���z���N�[q��Ɛ�.-}�����6���>�W�H��U�B�-ݽ���_wY�� ��R[      �      x������ � �     
PGDMP     !                    z            retaill    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16575    retaill    DATABASE     ?   CREATE DATABASE retaill WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE retaill;
                postgres    false            ?            1259    16581    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30) NOT NULL,
    harga_barang integer,
    stok_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16596 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16586    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30),
    jenis_kelamin character(1),
    no_telp character(15),
    alamat character varying(15)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16576    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    nomor_telepon character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16591 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16581    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stok_barang, id_supplier) FROM stdin;
    public          postgres    false    215                    0    16596 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   ?                 0    16586    pembeli 
   TABLE DATA           [   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, no_telp, alamat) FROM stdin;
    public          postgres    false    216   ?                 0    16576    supplier 
   TABLE DATA           U   COPY public.supplier (id_supplier, nama_supplier, nomor_telepon, alamat) FROM stdin;
    public          postgres    false    214   ?                 0    16591 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    217          w           2606    16585    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    16600    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            y           2606    16590    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16580    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            {           2606    16595    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    217                       2606    16607    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    217    3191    215            ?           2606    16612    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3193    216    217            ~           2606    16602    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    215    214    3189            ?           2606    16617 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3195    218    217               ?   x??A?? EןSx?)?"x???贴4m?,zN?!???yU?1?S=Z?AZk?y e????L????0????vL?e{d>???`;?dybh??0?U?tF???AB?C+?̡?O???????8??[YC???,?g???rQ??@?E?8???^ )??A?¹???r? )??F\??ܩ<???Gc???ܟF?T?$??hܟ&졬??~@??E?Y?[?Q???RJ??2S?         ?   x?EлC1C?????l??K??#b???7??????9̬MC3x?.qʐ??S2(S2nɤ???$(K?%??%9?dS?$????\I?YrS`ጯ?(J??J? j?Y?P?j 6?pV?? ????~???a8BQ         +  x?]?Kr? ??|
_?Ə[? ?(??bc??Lz?"?LK7?>~		%?wo??^??W???P?5?4On??\t? Z???C/?lW;??F
h???:'e????i#w??m?????????\?Z6??B??mt#1??ٔ-v??q>e?iӅ5?Y(<?$??????9?"??܅B Ϩo?RUVsR~?]`M?k?9w"7??
?3?GЁB?t?;'!·?*W??=롄?/?9?l?͑;Ǵ???2K?),iO+?????p2/?]\??HC=N?ߊZ??ƙ֍,]R??????肋?         1  x?e??n?0??sy
^`???с?5!Q?????N?%ۅ??8T?.?QNp¥????ھ,ˋ?P???d???¾?F?a???wN?wΕ????n?F#?V??q?t!?????..U5+s???]??i?L??v ??͎V??????d?!׳???tV???*????f????TJ???'?r?f???R?<q??4^/??ʎ??@WU??0?{Dm?Æ????a??1????3=??"i?ҥ>?CP??E????wf????E7<?WT??.???Jʏ??l?k???"6?W?????q'?]|}E????X         ?   x?E?;A??z?.???<KzD????9???"??*?y?=f'????~?_?U?(?Tu?.?Tm?????αK{j?t????qJg?]?t????qKw???0?W=?{)A?????DP+d+D+0?
?
?
L?B?B?A???p???J)_?6S?     
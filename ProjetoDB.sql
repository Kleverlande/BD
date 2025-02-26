PGDMP                      }            dio    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24928    dio    DATABASE     z   CREATE DATABASE dio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE dio;
                     postgres    false            �            1259    24940    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome integer,
    identificacao integer,
    endereco integer
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false            �            1259    24965    estoque    TABLE     T   CREATE TABLE public.estoque (
    id_estoque integer NOT NULL,
    local integer
);
    DROP TABLE public.estoque;
       public         heap r       postgres    false            �            1259    24955 
   fornecedor    TABLE     s   CREATE TABLE public.fornecedor (
    id_fornecedor integer NOT NULL,
    razao_social integer,
    cnpj integer
);
    DROP TABLE public.fornecedor;
       public         heap r       postgres    false            �            1259    24945    pedido    TABLE     t   CREATE TABLE public.pedido (
    id_pedido integer NOT NULL,
    status_do_pedido integer,
    descricao integer
);
    DROP TABLE public.pedido;
       public         heap r       postgres    false            �            1259    24950    produto    TABLE     �   CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    categoria integer,
    descricao integer,
    valor integer
);
    DROP TABLE public.produto;
       public         heap r       postgres    false            �            1259    24985    terceiro_vendedor    TABLE     y   CREATE TABLE public.terceiro_vendedor (
    id_terceiro integer NOT NULL,
    razao_social integer,
    local integer
);
 %   DROP TABLE public.terceiro_vendedor;
       public         heap r       postgres    false            �          0    24940    cliente 
   TABLE DATA           L   COPY public.cliente (id_cliente, nome, identificacao, endereco) FROM stdin;
    public               postgres    false    217   `       �          0    24965    estoque 
   TABLE DATA           4   COPY public.estoque (id_estoque, local) FROM stdin;
    public               postgres    false    221   }       �          0    24955 
   fornecedor 
   TABLE DATA           G   COPY public.fornecedor (id_fornecedor, razao_social, cnpj) FROM stdin;
    public               postgres    false    220   �       �          0    24945    pedido 
   TABLE DATA           H   COPY public.pedido (id_pedido, status_do_pedido, descricao) FROM stdin;
    public               postgres    false    218   �       �          0    24950    produto 
   TABLE DATA           J   COPY public.produto (id_produto, categoria, descricao, valor) FROM stdin;
    public               postgres    false    219   �       �          0    24985    terceiro_vendedor 
   TABLE DATA           M   COPY public.terceiro_vendedor (id_terceiro, razao_social, local) FROM stdin;
    public               postgres    false    222   �       5           2606    24944    cliente pk_cliente 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT pk_cliente;
       public                 postgres    false    217            =           2606    24969    estoque pk_estoque 
   CONSTRAINT     X   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT pk_estoque PRIMARY KEY (id_estoque);
 <   ALTER TABLE ONLY public.estoque DROP CONSTRAINT pk_estoque;
       public                 postgres    false    221            ;           2606    24959    fornecedor pk_fornecedor 
   CONSTRAINT     a   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT pk_fornecedor PRIMARY KEY (id_fornecedor);
 B   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT pk_fornecedor;
       public                 postgres    false    220            7           2606    24949    pedido pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pk_pedido PRIMARY KEY (id_pedido);
 :   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pk_pedido;
       public                 postgres    false    218            9           2606    24954    produto pk_produto 
   CONSTRAINT     X   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT pk_produto PRIMARY KEY (id_produto);
 <   ALTER TABLE ONLY public.produto DROP CONSTRAINT pk_produto;
       public                 postgres    false    219            ?           2606    24989 &   terceiro_vendedor pk_terceiro_vendedor 
   CONSTRAINT     m   ALTER TABLE ONLY public.terceiro_vendedor
    ADD CONSTRAINT pk_terceiro_vendedor PRIMARY KEY (id_terceiro);
 P   ALTER TABLE ONLY public.terceiro_vendedor DROP CONSTRAINT pk_terceiro_vendedor;
       public                 postgres    false    222            A           2606    24960 #   produto disponibilizando_um_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT disponibilizando_um_produto FOREIGN KEY (id_produto) REFERENCES public.fornecedor(id_fornecedor);
 M   ALTER TABLE ONLY public.produto DROP CONSTRAINT disponibilizando_um_produto;
       public               postgres    false    220    219    4667            @           2606    24975    cliente fk_cliente_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente_pedido FOREIGN KEY (id_cliente) REFERENCES public.pedido(id_pedido);
 C   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente_pedido;
       public               postgres    false    218    4663    217            C           2606    24970    estoque fk_estoque_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.estoque
    ADD CONSTRAINT fk_estoque_produto FOREIGN KEY (id_estoque) REFERENCES public.produto(id_produto);
 D   ALTER TABLE ONLY public.estoque DROP CONSTRAINT fk_estoque_produto;
       public               postgres    false    221    219    4665            B           2606    24980    produto fk_produto_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT fk_produto_pedido FOREIGN KEY (id_produto) REFERENCES public.pedido(id_pedido);
 C   ALTER TABLE ONLY public.produto DROP CONSTRAINT fk_produto_pedido;
       public               postgres    false    218    4663    219            D           2606    24990 .   terceiro_vendedor fk_terceiro_vendedor_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.terceiro_vendedor
    ADD CONSTRAINT fk_terceiro_vendedor_produto FOREIGN KEY (id_terceiro) REFERENCES public.produto(id_produto);
 X   ALTER TABLE ONLY public.terceiro_vendedor DROP CONSTRAINT fk_terceiro_vendedor_produto;
       public               postgres    false    219    222    4665            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     
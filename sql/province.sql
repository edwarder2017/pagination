create table PROVINCE
(
  id   NUMBER(10) not null,
  code VARCHAR2(20) not null,
  name VARCHAR2(80)
)
;
alter table PROVINCE
  add primary key (ID);
alter table PROVINCE
  add unique (CODE);

insert into PROVINCE (id, code, name)
values (1, '110000', '������');
insert into PROVINCE (id, code, name)
values (2, '120000', '�����');
insert into PROVINCE (id, code, name)
values (3, '130000', '�ӱ�ʡ');
insert into PROVINCE (id, code, name)
values (4, '140000', 'ɽ��ʡ');
insert into PROVINCE (id, code, name)
values (5, '150000', '���ɹ�');
insert into PROVINCE (id, code, name)
values (6, '210000', '����ʡ');
insert into PROVINCE (id, code, name)
values (7, '220000', '����ʡ');
insert into PROVINCE (id, code, name)
values (8, '230000', '������');
insert into PROVINCE (id, code, name)
values (9, '310000', '�Ϻ���');
insert into PROVINCE (id, code, name)
values (10, '320000', '����ʡ');
insert into PROVINCE (id, code, name)
values (11, '330000', '�㽭ʡ');
insert into PROVINCE (id, code, name)
values (12, '340000', '����ʡ');
insert into PROVINCE (id, code, name)
values (13, '350000', '����ʡ');
insert into PROVINCE (id, code, name)
values (14, '360000', '����ʡ');
insert into PROVINCE (id, code, name)
values (15, '370000', 'ɽ��ʡ');
insert into PROVINCE (id, code, name)
values (16, '410000', '����ʡ');
insert into PROVINCE (id, code, name)
values (17, '420000', '����ʡ');
insert into PROVINCE (id, code, name)
values (18, '430000', '����ʡ');
insert into PROVINCE (id, code, name)
values (19, '440000', '�㶫ʡ');
insert into PROVINCE (id, code, name)
values (20, '450000', '�� ��');
insert into PROVINCE (id, code, name)
values (21, '460000', '����ʡ');
insert into PROVINCE (id, code, name)
values (22, '500000', '������');
insert into PROVINCE (id, code, name)
values (23, '510000', '�Ĵ�ʡ');
insert into PROVINCE (id, code, name)
values (24, '520000', '����ʡ');
insert into PROVINCE (id, code, name)
values (25, '530000', '����ʡ');
insert into PROVINCE (id, code, name)
values (26, '540000', '�� ��');
insert into PROVINCE (id, code, name)
values (27, '610000', '����ʡ');
insert into PROVINCE (id, code, name)
values (28, '620000', '����ʡ');
insert into PROVINCE (id, code, name)
values (29, '630000', '�ຣʡ');
insert into PROVINCE (id, code, name)
values (30, '640000', '�� ��');
insert into PROVINCE (id, code, name)
values (31, '650000', '�� ��');
insert into PROVINCE (id, code, name)
values (32, '710000', '̨��ʡ');
insert into PROVINCE (id, code, name)
values (33, '810000', '�� ��');
insert into PROVINCE (id, code, name)
values (34, '820000', '�� ��');

commit;

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
values (1, '110000', '北京市');
insert into PROVINCE (id, code, name)
values (2, '120000', '天津市');
insert into PROVINCE (id, code, name)
values (3, '130000', '河北省');
insert into PROVINCE (id, code, name)
values (4, '140000', '山西省');
insert into PROVINCE (id, code, name)
values (5, '150000', '内蒙古');
insert into PROVINCE (id, code, name)
values (6, '210000', '辽宁省');
insert into PROVINCE (id, code, name)
values (7, '220000', '吉林省');
insert into PROVINCE (id, code, name)
values (8, '230000', '黑龙江');
insert into PROVINCE (id, code, name)
values (9, '310000', '上海市');
insert into PROVINCE (id, code, name)
values (10, '320000', '江苏省');
insert into PROVINCE (id, code, name)
values (11, '330000', '浙江省');
insert into PROVINCE (id, code, name)
values (12, '340000', '安徽省');
insert into PROVINCE (id, code, name)
values (13, '350000', '福建省');
insert into PROVINCE (id, code, name)
values (14, '360000', '江西省');
insert into PROVINCE (id, code, name)
values (15, '370000', '山东省');
insert into PROVINCE (id, code, name)
values (16, '410000', '河南省');
insert into PROVINCE (id, code, name)
values (17, '420000', '湖北省');
insert into PROVINCE (id, code, name)
values (18, '430000', '湖南省');
insert into PROVINCE (id, code, name)
values (19, '440000', '广东省');
insert into PROVINCE (id, code, name)
values (20, '450000', '广 西');
insert into PROVINCE (id, code, name)
values (21, '460000', '海南省');
insert into PROVINCE (id, code, name)
values (22, '500000', '重庆市');
insert into PROVINCE (id, code, name)
values (23, '510000', '四川省');
insert into PROVINCE (id, code, name)
values (24, '520000', '贵州省');
insert into PROVINCE (id, code, name)
values (25, '530000', '云南省');
insert into PROVINCE (id, code, name)
values (26, '540000', '西 藏');
insert into PROVINCE (id, code, name)
values (27, '610000', '陕西省');
insert into PROVINCE (id, code, name)
values (28, '620000', '甘肃省');
insert into PROVINCE (id, code, name)
values (29, '630000', '青海省');
insert into PROVINCE (id, code, name)
values (30, '640000', '宁 夏');
insert into PROVINCE (id, code, name)
values (31, '650000', '新 疆');
insert into PROVINCE (id, code, name)
values (32, '710000', '台湾省');
insert into PROVINCE (id, code, name)
values (33, '810000', '香 港');
insert into PROVINCE (id, code, name)
values (34, '820000', '澳 门');

commit;

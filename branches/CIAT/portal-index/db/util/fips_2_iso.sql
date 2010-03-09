drop table fips104_to_iso2;
create table fips104_to_iso2 (fips char(2), iso char(2), country varchar(50));
insert into fips104_to_iso2 
values 
    ('AF','AF','Afghanistan'),
    ('AL','AL','Albania'),
    ('AG','DZ','Algeria'),
    ('AQ','AS','American Samoa'),
    ('AN','AD','Andorra'),
    ('AO','AO','Angola'),
    ('AV','AI','Anguilla'),
    ('AY','AQ','Antarctica'),
    ('AC','AG','Antigua and Barbuda'),
    ('AR','AR','Argentina'),
    ('AM','AM','Armenia'),
    ('AA','AW','Aruba'),
    ('AT','AU','Ashmore and Cartier Islands'),
    ('AS','AU','Australia'),
    ('AU','AT','Austria'),
    ('AJ','AZ','Azerbaijan'),
    ('BF','BS','Bahamas, The'),
    ('BA','BH','Bahrain'),
    ('FQ','UM','Baker Island'),
    ('BG','BD','Bangladesh'),
    ('BB','BB','Barbados'),
    ('BS','RE','Bassas da India'),
    ('BO','BY','Belarus'),
    ('BE','BE','Belgium'),
    ('BH','BZ','Belize'),
    ('BN','BJ','Benin'),
    ('BD','BM','Bermuda'),
    ('BT','BT','Bhutan'),
    ('BL','BO','Bolivia'),
    ('BK','BA','Bosnia and Herzegovina'),
    ('BC','BW','Botswana'),
    ('BV','BV','Bouvet Island'),
    ('BR','BR','Brazil'),
    ('IO','IO','British Indian Ocean Territory'),
    ('VI','VG','British Virgin Islands'),
    ('BX','BN','Brunei'),
    ('BU','BG','Bulgaria'),
    ('UV','BF','Burkina Faso'),
    ('BM','MM','Burma'),
    ('BY','BI','Burundi'),
    ('CB','KH','Cambodia'),
    ('CM','CM','Cameroon'),
    ('CA','CA','Canada'),
    ('CV','CV','Cape Verde'),
    ('CJ','KY','Cayman Islands'),
    ('CT','CF','Central African Republic'),
    ('CD','TD','Chad'),
    ('CI','CL','Chile'),
    ('CH','CN','China'),
    ('KT','CX','Christmas Island'),
    ('IP','PF','Clipperton Island'),
    ('CK','CC','Cocos (Keeling) Islands'),
    ('CO','CO','Colombia'),
    ('CN','KM','Comoros'),
    ('CG','CD','Congo, Democratic Republic of the'),
    ('CF','CG','Congo, Republic of the'),
    ('CW','CK','Cook Islands'),
    ('CR','AU','Coral Sea Islands'),
    ('CS','CR','Costa Rica'),
    ('IV','CI','Cote d\'Ivoire'),
    ('HR','HR','Croatia'),
    ('CU','CU','Cuba'),
    ('CY','CY','Cyprus'),
    ('EZ','CZ','Czech Republic'),
    ('DA','DK','Denmark'),
    ('DJ','DJ','Djibouti'),
    ('DO','DM','Dominica'),
    ('DR','DO','Dominican Republic'),
    ('TT','TL','East Timor'),
    ('EC','EC','Ecuador'),
    ('EG','EG','Egypt'),
    ('ES','SV','El Salvador'),
    ('EK','GQ','Equatorial Guinea'),
    ('ER','ER','Eritrea'),
    ('EN','EE','Estonia'),
    ('ET','ET','Ethiopia'),
    ('EU','RE','Europa Island'),
    ('FA','FK','Falkland Islands (Islas Malvinas)'),
    ('FO','FO','Faroe Islands'),
    ('FJ','FJ','Fiji'),
    ('FI','FI','Finland'),
    ('FR','FR','France'),
    ('FG','GF','French Guiana'),
    ('FP','PF','French Polynesia'),
    ('FS','TF','French Southern and Antarctic Lands'),
    ('GB','GA','Gabon'),
    ('GA','GM','Gambia, The'),
    ('GZ','PS','Gaza Strip'),
    ('GG','GE','Georgia'),
    ('GM','DE','Germany'),
    ('GH','GH','Ghana'),
    ('GI','GI','Gibraltar'),
    ('GO','RE','Glorioso Islands'),
    ('GR','GR','Greece'),
    ('GL','GL','Greenland'),
    ('GJ','GD','Grenada'),
    ('GP','GP','Guadeloupe'),
    ('GQ','GU','Guam'),
    ('GT','GT','Guatemala'),
    ('GK','GB','Guernsey'),
    ('GV','GN','Guinea'),
    ('PU','GW','Guinea-Bissau'),
    ('GY','GY','Guyana'),
    ('HA','HT','Haiti'),
    ('HM','HM','Heard Island and McDonald Islands'),
    ('VT','VA','Holy See (Vatican City)'),
    ('HO','HN','Honduras'),
    ('HK','HK','Hong Kong'),
    ('HQ','UM','Howland Island'),
    ('HU','HU','Hungary'),
    ('IC','IS','Iceland'),
    ('IN','IN','India'),
    ('ID','ID','Indonesia'),
    ('IR','IR','Iran'),
    ('IZ','IQ','Iraq'),
    ('EI','IE','Ireland'),
    ('IS','IL','Israel'),
    ('IT','IT','Italy'),
    ('JM','JM','Jamaica'),
    ('JN','SJ','Jan Mayen'),
    ('JA','JP','Japan'),
    ('DQ','UM','Jarvis Island'),
    ('JE','GB','Jersey'),
    ('JQ','UM','Johnston Atoll'),
    ('JO','JO','Jordan'),
    ('JU','RE','Juan de Nova Island'),
    ('KZ','KZ','Kazakhstan'),
    ('KE','KE','Kenya'),
    ('KQ','UM','Kingman Reef'),
    ('KR','KI','Kiribati'),
    ('KN','KP','Korea, North'),
    ('KS','KR','Korea, South'),
    ('KU','KW','Kuwait'),
    ('KG','KG','Kyrgyzstan'),
    ('LA','LA','Laos'),
    ('LG','LV','Latvia'),
    ('LE','LB','Lebanon'),
    ('LT','LS','Lesotho'),
    ('LI','LR','Liberia'),
    ('LY','LY','Libya'),
    ('LS','LI','Liechtenstein'),
    ('LH','LT','Lithuania'),
    ('LU','LU','Luxembourg'),
    ('MC','MO','Macau'),
    ('MK','MK','Macedonia'),
    ('MA','MG','Madagascar'),
    ('MI','MW','Malawi'),
    ('MY','MY','Malaysia'),
    ('MV','MV','Maldives'),
    ('ML','ML','Mali'),
    ('MT','MT','Malta'),
    ('IM','GB','Man, Isle of'),
    ('RM','MH','Marshall Islands'),
    ('MB','MQ','Martinique'),
    ('MR','MR','Mauritania'),
    ('MP','MU','Mauritius'),
    ('MF','YT','Mayotte'),
    ('MX','MX','Mexico'),
    ('FM','FM','Micronesia, Federated States of'),
    ('MQ','UM','Midway Islands'),
    ('MD','MD','Moldova'),
    ('MN','MC','Monaco'),
    ('MG','MN','Mongolia'),
    ('MH','MS','Montserrat'),
    ('MO','MA','Morocco'),
    ('MZ','MZ','Mozambique'),
    ('BM','MM','Myanmar'),
    ('WA','NA','Namibia'),
    ('NR','NR','Nauru'),
    ('BQ','UM','Navassa Island'),
    ('NP','NP','Nepal'),
    ('NL','NL','Netherlands'),
    ('NT','AN','Netherlands Antilles'),
    ('NC','NC','New Caledonia'),
    ('NZ','NZ','New Zealand'),
    ('NU','NI','Nicaragua'),
    ('NG','NE','Niger'),
    ('NI','NG','Nigeria'),
    ('NE','NU','Niue'),
    ('NF','NF','Norfolk Island'),
    ('CQ','MP','Northern Mariana Islands'),
    ('NO','NO','Norway'),
    ('MU','OM','Oman'),
    ('PK','PK','Pakistan'),
    ('PS','PW','Palau'),
    ('LQ','UM','Palmyra Atoll'),
    ('PM','PA','Panama'),
    ('PP','PG','Papua New Guinea'),
    ('PA','PY','Paraguay'),
    ('PE','PE','Peru'),
    ('RP','PH','Philippines'),
    ('PC','PN','Pitcairn Islands'),
    ('PL','PL','Poland'),
    ('PO','PT','Portugal'),
    ('RQ','PR','Puerto Rico'),
    ('QA','QA','Qatar'),
    ('RE','RE','Reunion'),
    ('RO','RO','Romania'),
    ('RS','RU','Russia'),
    ('RW','RW','Rwanda'),
    ('SH','SH','Saint Helena'),
    ('SC','KN','Saint Kitts and Nevis'),
    ('ST','LC','Saint Lucia'),
    ('SB','PM','Saint Pierre and Miquelon'),
    ('VC','VC','Saint Vincent and the Grenadines'),
    ('WS','WS','Samoa'),
    ('SM','SM','San Marino'),
    ('TP','ST','Sao Tome and Principe'),
    ('SA','SA','Saudi Arabia'),
    ('SG','SN','Senegal'),
    ('YI','CS','Serbia and Montenegro'),
    ('SE','SC','Seychelles'),
    ('SL','SL','Sierra Leone'),
    ('SN','SG','Singapore'),
    ('LO','SK','Slovakia'),
    ('SI','SI','Slovenia'),
    ('BP','SB','Solomon Islands'),
    ('SO','SO','Somalia'),
    ('SF','ZA','South Africa'),
    ('SX','GS','South Georgia and the Islands'),
    ('SP','ES','Spain'),
    ('CE','LK','Sri Lanka'),
    ('SU','SD','Sudan'),
    ('NS','SR','Suriname'),
    ('SV','SJ','Svalbard'),
    ('WZ','SZ','Swaziland'),
    ('SW','SE','Sweden'),
    ('SZ','CH','Switzerland'),
    ('SY','SY','Syria'),
    ('TW','TW','Taiwan'),
    ('TI','TJ','Tajikistan'),
    ('TZ','TZ','Tanzania'),
    ('TH','TH','Thailand'),
    ('TO','TG','Togo'),
    ('TL','TK','Tokelau'),
    ('TN','TO','Tonga'),
    ('TD','TT','Trinidad and Tobago'),
    ('TE','UM','Tromelin Island'),
    ('TS','TN','Tunisia'),
    ('TU','TR','Turkey'),
    ('TX','TM','Turkmenistan'),
    ('TK','TC','Turks and Caicos Islands'),
    ('TV','TV','Tuvalu'),
    ('UG','UG','Uganda'),
    ('UP','UA','Ukraine'),
    ('AE','AE','United Arab Emirates'),
    ('UK','GB','United Kingdom'),
    ('US','US','United States'),
    ('UY','UY','Uruguay'),
    ('UZ','UZ','Uzbekistan'),
    ('NH','VU','Vanuatu'),
    ('VE','VE','Venezuela'),
    ('VM','VN','Vietnam'),
    ('VQ','VI','Virgin Islands'),
    ('WQ','UM','Wake Island'),
    ('WF','WF','Wallis and Futuna'),
    ('WE','PS','West Bank'),
    ('WI','EH','Western Sahara'),
    ('YM','YE','Yemen'),
    ('ZA','ZM','Zambia'),
    ('ZI','ZW','Zimbabwe');
    
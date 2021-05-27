CREATE TABLE "dba"."member" ("id" char(20) NOT NULL DEFAULT NULL, "name" char(10) DEFAULT NULL, "sex" char(2) DEFAULT NULL, "birth" date DEFAULT NULL, "party" char(10) DEFAULT NULL, "branch" varchar(100) DEFAULT NULL, "adress" varchar(100) DEFAULT NULL, "telephone" varchar(20) DEFAULT NULL, "photo" long binary DEFAULT NULL , PRIMARY KEY ("id")) ;
insert into "dba".pbcattbl (pbt_tnam, pbt_ownr, pbd_fhgt, pbd_fwgt, pbd_fitl, pbd_funl, pbd_fchr, pbd_fptc, pbd_ffce, pbh_fhgt, pbh_fwgt, pbh_fitl, pbh_funl, pbh_fchr, pbh_fptc, pbh_ffce, pbl_fhgt, pbl_fwgt, pbl_fitl, pbl_funl, pbl_fchr, pbl_fptc, pbl_ffce, pbt_cmnt) values ('member', 'dba', -12, 400, 'N', 'N', 134, 33, 'System', -12, 400, 'N', 'N', 134, 33, 'System', -12, 400 , 'N', 'N', 134, 33, 'System', '') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'id', 'id��', 23 , 'id', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'name', 'name��', 23 , 'name', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'sex', 'sex��', 23 , 'sex', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'birth', 'birth��', 23 , 'birth', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'party', 'party��', 23 , 'party', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'branch', 'branch��', 23 , 'branch', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'address', 'address��', 23 , 'address', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'telephone', 'telephone��', 23 , 'telephone', 25, 25 , 0 , 0 , 0 , 'N') ;
insert into "dba".pbcatcol (pbc_tnam, pbc_ownr, pbc_cnam, pbc_labl, pbc_lpos, pbc_hdr, pbc_hpos, pbc_jtfy, pbc_case, pbc_hght, pbc_wdth, pbc_bmap) values ('member', 'dba', 'photo', 'photo��', 23 , 'photo', 25, 25 , 0 , 0 , 0 , 'N') ;

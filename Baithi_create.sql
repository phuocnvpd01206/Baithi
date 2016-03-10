-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:00:02.246




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int  NOT NULL,
    TenNV varchar(50)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    Gioitinh char(50)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    Maphong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong int  NOT NULL,
    Tenphong varchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.


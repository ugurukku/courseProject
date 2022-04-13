

use kurs

create table telimciStatus(
status_id bit primary key,
status_ad nvarchar(20)
)

create table paket(
paket_id int primary key,
paket_ad nvarchar(30)
)
create table bolme(
bolme_id int primary key,
bolme_ad nvarchar(30)
)
create table movzu(
movzu_id int primary key,
movzu_ad nvarchar(35)
)
create table telimciIxtisas(
ixtisas_id int primary key,
ixtisas_ad nvarchar(35)
)

create table telimci(
 telimci_id int primary key,
 telimci_fin char(6),
 telimci_ad nvarchar(25),
 telimci_soyad nvarchar(25),
 telimci_tevellud date,
 telimci_ixtisas int foreign key references telimciIxtisas(ixtisas_id),
 telimci_status bit foreign key references telimciStatus(status_id),
 telimci_muqavile date
)
create table video(
video_id int primary key,
videoPaket_id int foreign key references paket(paket_id),
videoMovzu_id int foreign key references movzu(movzu_id),
videoBolme_id int foreign key references bolme(bolme_id),
videoTelimci_id int foreign key references telimci(telimci_id),
video_link varchar(max)
)

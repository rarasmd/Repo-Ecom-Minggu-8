 CREATE TRIGGER tb_hapus_menu AFTER DELETE ON tb_produk FOR EACH ROW
 BEGIN
 INSERT INTO tb_hapus_menu(
 id_menu,
 nama_produk,
 harga,
 stok,
 date_delete,
 nama_user )
 VALUES
 ( OLD.id_menu,
 OLD.nama_produk,
 OLD.harga,
 OLD.stok,
 SYSDATE(),
 CURRENT_USER );
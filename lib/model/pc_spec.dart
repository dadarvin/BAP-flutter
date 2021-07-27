class PCSpec {
  String jenis;
  String gambar;
  String cpu;
  String vga;
  String ram;
  String storage;


  PCSpec({
    required this.jenis,
    required this.gambar,
    required this.cpu,
    required this.vga,
    required this.ram,
    required this.storage,
  });
}

var PCRecommendList = [
  PCSpec(
    jenis: 'Low Tier PC',
      gambar: 'images/lowtier.jpg',
      cpu: 'AMD Ryzen 5 3600' ,
      vga: 'NVIDIA Geforce 1050 TI 4 Gb',
      ram: '16 GB',
      storage: 'HDD 2 TB'),
  PCSpec(
    jenis: 'Mid Tier PC',
      gambar: 'images/midtier.jpg',
      cpu: 'AMD Ryzen 7 3700X' ,
      vga: 'NVIDIA Geforce RTX 2060 6GB',
      ram: '16 GB',
      storage: 'SSD 1 TB'),
  PCSpec(
    jenis: 'High Tier PC',
      gambar: 'images/hightier.jpg',
      cpu: 'Intel Core i9-10900k' ,
      vga: 'NVIDIA Geforce RTX 3080',
      ram: '32 GB',
      storage: 'SSD 2 TB'),
];
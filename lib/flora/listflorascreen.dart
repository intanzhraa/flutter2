import 'package:belajar_flutter/flora/listflorascreen.dart';
import 'package:belajar_flutter/flora/detailflora.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListFloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "Anggrek Hitam (Coelogyne Pandurata)",
      "asal": "Kalimantan dan Papua.",
      "image": "assets/img/anggrekhitam.jpg",
      "desc":
          "Anggrek hitam (Coelogyne pandurata) adalah spesies anggrek yang tumbuh di Semenanjung Malaya, Kalimantan, dan Sumatra. Anggrek hitam adalah maskot flora Provinsi Kalimantan Timur. Saat ini, habitat asli anggrek hitam mengalami penurunan jumlah yang cukup besar karena semakin menyusutnya luas hutan di Kalimantan namun masih bisa ditemukan di Cagar Alam Kersik Luway dalam jumlah yang sedikit. Diperkirakan jumlah yang lebih banyak berada di tangan para kolektor anggrek",
    },
    {
      "nama": "Bunga Edelweis Jawa",
      "asal": "lereng Gunung Gede, Jawa Barat",
      "image": "assets/img/edelweisjawa.jpg",
      "desc":
          "Anaphalis javanica, yang dikenal sebagai Edelweiss jawa (Javanese edelweiss) atau Bunga Senduro, adalah tumbuhan endemik zona alpina/montana di berbagai pegunungan tinggi di Indonesia yang saat ini dikategorikan sebagai tumbuhan langka. Tumbuhan ini dapat mencapai ketinggian 8 meter dan dapat memiliki batang sebesar kaki manusia, walaupun pada umumnya tidak melebihi 1 meter. ",
    },
    {
      "nama": "Padma raksasa",
      "asal": "Borneo dan Sumatra",
      "image": "assets/img/padmaraksasa.jpg",
      "desc":
          "Padma raksasa (bahasa Latin: Rafflesia arnoldii) adalah tumbuhan parasit obligat yang terkenal karena memiliki bunga berukuran sangat besar, bahkan merupakan bunga terbesar di dunia ke-1[butuh rujukan]. Bunga Rafflesia dikatakan bunga yang unik karena hanya berupa bunga mekar tanpa daun, akar dan tidak memiliki batang. Rafflesia memiliki jaringan yang mirip seperti fungsi akar yang disebut haustarium. Selain itu, Rafflesia tumbuh dan bergantung pada inang di jaringan tumbuhan merambat (liana) Tetrastigma dan tidak memiliki daun sehingga tidak mampu berfotosintesis. Tumbuhan inang yang akan membantu Raflessia untuk berfotosintesis. ",
    },
    {
      "nama": "Kamboja",
      "asal": "Amerika Tengah",
      "image": "assets/img/kamboja.jpg",
      "desc":
          "Kemboja, kamboja, atau semboja adalah sekelompok tumbuhan dalam genus Plumeria. Bentuknya berupa pohon kecil dengan daun jarang namun tebal. Bunganya yang harumnya sangat khas, dengan mahkota berwarna putih hingga merah keunguan, biasanya lima helai. Bunga dengan empat atau enam helai mahkota bunga oleh masyarakat tertentu dianggap memiliki kekuatan gaib. Jenis akarnya serabut dan tekstur bunganya tidak terlalu kasar dan tidak terlalu halus.",
    },
    {
      "nama": "melati",
      "asal": "Asia selatan",
      "image": "assets/img/melati.jpg",
      "desc":
          "Melati (Jasminum ) merupakan tanaman bunga hias berupa perdu berbatang tegak yang hidup menahun. Melati merupakan genus dari semak dan tanaman merambat dalam keluarga zaitun (Oleaceae). Terdiri dari sekitar 200 spesies tumbuhan asli daerah beriklim tropis dan hangat dari Eurasia, Australasia dan Oseania, melati secara luas dibudidayakan untuk aroma khas bunganya yang harum. Di Indonesia, salah satu jenis melati telah dipilih menjadi puspa bangsa atau bunga simbol nasional yaitu melati putih (Jasminum sambac), karena bunga ini melambangkan kesucian dan kemurnian, serta dikaitkan dengan berbagai tradisi dari banyak suku di negara ini. Bunga ini merupakan bagian yang tidak terpisahkan dari hiasan rambut pengantin perempuan dalam upacara perkawinan berbagai suku di Indonesia, terutama suku Jawa dan Sunda. Jenis lain yang juga populer adalah melati gambir (J. officinale). Di Indonesia nama melati dikenal oleh masyarakat di seluruh wilayah Nusantara. Nama-nama daerah untuk melati adalah Menuh (Bali), Meulu atau Riwat (Aceh),[2] Menyuru (Banda), Melur (Gayo dan Batak Karo), Manduru (Menado), Mundu (Bima dan Sumbawa) dan Manyora (Timor), Melati Salam (UMI), Malete (Madura) serta Beruq-beruq (Mandar). ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: floraData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailListFloraScreen(
                      nama: floraData[index]["nama"],
                      asal: floraData[index]["asal"],
                      image: floraData[index]["image"],
                      desc: floraData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${floraData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "${floraData[index]["nama"]} - ${floraData[index]["asal"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIODATA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BIODATA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _dataBio ({
    required IconData icon,
    required String title,
    required String title1,
  }) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: const Color.fromARGB(255, 134, 134, 134),
          ),
          const SizedBox(width: 15),

          Expanded(
            flex: 2,
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 100,
                    child: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ),
                
                Expanded(
                  child: Text(
                    title1,
                    style: const TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
                  )
                )
              ],
            )
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Header
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 27, 28, 28),
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white
          ),
        ),
      ),
      //Header End

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 27, 28, 28)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tentang Saya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              
            )
          ],
        ),
      ),
      
      body: Expanded(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                //Identitas
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 25,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/BG.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Image(
                            height: 180,
                            image: AssetImage('images/Arma.jpg'),
                          ),
                          
                          SizedBox(height: 20),
                          Text(
                            'I Kadek Arma Saputra',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: Divider(
                              thickness: 2,
                              color: Color.fromARGB(255, 97, 96, 96),
                            ),
                          ),

                          SizedBox(height: 10),
                          Text(
                            '42230013',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),

                          Text(
                            'Fakultas Teknik dan Informatika | Teknologi Informasi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    )
                  ),
                ),
                //Identitas End

                //Tentang Saya | Bio | Kemampuan
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    bottom: 30,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),

                    // Tentang Saya_atas | Bio_tengah | kemampuan_bawah
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth < 600) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                // Tentang Saya_atas
                                const Text(
                                  'Tentang Saya',
                                  style: TextStyle(fontSize: 24),
                                ),
                                const Divider(),
                                const SizedBox(height: 30),
                                const Text('Saya adalah seorang mahasiswa yang masih menempuh pendidikan S1 di Universitas Pendidikan Nasional Denpasar,'
                                      ' lahir dan besar di Denpasar, Bali. Berusia 20 tahun, saya memiliki latar belakang pendidikan dari SMA 5 Denpasar.'
                                      ' Selama perjalanan akademik dan pengalaman organisasi, saya telah mengembangkan beberapa keterampilan yang membantu saya untuk terus tumbuh dalam berbagai lingkungan.'
                                      ' Sebagai seorang pemimpin, saya mampu memotivasi dan mengarahkan tim menuju tujuan yang jelas'
                                      ' Kemampuan beradaptasi saya memungkinkan saya untuk adaptasi dengan baik di situasi yang berubah-ubah,'
                                      ' Selain itu, saya sangat terorganisir dengan kemampuan manajemen waktu yang kuat, memastikan bahwa setiap tanggung jawab saya diselesaikan secara optimal dan tepat waktu.',
                                      textAlign: TextAlign.justify,
                                      ),
                                
                                // Bio_Tengah
                                const SizedBox(height: 40),
                                const Text(
                                  'Bio',
                                  style: TextStyle(fontSize: 24),
                                ),
                                const Divider(),
                                const SizedBox(height: 30),
                                _dataBio(icon: Icons.calendar_month, title: 'Age', title1: '20'),
                                _dataBio(icon: Icons.cake, title: 'Birthday', title1: '11 Mei 2004'),
                                _dataBio(icon: Icons.email, title: 'Email', title1: 'armasaputra3@gmail.com'),
                                _dataBio(icon: Icons.phone, title: 'Phone', title1: '+6282340735837'),
                                _dataBio(icon: Icons.location_on, title: 'Address', title1: 'Jl. Pendidikan No.11A, Sidakarya, Denpasar Selatan'),

                                //Kemampuan_bawah
                                const SizedBox(height: 40,),
                                const Text(
                                  'Kemampuan',
                                  style: TextStyle(fontSize: 24),
                                ),
                                const Divider(),
                                const SizedBox(height: 30,),
                                _dataBio(icon: Icons.star, title: 'Kemampuan Adaptasi', title1: ''),
                                _dataBio(icon: Icons.star, title: 'Kemampuan Kepemimpinan', title1: ''),
                                _dataBio(icon: Icons.star, title: 'Kemampuan Manajemen Waktu', title1: ''),
                              ],
                            );
                          } else {

                            // Tentang Saya_kiri | Bio_tengah | Kemampuan_kanan
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //tentang Saya_kiri
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Tentang Saya',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Divider(),
                                      SizedBox(height: 30),
                                      Text(' Saya adalah seorang mahasiswa yang masih menempuh pendidikan S1 di Universitas Pendidikan Nasional Denpasar,'
                                      ' lahir dan besar di Denpasar, Bali. Berusia 20 tahun, saya memiliki latar belakang pendidikan dari SMA 5 Denpasar.'
                                      ' Selama perjalanan akademik dan pengalaman organisasi, saya telah mengembangkan beberapa keterampilan yang membantu saya untuk terus tumbuh dalam berbagai lingkungan.'
                                      ' Sebagai seorang pemimpin, saya mampu memotivasi dan mengarahkan tim menuju tujuan yang jelas'
                                      ' Kemampuan beradaptasi saya memungkinkan saya untuk adaptasi dengan baik di situasi yang berubah-ubah,'
                                      ' Selain itu, saya sangat terorganisir dengan kemampuan manajemen waktu yang kuat, memastikan bahwa setiap tanggung jawab saya diselesaikan secara optimal dan tepat waktu.',
                                      textAlign: TextAlign.justify,),
                                    ],
                                  ),
                                ),

                                //Bio_tengah
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Bio',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        const Divider(),
                                        const SizedBox(height: 30),
                                        _dataBio(icon: Icons.calendar_month, title: 'Umur', title1: '20'),
                                        _dataBio(icon: Icons.cake, title: 'Ulang Tahun', title1: '11 Mei 2004'),
                                        _dataBio(icon: Icons.email, title: 'Email', title1: 'armasaputra3@gmail.com'),
                                        _dataBio(icon: Icons.phone, title: 'No. HP', title1: '+6282340735837'),
                                        _dataBio(icon: Icons.location_on, title: 'Alamat', title1: 'Jl. Pendidikan No.11A, Sidakarya, Denpasar Selatan'),
                                      ],
                                    ),
                                  ),
                                ),

                                //Kemampuan_kanan
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Kemampuan',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        const Divider(),
                                        const SizedBox(height: 30,),
                                        _dataBio(icon: Icons.star, title: 'Kemampuan Adaptasi', title1: ''),
                                        _dataBio(icon: Icons.star, title: 'Kemampuan Kepemimpinan', title1: ''),
                                        _dataBio(icon: Icons.star, title: 'Kemampuan Manajemen Waktu', title1: ''),
                                      ],
                                    ),
                                  )
                                )
                              ],
                            );
                          }
                        },
                      ),
                    ),
                  ),
                )
                //Tentang saya | Bio End
              ],
            ),
          ),
        ),
      ),
    );
  }
}
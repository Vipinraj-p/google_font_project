import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Google Fonts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const kheight = SizedBox(
  height: 10,
);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.style_rounded, color: Colors.deepPurple[700]),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: GoogleFonts.cinzel(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
        child: ListView(
          children: [
            kheight,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Google Fonts is a Flutter package to use fonts from   ',
                      style: GoogleFonts.agdasima(color: Colors.black)),
                  TextSpan(
                      text: 'fonts.google.com.',
                      style: GoogleFonts.ubuntu(
                          color: Colors.blue,
                          textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          launchUrl(Uri.parse('https://fonts.google.com/'));
                        })
                ],
              ),
            ),
            kheight,
            Divider(),
            kheight,
            Text(
              'Example Fonts',
              style: GoogleFonts.ubuntu(
                  color: Colors.deepPurple[700],
                  textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  )),
            ),
            kheight,
            kheight,
            Text('ABeeZee', style: GoogleFonts.aBeeZee()),
            kheight,
            Text('ADLaM Display', style: GoogleFonts.aDLaMDisplay()),
            kheight,
            Text('Aleo', style: GoogleFonts.aleo()),
            kheight,
            Text('Allan', style: GoogleFonts.allan()),
            kheight,
            Text('Andika', style: GoogleFonts.andika()),
            kheight,
            Text('Aref Ruqaa Ink', style: GoogleFonts.arefRuqaaInk()),
            kheight,
            Text('Asap Condensed', style: GoogleFonts.asapCondensed()),
            kheight,
            Text('Averia Sans Libre', style: GoogleFonts.averiaSansLibre()),
            kheight,
            Text('BIZ UDPMincho', style: GoogleFonts.bizUDPMincho()),
            kheight,
            Text('Bad Script', style: GoogleFonts.badScript()),
            kheight,
            Text('Bakbak One', style: GoogleFonts.bakbakOne()),
            kheight,
            Text('Baloo Bhaijaan 2', style: GoogleFonts.balooBhaijaan2()),
            kheight,
            Text('Barlow Semi Condensed',
                style: GoogleFonts.barlowSemiCondensed()),
            kheight,
            Text('Bellefair', style: GoogleFonts.bellefair()),
            kheight,
            Text('Berkshire Swash', style: GoogleFonts.berkshireSwash()),
            kheight,
            Text('Big Shoulders Inline Text',
                style: GoogleFonts.bigShouldersInlineText()),
            kheight,
            Text('Brawler', style: GoogleFonts.brawler()),
            kheight,
            Text('Bungee Hairline', style: GoogleFonts.bungeeHairline()),
            kheight,
            Text('Cagliostro', style: GoogleFonts.cagliostro()),
            kheight,
            Text('Carrois Gothic', style: GoogleFonts.carroisGothic()),
            kheight,
            Text('Charmonman', style: GoogleFonts.charmonman()),
            kheight,
            Text('Cinzel', style: GoogleFonts.cinzel()),
            kheight,
            Text('Commissioner', style: GoogleFonts.commissioner()),
            kheight,
            Text('Darker Grotesque', style: GoogleFonts.darkerGrotesque()),
            kheight,
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  String IpfsUrl = "";
  Future<void> uploadToPinata() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile == null) return;

    final file = File(pickedFile.path);

    // Replace YOUR_PINATA_API_KEY and YOUR_PINATA_SECRET_API_KEY with your API keys
    final uri = Uri.parse('https://api.pinata.cloud/pinning/pinFileToIPFS');
    final request = http.MultipartRequest('POST', uri)
      ..headers.addAll({
        'pinata_api_key': '4b195cf7c465832b6caa',
        'pinata_secret_api_key':
            '2fedab0a6381efcc5347e2b5d05c4288de16e45254beed845d23f4be317a5e67'
      })
      ..files.add(await http.MultipartFile.fromPath('file', file.path));

    final response = await request.send();

    if (response.statusCode == 200) {
      final responseData = await response.stream.bytesToString();
      final decodedData = jsonDecode(responseData);

      final ipfsUrl = decodedData['IpfsHash'];
      setState(() {
        IpfsUrl = ipfsUrl;
      });
      print('Image uploaded to Pinata. IPFS URL: $ipfsUrl');
    } else {
      print(
          'Error uploading image to Pinata. Status code: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    uploadToPinata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Post"),
      ),
      body: Container(
        child: IpfsUrl == ''
            ? Text("Loading...")
            : Image.network('https://gateway.pinata.cloud/ipfs/$IpfsUrl'),
        // child: Text('https://gateway.pinata.cloud/ipfs/$IpfsUrl'),
      ),
    );
  }
}

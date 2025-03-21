import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:path_drawing/path_drawing.dart';

class LovableLogo extends StatelessWidget {
  final double height;
  final double width;
  const LovableLogo({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _HeartClipper(),
      child: SizedBox(
        height: height,
        width: width,
        child: AnimatedMeshGradient(
          colors: const [
            Color.fromARGB(255, 175, 12, 47),
            Color.fromARGB(255, 245, 255, 45),
            Color.fromARGB(255, 70, 253, 247),
            Color.fromARGB(255, 22, 27, 64),
          ],
          options: AnimatedMeshGradientOptions(speed: 2.5),
        ),
      ),
    );
  }
}

class _HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final String svgPathData =
        'M50.8605 22.0171C31.5698 30.8455 17.4419 51.8565 17.4419 76.9091C17.4419 102.497 27.907 122.227 42.8837 139.139C55.2442 153.068 70.1977 164.622 84.7791 175.873C88.2519 178.552 91.6822 181.223 95.0698 183.886C101.186 188.72 106.64 192.947 111.907 196.034C117.174 199.12 121.395 200.518 125 200.518C128.605 200.518 132.837 199.12 138.093 196.034C143.36 192.947 148.814 188.72 154.93 183.886C158.318 181.215 161.748 178.548 165.221 175.885C179.802 164.61 194.756 153.068 207.116 139.139C222.105 122.227 232.558 102.497 232.558 76.9091C232.558 51.8682 218.43 30.8455 199.14 22.0171C180.395 13.4333 155.209 15.7045 131.279 40.6172C130.466 41.4627 129.49 42.1351 128.411 42.5944C127.333 43.0537 126.172 43.2904 125 43.2904C123.828 43.2904 122.667 43.0537 121.589 42.5944C120.51 42.1351 119.534 41.4627 118.721 40.6172C94.7907 15.7045 69.6047 13.4333 50.8605 22.0171ZM125 22.4364C98.1163 -1.67276 68.0116 -5.05037 43.6047 6.11904C17.8605 17.9407 0 45.3343 0 76.9207C0 107.96 12.907 131.65 29.8488 150.751C43.407 166.043 60 178.843 74.6628 190.141C77.9961 192.703 81.1977 195.195 84.2674 197.618C90.2326 202.323 96.6279 207.331 103.105 211.128C109.581 214.925 116.977 218 125 218C133.023 218 140.419 214.914 146.895 211.128C153.384 207.331 159.767 202.323 165.733 197.618C168.802 195.195 172.004 192.703 175.337 190.141C189.988 178.843 206.593 166.031 220.151 150.751C237.093 131.65 250 107.96 250 76.9207C250 45.3343 232.151 17.9407 206.395 6.14233C181.988 -5.03872 151.884 -1.66111 125 22.4364Z';
    final Path path = parseSvgPathData(svgPathData);
    return path;
  }

  @override
  bool shouldReclip(_HeartClipper oldClipper) => false;
}

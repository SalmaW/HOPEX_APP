import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_paths.dart';

class CompLogo{
  //final String Logo;
  static  Image coca =Image.asset("${AppPaths.main_path}coca.png") ;
  static Image mu =Image.asset("${AppPaths.main_path}MU.png");
  static Image nestle =Image.asset("${AppPaths.main_path}Nestle.png");
  //CompLogo( this.Logo);

 // static List <CompLogo> compLogo=[
 //   CompLogo("${AppPaths.Image_path}coca.png"),
 //   CompLogo("${AppPaths.Image_path}MU.png"),
 //   CompLogo("${AppPaths.Image_path}Nestle.png"),
 // ];
static List compLogo= [coca , mu , nestle];

}
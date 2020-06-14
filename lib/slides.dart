import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Antes de tudo, vamos te passar, algumas informações.");
  sliderModel.setImageAssetPath("assets/tutorial1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Para você coletar seus ponto, é bem simples, é só dormir!! Genial não?");
  sliderModel.setImageAssetPath("assets/tutorial2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Coloque seu relógio no pulso.");
  sliderModel.setImageAssetPath("assets/tutorial3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel.setDesc("Conecte seu relório MI Band e comece a ganhar pontos.");
  sliderModel.setImageAssetPath("assets/tutorial4.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //5
  sliderModel.setDesc("Se não tiver o relógio, leia o QR Code");
  sliderModel.setImageAssetPath("assets/tutorial5.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
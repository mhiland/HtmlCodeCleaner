# HtmlCodeCleaner
#
# This class has a single dictionary of html code and its corresponding symbol. 
# The code takes a string as input, and removes any html code and inserts the corresponding symbol.
# The output is a string.
#
class HtmlCodeCleaner
  # removes character codes from string
  # must be defined in the dictionary
  def self.clean_string(string)
    if (string != nil)
      # This is the dictionary containing the html code and it's replacement symbol.
      dict = [	['&#33;',"!"],
		['&#34;','"'],
		['&#35;','#'],
		['&#36;',"$"],
		['&#37;',"%"],
		['&#38;',"&"],
		['&#39;',"'"],
		['&#40;',"("],
		['&#41;',")"],
		['&#42;',"*"],
		['&#43;',"+"],
		['&#44;',","],
		['&#45;',"-"],
		['&#46;',"0"],
		['&#47;',"/"],
		['&#48;',"0"],
		['&#49;',"1"],
		['&#50;',"2"],
		['&#51;',"3"],
		['&#52;',"4"],
		['&#53;',"5"],
		['&#54;',"6"],
		['&#55;',"7"],
		['&#56;',"8"],
		['&#57;',"9"],
		['&#58;',":"],
		['&#59;',";"],
		['&#60;',"<"],
		['&#61;',"="],
		['&#62;',">"],
		['&#63;',"?"],
		['&#64;',"@"],
		['&#65;',"A"],	['&#97;',"a"],
		['&#66;',"B"],	['&#98;',"b"],
		['&#67;',"C"],	['&#99;',"c"],
		['&#68;',"D"],	['&#100;',"d"],
		['&#69;',"E"],	['&#101;',"e"],
		['&#70;',"F"],	['&#102;',"f"],
		['&#71;',"G"],	['&#103;',"g"],
		['&#72;',"H"],	['&#104;',"h"],
		['&#73;',"I"],	['&#105;',"i"],
		['&#74;',"J"],	['&#106;',"j"],
		['&#75;',"K"],	['&#107;',"k"],
		['&#76;',"L"],	['&#108;',"l"],
		['&#77;',"M"],	['&#109;',"m"],
		['&#78;',"N"],	['&#110;',"n"],
		['&#79;',"O"],	['&#111;',"o"],
		['&#80;',"P"],	['&#112;',"p"],
		['&#81;',"Q"],	['&#113;',"q"],
		['&#82;',"R"],	['&#114;',"r"],
		['&#83;',"S"],	['&#115;',"s"],
		['&#84;',"T"],	['&#116;',"t"],
		['&#85;',"U"],	['&#117;',"u"],
		['&#86;',"V"],	['&#118;',"v"],
		['&#87;',"W"],	['&#119;',"w"],
		['&#88;',"X"],	['&#120;',"x"],
		['&#89;',"Y"],	['&#121;',"y"],
		['&#90;',"Z"],	['&#122;',"z"],
		['&#91;',"["],
		['&#92;','\ '],
		['&#93;',"]"],
		['&#94;',"^"],
		['&#95;',"_"],
		['&#96;',"`"],
		['&#123;',"{"],
		['&#124;',"|"],
		['&#125;',"}"],
		['&#126;',"~"],
		['&#128;',"€"],
		['&#129;'," "],
		['&#130;',"‚"],
		['&#131;',"ƒ"],
		['&#132;',"„"],
		['&#133;',"…"],
		['&#134;',"†"],
		['&#135;',"‡"],
		['&#136;',"ˆ"],
		['&#137;',"‰"],
		['&#138;',"Š"],
		['&#139;',"‹"],
		['&#140;',"Œ"],
		['&#141;'," "],
		['&#142;',"Ž"],
		['&#143;'," "],
		['&#144;'," "],
		['&#145;',"‘"],
		['&#146;',"’"],
		['&#147;','"'],
		['&#148;',"”"],
		['&#149;',"•"],
		['&#150;',"–"],
		['&#151;',"—"],
		['&#152;',"˜"],
		['&#153;',"™"],
		['&#154;',"š"],
		['&#155;',"›"],
		['&#156;',"œ"],
		['&#157;'," "],
		['&#158;',"ž"],
		['&#159;',"Ÿ"],
		['&#160;'," "],
		['&#161;',"¡"],
		['&#162;',"¢"],
		['&#163;',"£"],
		['&#164;',"¤"],
		['&#165;',"¥"],
		['&#166;',"¦"],
		['&#167;',"§"],
		['&#168;',"¨"],
		['&#169;',"©"],
		['&#170;',"ª"],
		['&#171;',"«"],
		['&#172;',"¬"],
		['&#173;',""],
		['&#174;',"®"],
		['&#175;',"¯"],
		['&#176;',"°"],
		['&#177;',"±"],
		['&#178;',"²"],
		['&#179;',"³"],
		['&#180;',"´"],
		['&#181;',"µ"],
		['&#182;',"¶"],
		['&#183;',"·"],
		['&#184;',"¸"],
		['&#185;',"¹"],
		['&#186;',"º"],
		['&#187;',"»"],
		['&#188;',"¼"],
		['&#189;',"½"],
		['&#190;',"¾"],
		['&#191;',"¿"],
		['&#192;',"À"],
		['&#193;',"Á"],
		['&#194;',"Â"],
		['&#195;',"Ã"],
		['&#196;',"Ä"],
		['&#197;',"Å"],
		['&#198;',"Æ"],
		['&#199;',"Ç"],
		['&#200;',"È"],
		['&#201;',"É"],
		['&#202;',"Ê"],
		['&#203;',"Ë"],
		['&#204;',"Ì"],
		['&#205;',"Í"],
		['&#206;',"Î"],
		['&#207;',"Ï"],
		['&#208;',"Ð"],
		['&#209;',"Ñ"],
		['&#210;',"Ò"],
		['&#211;',"Ó"],
		['&#212;',"Ô"],
		['&#213;',"Õ"],
		['&#214;',"Ö"],
		['&#215;',"×"],
		['&#216;',"Ø"],
		['&#217;',"Ù"],
		['&#218;',"Ú"],
		['&#219;',"Û"],
		['&#220;',"Ü"],
		['&#221;',"Ý"],
		['&#222;',"Þ"],
		['&#223;',"ß"],
		['&#224;',"à"],
		['&#225;',"á"],
		['&#226;',"â"],
		['&#227;',"ã"],
		['&#228;',"ä"],
		['&#229;',"å"],
		['&#230;',"æ"],
		['&#231;',"ç"],
		['&#232;',"è"],
		['&#233;',"é"],
		['&#234;',"ê"],
		['&#235;',"ë"],
		['&#236;',"ì"],
		['&#237;',"í"],
		['&#238;',"î"],
		['&#239;',"ï"],
		['&#240;',"ð"],
		['&#241;',"ñ"],
		['&#242;',"ò"],
		['&#243;',"ó"],
		['&#244;',"ô"],
		['&#245;',"õ"],
		['&#246;',"ö"],
		['&#247;',"÷"],
		['&#248;',"ø"],
		['&#249;',"ù"],
		['&#250;',"ú"],
		['&#251;',"û"],
		['&#252;',"ü"],
		['&#253;',"ý"],
		['&#254;',"þ"],
		['&#255;',"ÿ"] ]
      # Parse the string of the html code and make the replacement
      dict.each { |x| string = string.gsub(x.first, x.last) }
      # return the string 
      string 
    end
  end
end

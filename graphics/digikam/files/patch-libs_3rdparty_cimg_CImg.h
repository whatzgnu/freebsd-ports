--- libs/3rdparty/cimg/CImg.h.orig	2015-02-26 07:57:56 UTC
+++ libs/3rdparty/cimg/CImg.h
@@ -29453,7 +29453,7 @@ namespace cimg_library {
         new_bit_depth = 8;
       }
       if (new_color_type == PNG_COLOR_TYPE_GRAY && bit_depth < 8){
-        png_set_gray_1_2_4_to_8(png_ptr);
+        png_set_expand_gray_1_2_4_to_8(png_ptr);
         new_bit_depth = 8;
       }
       if (png_get_valid(png_ptr, info_ptr, PNG_INFO_tRNS))

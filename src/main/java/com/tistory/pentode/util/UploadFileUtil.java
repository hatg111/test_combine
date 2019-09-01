package com.tistory.pentode.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import net.coobird.thumbnailator.Thumbnails;

public class UploadFileUtil {
  
 static final int THUMB_WIDTH = 300;
 static final int THUMB_HEIGHT = 300;
 
 public static String fileUpload(String upload,
         String fileName,
         byte[] fileData, String ymdPath) throws Exception {

  UUID uid = UUID.randomUUID();
  
  String newFileName = uid + "_" + fileName;
  String imgPath = upload + ymdPath;

  File target = new File(imgPath, newFileName);
  FileCopyUtils.copy(fileData, target);
  
  String thumbFileName = "s_" + newFileName;
  File image = new File(imgPath + File.separator + newFileName);

  File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

  if (image.exists()) {
   thumbnail.getParentFile().mkdirs();
   Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
  }
  return newFileName;
 }

 public static String calcPath(String upload) {
  Calendar cal = Calendar.getInstance();
  String yearPath = File.separator + cal.get(Calendar.YEAR);
  String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
  String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

  makeDir(upload, yearPath, monthPath, datePath);
  makeDir(upload, yearPath, monthPath, datePath + "\\s");

  return datePath;
 }

 private static void makeDir(String upload, String... paths) {

  if (new File(paths[paths.length - 1]).exists()) { return; }

  for (String path : paths) {
   File dirPath = new File(upload + path);

   if (!dirPath.exists()) {
    dirPath.mkdir();
   }
  }
 }
}

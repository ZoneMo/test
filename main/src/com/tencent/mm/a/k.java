package com.tencent.mm.a;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class k
{
  private static void a(File paramFile, ZipOutputStream paramZipOutputStream, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString);
    if (paramString.trim().length() == 0);
    String str2;
    for (String str1 = ""; ; str1 = File.separator)
    {
      str2 = str1 + paramFile.getName();
      if (!paramFile.isDirectory())
        break;
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      for (int k = 0; k < j; k++)
        a(arrayOfFile[k], paramZipOutputStream, str2);
    }
    byte[] arrayOfByte = new byte[131072];
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramFile), 131072);
    paramZipOutputStream.putNextEntry(new ZipEntry(str2));
    while (true)
    {
      int i = localBufferedInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      paramZipOutputStream.write(arrayOfByte, 0, i);
    }
    localBufferedInputStream.close();
    paramZipOutputStream.flush();
    paramZipOutputStream.closeEntry();
  }

  public static void a(Collection paramCollection, File paramFile)
  {
    ZipOutputStream localZipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(paramFile), 131072));
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      File localFile = (File)localIterator.next();
      if (localFile.exists())
        a(localFile, localZipOutputStream, "");
    }
    localZipOutputStream.close();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.a.k
 * JD-Core Version:    0.6.2
 */
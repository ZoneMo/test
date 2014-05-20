package com.tencent.mm.b;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;

public final class f
{
  public static int a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null))
      return -1;
    while (true)
    {
      try
      {
        File localFile1 = new File(paramString1);
        RandomAccessFile localRandomAccessFile = new RandomAccessFile(localFile1, "r");
        File localFile2 = new File(paramString3);
        File localFile3 = new File(paramString2);
        if ((!localFile1.exists()) || (!localFile3.exists()))
        {
          aa.e("MicroMsg.MergePatchApk", "file not found in merge(): oldFile.exists()=" + localFile1.exists() + ", newFile.exists()=" + localFile2.exists() + ", patch.exists()=" + localFile3.exists());
          return -1;
        }
        a locala = a.ax(paramString1);
        if ((locala != null) && (locala.ne() != null))
        {
          i = locala.ne().nf();
          aa.i("MicroMsg.MergePatchApk", "extLen = " + i);
          int j;
          if (localRandomAccessFile.length() <= 0L)
          {
            j = 3;
            if (j != 1)
            {
              aa.e("MicroMsg.MergePatchApk", "merge failed in patchLessMemory()");
              return -1;
            }
          }
          else
          {
            if (localFile3.length() <= 0L)
            {
              j = 2;
              continue;
            }
            byte[] arrayOfByte = new byte[(int)localFile3.length()];
            e.a(new FileInputStream(localFile3), arrayOfByte, arrayOfByte.length);
            j = d.a(localRandomAccessFile, (int)localRandomAccessFile.length(), arrayOfByte, arrayOfByte.length, localFile2, i);
            continue;
          }
          localRandomAccessFile.close();
          if (!paramString4.equalsIgnoreCase(com.tencent.mm.a.f.au(paramString3)))
            return -2;
          c localc = new c();
          localc.az(paramString4);
          new a(localc).e(localFile2);
          return 0;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MergePatchApk", "Exception in merge()");
        return -1;
      }
      int i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.b.f
 * JD-Core Version:    0.6.2
 */
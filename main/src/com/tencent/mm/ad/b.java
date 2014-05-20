package com.tencent.mm.ad;

import android.graphics.Bitmap;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.sdk.platformtools.l;
import com.tencent.mm.storage.e;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;

public final class b
{
  public static Bitmap BS()
  {
    int i = cj.c((Integer)be.uz().sr().get(66561));
    byte[] arrayOfByte = gk(v.th());
    if ((arrayOfByte == null) || (i == 0))
      return null;
    return h.cj(arrayOfByte);
  }

  public static int d(String paramString, byte[] paramArrayOfByte)
  {
    String str = gj(paramString);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(str);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return 0;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  public static String gj(String paramString)
  {
    return l.a(be.uz().sB(), be.uz().sC(), "qr_", f.h(paramString.getBytes()), ".png");
  }

  public static byte[] gk(String paramString)
  {
    String str = gj(paramString);
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(str, "r");
      byte[] arrayOfByte = new byte[(int)localRandomAccessFile.length()];
      localRandomAccessFile.read(arrayOfByte);
      localRandomAccessFile.close();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ad.b
 * JD-Core Version:    0.6.2
 */
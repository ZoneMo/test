package com.tencent.mm.plugin.c.a;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.tencent.mm.plugin.scanner.b.f;
import com.tencent.mm.plugin.scanner.b.g;
import com.tencent.mm.sdk.platformtools.aa;

public final class a
{
  private b dUU = null;
  private final int dUV = 480;

  private static String a(f paramf, Bitmap paramBitmap, int paramInt)
  {
    return paramf.a(new g(paramBitmap, paramInt, paramInt));
  }

  private static String c(Bitmap paramBitmap)
  {
    long l1 = SystemClock.elapsedRealtime();
    f localf = new f(null, true, false);
    String str1 = a(localf, paramBitmap, 3);
    long l2 = SystemClock.elapsedRealtime() - l1;
    aa.d("MicroMsg.scanner.DecodeFile", "decode once time(ms):" + l2);
    if ((str1 != null) && (str1.length() > 0))
    {
      localf.aaF();
      return str1;
    }
    if (l2 == 0L)
      l2 = 1L;
    int i = (int)(20000L / l2);
    for (int j = 1; j < i; j++)
    {
      int k = 3 + j * 8;
      if ((k > paramBitmap.getWidth()) || (k > paramBitmap.getHeight()))
        break;
      String str2 = a(localf, paramBitmap, k);
      if ((str2 != null) && (str2.length() > 0))
      {
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = Integer.valueOf(j);
        arrayOfObject[1] = Integer.valueOf(i);
        arrayOfObject[2] = Integer.valueOf(paramBitmap.getWidth());
        arrayOfObject[3] = Integer.valueOf(paramBitmap.getHeight());
        aa.e("MicroMsg.scanner.DecodeFile", "Decode file done, i = %d, max times = %d, width = %d, height = %d", arrayOfObject);
        localf.aaF();
        return str2;
      }
    }
    localf.aaF();
    return null;
  }

  public final int a(String paramString, b paramb)
  {
    this.dUU = paramb;
    new c(this, (byte)0).execute(new String[] { paramString });
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.c.a.a
 * JD-Core Version:    0.6.2
 */
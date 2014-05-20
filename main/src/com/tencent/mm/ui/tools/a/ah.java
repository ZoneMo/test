package com.tencent.mm.ui.tools.a;

import android.graphics.Bitmap;
import android.os.Build.VERSION;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

final class ah
{
  static void f(InputStream paramInputStream)
  {
    if (paramInputStream == null)
      return;
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  static int pS()
  {
    try
    {
      int i = new File("/sys/devices/system/cpu/").listFiles(new ai()).length;
      return i;
    }
    catch (Exception localException)
    {
    }
    return 1;
  }

  static int s(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 12);
    for (int i = paramBitmap.getByteCount(); i < 0; i = paramBitmap.getRowBytes() * paramBitmap.getHeight())
      throw new IllegalStateException("Negative size: " + paramBitmap);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ah
 * JD-Core Version:    0.6.2
 */
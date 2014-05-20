package com.tencent.mm.compatible.g;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.Environment;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

public final class l
{
  public static File getDataDirectory()
  {
    if (cj.hX(s.ceN.ceu))
      return Environment.getDataDirectory();
    return new File(s.ceN.ceu);
  }

  public static File getExternalStorageDirectory()
  {
    if (cj.hX(s.ceN.ces))
      return Environment.getExternalStorageDirectory();
    return new File(s.ceN.ces);
  }

  @TargetApi(8)
  public static File getExternalStoragePublicDirectory(String paramString)
  {
    if (cj.hX(s.ceN.cet))
      return Environment.getExternalStoragePublicDirectory(paramString);
    return new File(s.ceN.cet);
  }

  public static String getExternalStorageState()
  {
    if (cj.hX(s.ceN.cew))
      return Environment.getExternalStorageState();
    return s.ceN.cew;
  }

  public static boolean qd()
  {
    try
    {
      boolean bool1 = getExternalStorageState().equals("mounted");
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = new File(getExternalStorageDirectory().getAbsolutePath()).canWrite();
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
      return bool2;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static int qi()
  {
    if (Build.VERSION.SDK_INT >= 11)
      return new m().mode;
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.l
 * JD-Core Version:    0.6.2
 */
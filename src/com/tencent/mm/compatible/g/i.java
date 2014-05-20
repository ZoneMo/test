package com.tencent.mm.compatible.g;

import android.os.Build.VERSION;
import android.os.StatFs;
import java.io.File;

public final class i
{
  public static boolean bG(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }

  public static boolean bH(int paramInt)
  {
    return Build.VERSION.SDK_INT < paramInt;
  }

  public static boolean m(long paramLong)
  {
    if (!"mounted".equals(l.getExternalStorageState()));
    StatFs localStatFs;
    long l1;
    long l2;
    do
    {
      return false;
      localStatFs = new StatFs(l.getExternalStorageDirectory().getPath());
      l1 = localStatFs.getBlockCount();
      l2 = localStatFs.getAvailableBlocks();
    }
    while ((l1 <= 0L) || (l1 - l2 < 0L) || (localStatFs.getBlockSize() * localStatFs.getFreeBlocks() < paramLong));
    return true;
  }

  public static boolean qd()
  {
    try
    {
      boolean bool1 = l.getExternalStorageState().equals("mounted");
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = new File(l.getExternalStorageDirectory().getAbsolutePath()).canWrite();
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
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.i
 * JD-Core Version:    0.6.2
 */
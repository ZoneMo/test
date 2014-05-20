package com.tencent.mm.platformtools;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.aa;

public final class as
{
  private static final ThreadLocal cGZ = new ThreadLocal();

  @TargetApi(9)
  public static void FB()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(false);
    arrayOfObject[1] = Integer.valueOf(Build.VERSION.SDK_INT);
    aa.c("MicroMsg.SDK.StrictModeHelper", "enable strict mode: %b, sdk: %d", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.as
 * JD-Core Version:    0.6.2
 */
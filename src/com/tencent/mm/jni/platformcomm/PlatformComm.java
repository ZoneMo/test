package com.tencent.mm.jni.platformcomm;

import android.content.Context;
import android.os.Handler;

public final class PlatformComm
{
  public static f cgz = null;
  private static Context context = null;
  private static Handler handler = null;

  public static void a(Context paramContext, Handler paramHandler)
  {
    context = paramContext;
    handler = paramHandler;
    c.J(paramContext);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.jni.platformcomm.PlatformComm
 * JD-Core Version:    0.6.2
 */
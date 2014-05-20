package com.tencent.mm.compatible.loader;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.at;

public final class j
  implements i
{
  private static h b(Application paramApplication, String paramString)
  {
    try
    {
      h localh = (h)al.getContext().getClassLoader().loadClass(al.azr() + paramString).newInstance();
      localh.setApplication(paramApplication);
      return localh;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final h a(Application paramApplication, String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      HandlerThread localHandlerThread = new HandlerThread("startup");
      localHandlerThread.start();
      String str = (String)new k(this).b(new Handler(localHandlerThread.getLooper()));
      localHandlerThread.getLooper().quit();
      paramString = str;
    }
    if (paramString == null)
    {
      aa.e("MicroMsg.ProfileFactoryImpl", "get process name failed, retry later");
      return null;
    }
    al.sD(paramString);
    h localh;
    if (paramString.equals(al.getPackageName()))
      localh = b(paramApplication, ".app.WorkerProfile");
    while (true)
    {
      aa.c("MicroMsg.ProfileFactoryImpl", "application started, profile = %s", new Object[] { paramString });
      return localh;
      if (paramString.equals(al.getPackageName() + ":push"))
      {
        localh = b(paramApplication, ".app.PusherProfile");
      }
      else if (paramString.equals(al.getPackageName() + ":tools"))
      {
        localh = b(paramApplication, ".app.ToolsProfile");
      }
      else
      {
        if (!paramString.equals(al.getPackageName() + ":sandbox"))
          break;
        localh = b(paramApplication, ".app.SandBoxProfile");
      }
    }
    at.azE().aN("MMApplication onCreate profile == null", "profile is null and initMMcore failed");
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.j
 * JD-Core Version:    0.6.2
 */
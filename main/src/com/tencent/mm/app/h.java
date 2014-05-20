package com.tencent.mm.app;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.os.SystemClock;
import com.tencent.mm.sandbox.monitor.ExceptionMonitorService;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.aw;
import com.tencent.mm.sdk.platformtools.ax;

final class h
  implements ax
{
  h(PusherProfile paramPusherProfile)
  {
  }

  public final void a(String paramString, aw paramaw)
  {
    Intent localIntent = new Intent(al.getContext(), ExceptionMonitorService.class);
    localIntent.setAction("uncatch_exception");
    localIntent.putExtra("exceptionPid", Process.myPid());
    localIntent.putExtra("exceptionTime", SystemClock.elapsedRealtime());
    if (paramaw == null);
    for (String str = null; ; str = paramaw.getUsername())
    {
      localIntent.putExtra("userName", str);
      localIntent.putExtra("exceptionMsg", paramString);
      al.getContext().startService(localIntent);
      return;
    }
  }

  public final void b(String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent(al.getContext(), ExceptionMonitorService.class);
    localIntent.setAction("custom_exception");
    localIntent.putExtra("userName", paramString3);
    localIntent.putExtra("tag", paramString2);
    localIntent.putExtra("exceptionMsg", paramString1);
    al.getContext().startService(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.h
 * JD-Core Version:    0.6.2
 */
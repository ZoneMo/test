package com.tencent.mm.booter;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.j;

public final class h
{
  public static boolean k(Context paramContext, String paramString)
  {
    if (((!paramString.equals("noop")) || ((j.gcq) && (j.gcp))) && (paramContext.getSharedPreferences("system_config_prefs", l.qi()).getBoolean("settings_fully_exit", true)))
    {
      aa.i("MicroMsg.CoreServiceHelper", "fully exited, no need to start service");
      return false;
    }
    aa.d("MicroMsg.CoreServiceHelper", "ensure service running, type=" + paramString);
    Intent localIntent = new Intent(paramContext, CoreService.class);
    localIntent.setFlags(268435456);
    paramContext.startService(localIntent);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.h
 * JD-Core Version:    0.6.2
 */
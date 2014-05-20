package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public class LogoutReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    String str = paramIntent.getStringExtra("pkg");
    if ((cj.hX(str)) || (str.equals(paramContext.getPackageName())))
    {
      aa.i("MicroMsg.LogoutReceiver", "the same pkg name.");
      return;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramContext.getPackageName();
    arrayOfObject[1] = str;
    aa.d("MicroMsg.LogoutReceiver", "curPkg:%s  remote pkg:%s", arrayOfObject);
    al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putBoolean("auth_another_pkg", true).commit();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.LogoutReceiver
 * JD-Core Version:    0.6.2
 */
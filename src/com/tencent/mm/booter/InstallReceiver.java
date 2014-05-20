package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public class InstallReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null))
      return;
    String str1 = paramIntent.getAction();
    aa.d("MicroMsg.InstallReceiver", "action:[%s]", new Object[] { str1 });
    if ((cj.hX(str1)) || (!str1.equals("com.android.vending.INSTALL_REFERRER")))
    {
      aa.e("MicroMsg.InstallReceiver", "action is null or nil, or not the installed action");
      return;
    }
    String str2 = paramIntent.getStringExtra("referrer");
    aa.d("MicroMsg.InstallReceiver", "get referer:[%s]", new Object[] { str2 });
    if (cj.hX(str2))
    {
      aa.e("MicroMsg.InstallReceiver", "get referer is null or nil");
      return;
    }
    aa.d("MicroMsg.InstallReceiver", "[PREF] write installreferer = " + str2);
    paramContext.getSharedPreferences(al.azs(), 0).edit().putString("installreferer", str2).commit();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.InstallReceiver
 * JD-Core Version:    0.6.2
 */
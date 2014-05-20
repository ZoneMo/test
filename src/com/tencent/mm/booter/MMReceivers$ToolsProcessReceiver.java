package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.tencent.mm.sdk.platformtools.aa;

public class MMReceivers$ToolsProcessReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null));
    String str;
    do
    {
      return;
      str = paramIntent.getStringExtra("tools_process_action_code_key");
      aa.d("MicroMsg.ToolsProcessReceiver", "onReceive, action = " + str);
      if (str.equals("com.tencent.mm.intent.ACTION_KILL_TOOLS_PROCESS"))
      {
        Process.killProcess(Process.myPid());
        return;
      }
    }
    while (!str.equals("com.tencent.mm.intent.ACTION_TOOLS_REMOVE_COOKIE"));
    CookieSyncManager.createInstance(paramContext.getApplicationContext());
    CookieManager.getInstance().removeAllCookie();
    CookieSyncManager.getInstance().sync();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.MMReceivers.ToolsProcessReceiver
 * JD-Core Version:    0.6.2
 */
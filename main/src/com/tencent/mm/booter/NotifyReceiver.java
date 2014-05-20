package com.tencent.mm.booter;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.jni.platformcomm.WakerLock;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;

public class NotifyReceiver extends BroadcastReceiver
{
  private static WakerLock bZt = null;
  private static ad caB;
  private static long caC = 0L;

  public static void oN()
  {
    be.uA().b(38, caB);
    be.uA().b(39, caB);
    if (caB == null)
      caB = new ad();
    be.uA().a(38, caB);
    be.uA().a(39, caB);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    aa.i("MicroMsg.NotifyReceiver", "onReceive");
    if (paramIntent == null)
      return;
    if (paramContext.getSharedPreferences("system_config_prefs", l.qi()).getBoolean("settings_fully_exit", true))
    {
      aa.i("MicroMsg.NotifyReceiver", "fully exited, no need to start service");
      return;
    }
    Intent localIntent = new Intent(paramContext, NotifyReceiver.NotifyService.class);
    if (paramIntent.getBooleanExtra("intent_from_shoot_key", false))
      localIntent.putExtra("notify_option_type", 3);
    localIntent.putExtras(paramIntent);
    paramContext.startService(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.NotifyReceiver
 * JD-Core Version:    0.6.2
 */
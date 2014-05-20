package com.tencent.mm.ui;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.az;

final class bu
  implements az
{
  bu(MMAppMgr paramMMAppMgr)
  {
  }

  public final boolean ok()
  {
    String str = au.ah(al.getContext());
    if ((str != null) && (str.toLowerCase().startsWith(al.getPackageName())))
    {
      aa.d("MicroMsg.MMAppMgr", "onTimerExpired, top activity belongs to mm, skip kill tools");
      return false;
    }
    aa.d("MicroMsg.MMAppMgr", "onTimerExpired, kill tools process");
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(e.gks, "com.tencent.mm.booter.MMReceivers$ToolsProcessReceiver"));
    localIntent.putExtra("tools_process_action_code_key", "com.tencent.mm.intent.ACTION_KILL_TOOLS_PROCESS");
    al.getContext().sendBroadcast(localIntent);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bu
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.pluginapp;

import android.content.ComponentName;
import android.content.Intent;
import com.tencent.mm.ui.e;

final class s
  implements Runnable
{
  s(FindMoreFriendsUI paramFindMoreFriendsUI)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(e.gks, "com.tencent.mm.booter.MMReceivers$ToolsProcessReceiver"));
    localIntent.putExtra("tools_process_action_code_key", "com.tencent.mm.intent.ACTION_START_TOOLS_PROCESS");
    this.hdq.sendBroadcast(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.s
 * JD-Core Version:    0.6.2
 */
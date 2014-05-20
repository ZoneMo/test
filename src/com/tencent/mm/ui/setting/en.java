package com.tencent.mm.ui.setting;

import android.content.ComponentName;
import android.content.Intent;
import com.tencent.mm.ui.e;

final class en
  implements Runnable
{
  en(SettingsUI paramSettingsUI)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(e.gks, "com.tencent.mm.booter.MMReceivers$ToolsProcessReceiver"));
    localIntent.putExtra("tools_process_action_code_key", "com.tencent.mm.intent.ACTION_START_TOOLS_PROCESS");
    this.hgl.sendBroadcast(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.en
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.chatting;

import android.content.ComponentName;
import android.content.Intent;
import com.tencent.mm.ui.e;

final class gj
  implements Runnable
{
  gj(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(e.gks, "com.tencent.mm.booter.MMReceivers$ToolsProcessReceiver"));
    localIntent.putExtra("tools_process_action_code_key", "com.tencent.mm.intent.ACTION_START_TOOLS_PROCESS");
    this.gPG.sendBroadcast(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gj
 * JD-Core Version:    0.6.2
 */
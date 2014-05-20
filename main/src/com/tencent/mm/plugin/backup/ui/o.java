package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.LauncherUI;

final class o
  implements MenuItem.OnMenuItemClickListener
{
  o(BakChatRecoveringUI paramBakChatRecoveringUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (BakChatRecoveringUI.b(this.cMB))
      return true;
    Intent localIntent = new Intent(this.cMB.aal(), LauncherUI.class);
    localIntent.putExtra("nofification_type", "new_msg_nofification");
    localIntent.putExtra("talkerCount", 2);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    this.cMB.startActivity(localIntent);
    this.cMB.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.o
 * JD-Core Version:    0.6.2
 */
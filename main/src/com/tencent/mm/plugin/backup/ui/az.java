package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.LauncherUI;

final class az
  implements MenuItem.OnMenuItemClickListener
{
  az(BakChatUploadingUI paramBakChatUploadingUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent(this.cNF.aal(), LauncherUI.class);
    localIntent.putExtra("nofification_type", "new_msg_nofification");
    localIntent.putExtra("talkerCount", 2);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    this.cNF.startActivity(localIntent);
    this.cNF.finish();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.az
 * JD-Core Version:    0.6.2
 */
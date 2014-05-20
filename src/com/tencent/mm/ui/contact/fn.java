package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.LauncherUI;

final class fn
  implements MenuItem.OnMenuItemClickListener
{
  fn(VoipAddressUI paramVoipAddressUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (VoipAddressUI.c(this.gVO))
    {
      Intent localIntent = new Intent(this.gVO, LauncherUI.class);
      localIntent.addFlags(67108864);
      this.gVO.startActivity(localIntent);
    }
    this.gVO.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fn
 * JD-Core Version:    0.6.2
 */
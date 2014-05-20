package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class fk
  implements MenuItem.OnMenuItemClickListener
{
  fk(ShareImageUI paramShareImageUI, fl paramfl)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent();
    localIntent.putStringArrayListExtra("Select_Contact", this.hmg.aNK());
    this.hmh.setResult(0, localIntent);
    this.hmh.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fk
 * JD-Core Version:    0.6.2
 */
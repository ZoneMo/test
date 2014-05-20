package com.tencent.mm.pluginsdk.module.media;

import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.c;
import com.tencent.mm.ui.MMActivity;

final class g
  implements MenuItem.OnMenuItemClickListener
{
  g(f paramf)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String[] arrayOfString = f.a(this.fjE).getResources().getStringArray(c.Zk);
    com.tencent.mm.ui.base.h.b(f.a(this.fjE).aal(), "", arrayOfString, "", new h(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.g
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.voicesearch;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.plugin.d.c.m;

final class w
  implements MenuItem.OnMenuItemClickListener
{
  w(VoiceSearchResultUI paramVoiceSearchResultUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    m localm;
    StringBuilder localStringBuilder;
    if (!VoiceSearchResultUI.a(this.htR))
    {
      localm = m.dZN;
      localStringBuilder = new StringBuilder().append(VoiceSearchResultUI.b(this.htR)).append(",").append(VoiceSearchResultUI.c(this.htR)).append(",");
      if (VoiceSearchResultUI.d(this.htR) != null)
        break label95;
    }
    label95: for (int i = 0; ; i = VoiceSearchResultUI.d(this.htR).length)
    {
      localm.j(10452, i + ",0");
      this.htR.finish();
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.w
 * JD-Core Version:    0.6.2
 */
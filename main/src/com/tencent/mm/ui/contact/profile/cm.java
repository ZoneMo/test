package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.view.MenuItem;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;

final class cm
  implements cd
{
  cm(cl paramcl)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 1:
      cb.a(this.gXq.gXl, NormalUserFooterPreference.a(this.gXq.gXl.gXk).getUsername());
      return;
    case 8:
      cb.a(this.gXq.gXl);
      return;
    case 5:
    }
    h.a(this.gXq.gXl.gXk.getContext(), this.gXq.gXl.gXk.getContext().getString(2131166239), this.gXq.gXl.gXk.getContext().getString(2131166237), new cn(this), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cm
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

final class fi
  implements MenuItem.OnMenuItemClickListener
{
  fi(ShareImageUI paramShareImageUI, fl paramfl)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ch localch = h.a(this.hmh.aal(), this.hmh.getString(2131165599), false, null);
    be.ut().o(new fj(this, localch));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fi
 * JD-Core Version:    0.6.2
 */
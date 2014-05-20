package com.tencent.mm.ui.contact.profile;

import android.view.MenuItem;
import com.tencent.mm.ao.a;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;

final class o
  implements cd
{
  o(e parame)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 1:
      e.d(this.gWd);
      return;
    case 2:
      MMActivity localMMActivity = e.b(this.gWd);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = e.c(this.gWd).rr();
      a.ti(localMMActivity.getString(2131165284, arrayOfObject));
      h.a(e.b(this.gWd), e.b(this.gWd).getString(2131166383), "", e.b(this.gWd).getString(2131166382), e.b(this.gWd).getString(2131167681), new p(this), null);
      return;
    case 3:
      e.f(this.gWd);
      return;
    case 4:
    }
    e.g(this.gWd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.o
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.bindmobile;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class ae
  implements MenuItem.OnMenuItemClickListener
{
  ae(BindMContactUI paramBindMContactUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    BindMContactUI.a(this.gJb, BindMContactUI.d(this.gJb).getText().toString().trim() + cj.sY(BindMContactUI.b(this.gJb).getText().toString()));
    if ((!c.qe(BindMContactUI.e(this.gJb))) || (cj.sY(BindMContactUI.b(this.gJb).getText().toString()).length() <= 0))
    {
      h.c(this.gJb, n.bfc, n.ber);
      return true;
    }
    BindMContactUI.b(this.gJb, BindMContactUI.e(this.gJb));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ae
 * JD-Core Version:    0.6.2
 */
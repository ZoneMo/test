package com.tencent.mm.ui.bindgooglecontact;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class b
  implements View.OnClickListener
{
  b(BindGoogleContactIntroUI paramBindGoogleContactIntroUI)
  {
  }

  public final void onClick(View paramView)
  {
    h.b(this.gHu.aal(), this.gHu.getResources().getString(n.bDm), null, this.gHu.getResources().getString(n.bDl), new c(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.b
 * JD-Core Version:    0.6.2
 */
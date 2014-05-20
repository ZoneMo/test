package com.tencent.mm.ui.bindmobile;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class ao
  implements View.OnClickListener
{
  ao(FindMContactIntroUI paramFindMContactIntroUI)
  {
  }

  public final void onClick(View paramView)
  {
    h.a(this.gJj, this.gJj.getString(n.bmn), null, this.gJj.getString(n.bmo), this.gJj.getString(n.bmm), new ap(this), new aq(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ao
 * JD-Core Version:    0.6.2
 */
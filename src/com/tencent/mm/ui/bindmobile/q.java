package com.tencent.mm.ui.bindmobile;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class q
  implements View.OnClickListener
{
  q(BindMContactIntroUI paramBindMContactIntroUI)
  {
  }

  public final void onClick(View paramView)
  {
    Activity localActivity = this.gIR.aal();
    BindMContactIntroUI localBindMContactIntroUI = this.gIR;
    int i = n.beN;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = BindMContactIntroUI.a(this.gIR);
    h.a(localActivity, localBindMContactIntroUI.getString(i, arrayOfObject), this.gIR.getString(n.anM), new r(this), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.q
 * JD-Core Version:    0.6.2
 */
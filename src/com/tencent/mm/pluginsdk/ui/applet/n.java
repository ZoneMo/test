package com.tencent.mm.pluginsdk.ui.applet;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.base.ce;

final class n
  implements View.OnClickListener
{
  n(r paramr, View paramView, ce paramce)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.fnH != null)
      this.fnH.a(true, i.Y(this.dXr), i.Z(this.dXr));
    this.fnG.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.n
 * JD-Core Version:    0.6.2
 */
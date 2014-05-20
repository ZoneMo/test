package com.tencent.mm.ui.setting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.w;

final class p
  implements View.OnClickListener
{
  p(SelfQRCodeUI paramSelfQRCodeUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (w.cp(SelfQRCodeUI.a(this.heg)))
      return;
    this.heg.aMl();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.p
 * JD-Core Version:    0.6.2
 */
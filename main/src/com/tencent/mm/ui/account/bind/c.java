package com.tencent.mm.ui.account.bind;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.tencent.mm.h;

final class c
  implements View.OnClickListener
{
  c(BindMobileStatusUI paramBindMobileStatusUI)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = true;
    BindMobileStatusUI localBindMobileStatusUI1 = this.gvq;
    boolean bool2;
    label59: BindMobileStatusUI localBindMobileStatusUI2;
    if (!BindMobileStatusUI.d(this.gvq).booleanValue())
    {
      bool2 = bool1;
      BindMobileStatusUI.b(localBindMobileStatusUI1, Boolean.valueOf(bool2));
      if (!BindMobileStatusUI.d(this.gvq).booleanValue())
        break label123;
      BindMobileStatusUI.e(this.gvq).setImageResource(h.aig);
      localBindMobileStatusUI2 = this.gvq;
      if (BindMobileStatusUI.d(this.gvq).booleanValue())
        break label139;
    }
    while (true)
    {
      BindMobileStatusUI.a(localBindMobileStatusUI2, bool1, 256, 7);
      if (!BindMobileStatusUI.d(this.gvq).booleanValue())
        BindMobileStatusUI.a(this.gvq, false, 2097152, 32);
      return;
      bool2 = false;
      break;
      label123: BindMobileStatusUI.e(this.gvq).setImageResource(h.aih);
      break label59;
      label139: bool1 = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.c
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.account.bind;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.tencent.mm.h;

final class b
  implements View.OnClickListener
{
  b(BindMobileStatusUI paramBindMobileStatusUI)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = true;
    BindMobileStatusUI localBindMobileStatusUI1 = this.gvq;
    boolean bool2;
    label59: BindMobileStatusUI localBindMobileStatusUI2;
    if (!BindMobileStatusUI.b(this.gvq).booleanValue())
    {
      bool2 = bool1;
      BindMobileStatusUI.a(localBindMobileStatusUI1, Boolean.valueOf(bool2));
      if (!BindMobileStatusUI.b(this.gvq).booleanValue())
        break label97;
      BindMobileStatusUI.c(this.gvq).setImageResource(h.aig);
      localBindMobileStatusUI2 = this.gvq;
      if (BindMobileStatusUI.b(this.gvq).booleanValue())
        break label113;
    }
    while (true)
    {
      BindMobileStatusUI.a(localBindMobileStatusUI2, bool1, 512, 8);
      return;
      bool2 = false;
      break;
      label97: BindMobileStatusUI.c(this.gvq).setImageResource(h.aih);
      break label59;
      label113: bool1 = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.b
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.c;

import android.view.View;
import android.view.View.OnClickListener;

final class i
  implements View.OnClickListener
{
  i(h paramh)
  {
  }

  public final void onClick(View paramView)
  {
    h.a(this.hsm).onCancel();
    this.hsm.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.i
 * JD-Core Version:    0.6.2
 */
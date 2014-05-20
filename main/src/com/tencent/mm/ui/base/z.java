package com.tencent.mm.ui.base;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

final class z
  implements View.OnClickListener
{
  z(x paramx, DialogInterface.OnClickListener paramOnClickListener)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.fcJ != null)
      this.fcJ.onClick(this.gyM, 0);
    this.gyM.cancel();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.z
 * JD-Core Version:    0.6.2
 */
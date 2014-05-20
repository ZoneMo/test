package com.tencent.mm.ui.base;

import android.database.DataSetObserver;

final class br extends DataSetObserver
{
  private br(MMListPopupWindow paramMMListPopupWindow)
  {
  }

  public final void onChanged()
  {
    if (this.gAy.isShowing())
      this.gAy.show();
  }

  public final void onInvalidated()
  {
    this.gAy.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.br
 * JD-Core Version:    0.6.2
 */
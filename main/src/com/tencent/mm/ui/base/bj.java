package com.tencent.mm.ui.base;

import android.database.DataSetObserver;

final class bj extends DataSetObserver
{
  bj(MMHorList paramMMHorList)
  {
  }

  public final void onChanged()
  {
    MMHorList.a(this.gAp);
    this.gAp.invalidate();
    this.gAp.requestLayout();
  }

  public final void onInvalidated()
  {
    MMHorList.b(this.gAp);
    this.gAp.invalidate();
    this.gAp.requestLayout();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bj
 * JD-Core Version:    0.6.2
 */
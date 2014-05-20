package com.tencent.mm.ui.account;

import android.database.DataSetObserver;

final class ay extends DataSetObserver
{
  ay(HorizontalListView paramHorizontalListView)
  {
  }

  public final void onChanged()
  {
    synchronized (this.gqu)
    {
      HorizontalListView.a(this.gqu);
      this.gqu.invalidate();
      this.gqu.requestLayout();
      return;
    }
  }

  public final void onInvalidated()
  {
    HorizontalListView.b(this.gqu);
    this.gqu.invalidate();
    this.gqu.requestLayout();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ay
 * JD-Core Version:    0.6.2
 */
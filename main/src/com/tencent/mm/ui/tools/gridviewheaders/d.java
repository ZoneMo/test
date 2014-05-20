package com.tencent.mm.ui.tools.gridviewheaders;

import android.database.DataSetObserver;
import java.util.List;

final class d extends DataSetObserver
{
  d(c paramc)
  {
  }

  public final void onChanged()
  {
    this.hnW.aOl();
    this.hnW.notifyDataSetChanged();
  }

  public final void onInvalidated()
  {
    c.a(this.hnW).clear();
    this.hnW.notifyDataSetInvalidated();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.d
 * JD-Core Version:    0.6.2
 */
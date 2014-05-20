package com.tencent.mm.ui.tools.gridviewheaders;

import android.database.DataSetObserver;

final class v extends DataSetObserver
{
  private v(u paramu)
  {
  }

  public final void onChanged()
  {
    u.a(this.hoE, this.hoE.a(u.a(this.hoE)));
    this.hoE.notifyDataSetChanged();
  }

  public final void onInvalidated()
  {
    u.a(this.hoE, this.hoE.a(u.a(this.hoE)));
    this.hoE.notifyDataSetInvalidated();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.v
 * JD-Core Version:    0.6.2
 */
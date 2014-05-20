package com.tencent.mm.ui.tools.gridviewheaders;

import android.database.DataSetObserver;

final class s extends DataSetObserver
{
  s(r paramr)
  {
  }

  public final void onChanged()
  {
    this.hoB.notifyDataSetChanged();
  }

  public final void onInvalidated()
  {
    this.hoB.notifyDataSetInvalidated();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.s
 * JD-Core Version:    0.6.2
 */
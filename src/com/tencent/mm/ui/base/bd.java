package com.tencent.mm.ui.base;

import android.view.View;
import com.tencent.mm.sdk.platformtools.aa;

public abstract class bd
{
  private be gzJ;

  public final void a(be parambe)
  {
    this.gzJ = parambe;
  }

  public abstract View c(int paramInt, View paramView);

  public abstract int getCount();

  public abstract Object getItem(int paramInt);

  public abstract long getItemId(int paramInt);

  public final void notifyDataSetChange()
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[bool];
    if (this.gzJ == null);
    while (true)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.d("MicroMsg.MMGridPaperAdapter", "notifyDataSetChange, notifier is null ? %B", arrayOfObject);
      if (this.gzJ != null)
        break;
      return;
      bool = false;
    }
    this.gzJ.notifyDataSetChange();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bd
 * JD-Core Version:    0.6.2
 */
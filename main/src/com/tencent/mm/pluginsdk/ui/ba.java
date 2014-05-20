package com.tencent.mm.pluginsdk.ui;

import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;
import java.lang.ref.WeakReference;

public final class ba
  implements al
{
  WeakReference fne;

  public ba(SmileySubGrid paramSmileySubGrid)
  {
    this.fne = new WeakReference(paramSmileySubGrid);
  }

  public final void ca(String paramString)
  {
    if (this.fne != null)
    {
      SmileySubGrid localSmileySubGrid = (SmileySubGrid)this.fne.get();
      if (localSmileySubGrid != null)
      {
        aa.e("MicroMsg.SmileySubGrid", "onNotifyChange:[%s]", new Object[] { paramString });
        if ((SmileySubGrid.a(localSmileySubGrid) != null) && (SmileySubGrid.a(localSmileySubGrid).getVisibility() == 0) && (SmileySubGrid.b(localSmileySubGrid)))
          SmileySubGrid.a(localSmileySubGrid).refresh();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ba
 * JD-Core Version:    0.6.2
 */
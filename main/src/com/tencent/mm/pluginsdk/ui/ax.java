package com.tencent.mm.pluginsdk.ui;

import android.view.View;
import android.widget.ListAdapter;
import com.tencent.mm.sdk.platformtools.aa;

final class ax extends bb
  implements Runnable
{
  private ax(SmileySubGrid paramSmileySubGrid)
  {
    super(paramSmileySubGrid, (byte)0);
  }

  public final void run()
  {
    int i = this.fnb.fmE;
    View localView = this.fnb.getChildAt(i - this.fnb.getFirstVisiblePosition());
    if (localView != null)
    {
      int j = this.fnb.fmE;
      long l = this.fnb.getAdapter().getItemId(this.fnb.fmE);
      if (arJ())
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(j);
        arrayOfObject[1] = Long.valueOf(l);
        aa.e("MicroMsg.SmileySubGrid", "CheckForLongPress performLongPress position:[%d] id:[%d]", arrayOfObject);
        SmileySubGrid.a(this.fnb, localView, i);
        this.fnb.fmD = -1;
        this.fnb.fmC = 5;
        this.fnb.am(false);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ax
 * JD-Core Version:    0.6.2
 */
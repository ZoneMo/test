package com.tencent.mm.pluginsdk.ui;

import android.view.View;
import android.widget.ListAdapter;
import com.tencent.mm.sdk.platformtools.aa;

final class ay extends bb
  implements Runnable
{
  View fnc;
  int fnd;

  private ay(SmileySubGrid paramSmileySubGrid)
  {
    super(paramSmileySubGrid, (byte)0);
  }

  public final void run()
  {
    ListAdapter localListAdapter = this.fnb.getAdapter();
    int i = this.fnd;
    if ((localListAdapter != null) && (this.fnb.getCount() > 0) && (i != -1) && (i < localListAdapter.getCount()) && (arJ()))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Long.valueOf(localListAdapter.getItemId(i));
      aa.e("MicroMsg.SmileySubGrid", "PerformClick performItemClick position:[%d] id:[%d] ", arrayOfObject);
      this.fnb.performItemClick(this.fnc, i, localListAdapter.getItemId(i));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ay
 * JD-Core Version:    0.6.2
 */
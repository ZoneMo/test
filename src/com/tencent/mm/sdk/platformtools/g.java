package com.tencent.mm.sdk.platformtools;

import android.os.Build.VERSION;
import android.widget.ListView;

public final class g
{
  public static void a(ListView paramListView)
  {
    if (Build.VERSION.SDK_INT >= 8)
    {
      new cd();
      if (paramListView.getFirstVisiblePosition() > 10)
        paramListView.setSelection(10);
      paramListView.smoothScrollToPosition(0);
      return;
    }
    new cc();
    paramListView.setSelection(0);
  }

  public static void b(ListView paramListView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 8)
    {
      new cd();
      int i = paramListView.getFirstVisiblePosition();
      if ((i > paramInt) && (i - paramInt > 10))
        paramListView.setSelection(paramInt + 10);
      while (true)
      {
        paramListView.smoothScrollToPosition(paramInt);
        return;
        if ((i < paramInt) && (paramInt - i > 10))
          paramListView.setSelection(paramInt - 10);
      }
    }
    new cc();
    paramListView.setSelection(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.g
 * JD-Core Version:    0.6.2
 */
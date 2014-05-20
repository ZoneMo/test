package com.tencent.mm.platformtools;

import android.os.Build.VERSION;
import android.widget.ListView;

public final class d
{
  public static void a(ListView paramListView)
  {
    if (Build.VERSION.SDK_INT >= 8)
    {
      new ap();
      if (paramListView.getFirstVisiblePosition() > 10)
        paramListView.setSelection(10);
      if (Build.VERSION.SDK_INT >= 8)
        paramListView.smoothScrollToPosition(0);
      return;
    }
    new ao();
    paramListView.setSelection(0);
  }

  public static void a(ListView paramListView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      new ap();
      int i = paramListView.getFirstVisiblePosition();
      if ((i < paramInt) && (i + 10 < paramInt))
        paramListView.setSelectionFromTop(paramInt - 10, 0);
      while (true)
      {
        if (Build.VERSION.SDK_INT >= 11)
          paramListView.smoothScrollToPositionFromTop(paramInt, 0);
        return;
        if ((i > paramInt) && (i - 10 > paramInt))
          paramListView.setSelectionFromTop(paramInt + 10, 0);
      }
    }
    new ao();
    paramListView.setSelectionFromTop(paramInt, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.d
 * JD-Core Version:    0.6.2
 */
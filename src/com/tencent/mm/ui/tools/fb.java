package com.tencent.mm.ui.tools;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class fb
  implements TextView.OnEditorActionListener
{
  fb(SearchViewNotRealTimeHelper paramSearchViewNotRealTimeHelper)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((3 == paramInt) && (SearchViewNotRealTimeHelper.c(this.hme) != null))
    {
      fg localfg = SearchViewNotRealTimeHelper.c(this.hme);
      this.hme.aMH();
      return localfg.FT();
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fb
 * JD-Core Version:    0.6.2
 */
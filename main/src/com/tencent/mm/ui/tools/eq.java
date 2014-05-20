package com.tencent.mm.ui.tools;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class eq
  implements TextView.OnEditorActionListener
{
  eq(eo parameo)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((3 == paramInt) && (eo.c(this.hlX) != null))
    {
      ez localez = eo.c(this.hlX);
      this.hlX.aMH();
      return localez.FT();
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.eq
 * JD-Core Version:    0.6.2
 */
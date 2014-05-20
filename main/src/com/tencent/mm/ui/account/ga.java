package com.tencent.mm.ui.account;

import android.view.KeyEvent;
import android.widget.CheckBox;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class ga
  implements TextView.OnEditorActionListener
{
  ga(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt != 6) && (paramInt != 5)) || (!RegByEmailUI.d(this.gsr).isChecked()))
      return false;
    RegByEmailUI.c(this.gsr);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ga
 * JD-Core Version:    0.6.2
 */
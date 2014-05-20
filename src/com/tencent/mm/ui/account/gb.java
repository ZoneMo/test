package com.tencent.mm.ui.account;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.CheckBox;

final class gb
  implements View.OnKeyListener
{
  gb(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((66 != paramInt) || (paramKeyEvent.getAction() != 0) || (!RegByEmailUI.d(this.gsr).isChecked()))
      return false;
    RegByEmailUI.c(this.gsr);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gb
 * JD-Core Version:    0.6.2
 */
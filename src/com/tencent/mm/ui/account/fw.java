package com.tencent.mm.ui.account;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class fw
  implements CompoundButton.OnCheckedChangeListener
{
  fw(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    RegByEmailUI.b(this.gsr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fw
 * JD-Core Version:    0.6.2
 */
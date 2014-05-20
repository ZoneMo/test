package com.tencent.mm.ui.account;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

final class gn
  implements CompoundButton.OnCheckedChangeListener
{
  gn(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      RegByMobileRegAIOUI.t(this.gsL).setInputType(1);
      return;
    }
    RegByMobileRegAIOUI.t(this.gsL).setInputType(129);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gn
 * JD-Core Version:    0.6.2
 */
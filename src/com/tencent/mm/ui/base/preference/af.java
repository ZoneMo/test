package com.tencent.mm.ui.base.preference;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class af
  implements CompoundButton.OnCheckedChangeListener
{
  af(MMSwitchButtonPreference paramMMSwitchButtonPreference)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    MMSwitchButtonPreference.a(this.gGQ, paramBoolean);
    this.gGQ.callChangeListener(Boolean.valueOf(paramBoolean));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.af
 * JD-Core Version:    0.6.2
 */
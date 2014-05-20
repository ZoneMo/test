package com.tencent.mm.ui.bindlinkedin;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class b
  implements CompoundButton.OnCheckedChangeListener
{
  b(BindLinkedInUI paramBindLinkedInUI)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    BindLinkedInUI.a(this.gIz, paramBoolean, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindlinkedin.b
 * JD-Core Version:    0.6.2
 */
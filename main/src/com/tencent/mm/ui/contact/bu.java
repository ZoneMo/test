package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class bu
  implements View.OnFocusChangeListener
{
  bu(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      ContactRemarkInfoModUI.c(this.gTN).setBackgroundResource(2130838680);
      return;
    }
    ContactRemarkInfoModUI.c(this.gTN).setBackgroundResource(2130838679);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bu
 * JD-Core Version:    0.6.2
 */
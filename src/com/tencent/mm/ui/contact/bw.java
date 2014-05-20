package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.platformtools.au;

final class bw
  implements View.OnClickListener
{
  bw(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!au.hX(ContactRemarkInfoModUI.f(this.gTN)))
      return;
    ContactRemarkInfoModUI.i(this.gTN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bw
 * JD-Core Version:    0.6.2
 */
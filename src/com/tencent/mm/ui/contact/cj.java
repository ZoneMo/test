package com.tencent.mm.ui.contact;

import com.tencent.mm.ui.base.h;

final class cj
  implements Runnable
{
  cj(ci paramci, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (!this.cWt)
    {
      h.an(this.gTW.gTV, this.gTW.gTV.getString(2131165318));
      return;
    }
    ContactRemarkInfoViewUI.e(this.gTW.gTV);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cj
 * JD-Core Version:    0.6.2
 */
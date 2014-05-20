package com.tencent.mm.ui.contact;

import android.widget.ImageView;
import com.tencent.mm.ae.d;

final class ci
  implements d
{
  ci(ContactRemarkInfoViewUI paramContactRemarkInfoViewUI)
  {
  }

  public final void X(boolean paramBoolean)
  {
    ContactRemarkInfoViewUI.f(this.gTV).post(new cj(this, paramBoolean));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ci
 * JD-Core Version:    0.6.2
 */
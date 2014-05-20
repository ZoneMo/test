package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.animation.AnimationUtils;
import com.tencent.mm.sdk.platformtools.aa;

final class u
  implements Runnable
{
  u(m paramm)
  {
  }

  public final void run()
  {
    aa.d("MicroMsg.AddressUI", "post to first init finish");
    View localView = this.gSV.findViewById(2131363964);
    localView.setVisibility(8);
    localView.startAnimation(AnimationUtils.loadAnimation(this.gSV.aal(), 2130968607));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.u
 * JD-Core Version:    0.6.2
 */
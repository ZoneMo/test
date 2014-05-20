package com.tencent.mm.ui.conversation;

import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.platformtools.ab;
import com.tencent.mm.ui.tools.ds;
import com.tencent.mm.ui.tools.dz;

final class ar
  implements Runnable
{
  ar(aq paramaq)
  {
  }

  public final void run()
  {
    if (MainUI.n(this.gZL.gZI) != null)
    {
      MainUI.n(this.gZL.gZI).setVisibility(8);
      MainUI.n(this.gZL.gZI).removeAllViews();
    }
    ab localab = MainUI.o(this.gZL.gZI).uQ();
    if (localab != null)
    {
      MainUI.n(this.gZL.gZI).setVisibility(0);
      LinearLayout localLinearLayout = dz.a(this.gZL.gZI.f(), localab);
      MainUI.n(this.gZL.gZI).addView(localLinearLayout, new LinearLayout.LayoutParams(-1, -2));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ar
 * JD-Core Version:    0.6.2
 */
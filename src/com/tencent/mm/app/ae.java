package com.tencent.mm.app;

import android.content.res.Resources;
import com.tencent.mm.pluginsdk.ac;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

final class ae
  implements r
{
  ae(ad paramad, String paramString, MMActivity paramMMActivity)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (paramBoolean)
    {
      aq.apx().ap(this.bLx, paramString);
      aq.apx().afA();
      h.an(this.bLy, this.bLy.getResources().getString(2131167783));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.ae
 * JD-Core Version:    0.6.2
 */
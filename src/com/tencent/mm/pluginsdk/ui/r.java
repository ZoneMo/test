package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.content.res.Resources;
import com.tencent.mm.c;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.cv;

final class r
  implements cv
{
  private r(GetHdHeadImageGalleryView paramGetHdHeadImageGalleryView)
  {
  }

  public final void aro()
  {
    if ((GetHdHeadImageGalleryView.b(this.fkW) != null) && (GetHdHeadImageGalleryView.c(this.fkW) != null))
    {
      String[] arrayOfString = this.fkW.getContext().getResources().getStringArray(c.Zd);
      h.b(this.fkW.getContext(), null, arrayOfString, "", new s(this));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.r
 * JD-Core Version:    0.6.2
 */
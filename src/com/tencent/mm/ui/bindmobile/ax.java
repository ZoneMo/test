package com.tencent.mm.ui.bindmobile;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ap;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ar;
import java.util.List;

final class ax
  implements ar
{
  ax(FindMContactIntroUI paramFindMContactIntroUI)
  {
  }

  public final boolean ve()
  {
    FindMContactIntroUI.a(this.gJj, c.aQ(this.gJj));
    StringBuilder localStringBuilder = new StringBuilder("tigerreg mobileList size ");
    if (FindMContactIntroUI.k(this.gJj) == null);
    for (int i = 0; ; i = FindMContactIntroUI.k(this.gJj).size())
    {
      aa.d("MicroMsg.FindMContactIntroUI", i);
      return true;
    }
  }

  public final boolean vf()
  {
    if ((FindMContactIntroUI.k(this.gJj) != null) && (FindMContactIntroUI.k(this.gJj).size() != 0))
    {
      FindMContactIntroUI.a(this.gJj, new ap(FindMContactIntroUI.c(this.gJj), FindMContactIntroUI.k(this.gJj)));
      be.uA().d(FindMContactIntroUI.l(this.gJj));
    }
    while (true)
    {
      return false;
      if (FindMContactIntroUI.g(this.gJj) != null)
      {
        FindMContactIntroUI.g(this.gJj).dismiss();
        FindMContactIntroUI.h(this.gJj);
      }
      FindMContactIntroUI.b(this.gJj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ax
 * JD-Core Version:    0.6.2
 */
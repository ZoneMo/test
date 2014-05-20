package com.tencent.mm.ui.openapi;

import android.app.Activity;
import android.graphics.Bitmap;
import com.tencent.mm.an.a;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;

final class i
  implements f
{
  i(AppProfileUI paramAppProfileUI)
  {
  }

  public final String aKM()
  {
    return l.c(this.hcS.aal(), AppProfileUI.a(this.hcS));
  }

  public final Bitmap aKN()
  {
    return l.b(AppProfileUI.a(this.hcS).field_appId, 1, a.getDensity(this.hcS));
  }

  public final String aKP()
  {
    return l.d(this.hcS.aal(), AppProfileUI.a(this.hcS));
  }

  public final String ee(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2131165860; ; i = 2131165859)
      return this.hcS.aal().getString(i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.openapi.i
 * JD-Core Version:    0.6.2
 */
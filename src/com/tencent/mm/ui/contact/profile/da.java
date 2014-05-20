package com.tencent.mm.ui.contact.profile;

import com.tencent.mm.ah.b;
import com.tencent.mm.ah.k;
import com.tencent.mm.pluginsdk.ui.applet.f;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;

final class da
  implements f
{
  da(cx paramcx)
  {
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    if (paramBoolean1)
    {
      this.gXt.gXk.ckD.ah("show_btn");
      this.gXt.gXk.ckD.Ei();
      cx.a(this.gXt);
      return;
    }
    if (paramBoolean2)
    {
      k.Dy().v(paramString1, 2);
      return;
    }
    aa.e("MicroMsg.NormalUserFooterPreference", "canAddContact fail, username = " + paramString1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.da
 * JD-Core Version:    0.6.2
 */
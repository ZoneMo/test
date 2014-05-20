package com.tencent.mm.ui.bindmobile;

import android.content.Intent;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.model.v;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.friend.cw;

final class b
  implements cw
{
  b(BindMContactIntroUI paramBindMContactIntroUI, String paramString)
  {
  }

  public final void mN(int paramInt)
  {
    if (paramInt == 1)
      if (BindMContactIntroUI.f(this.gIR))
      {
        if (!v.to())
        {
          localho = new ho();
          localho.bRi.bRj = true;
          localho.bRi.bRk = true;
          com.tencent.mm.sdk.b.a.ayH().f(localho);
        }
        BindMContactIntroUI.g(this.gIR);
        localIntent2 = new Intent();
        localIntent2.addFlags(67108864);
        com.tencent.mm.plugin.a.a.cHS.d(this.gIR, localIntent2);
      }
    while (paramInt != 2)
    {
      ho localho;
      Intent localIntent2;
      return;
      MMWizardActivity.j(this.gIR, new Intent(this.gIR, BindMContactStatusUI.class).putExtra("is_bind_for_contact_sync", BindMContactIntroUI.h(this.gIR)));
      return;
    }
    Intent localIntent1 = new Intent(this.gIR, BindMContactVerifyUI.class);
    localIntent1.putExtra("bindmcontact_mobile", this.gvE);
    localIntent1.putExtra("is_bind_for_safe_device", BindMContactIntroUI.f(this.gIR));
    localIntent1.putExtra("is_bind_for_contact_sync", BindMContactIntroUI.h(this.gIR));
    MMWizardActivity.j(this.gIR, localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.b
 * JD-Core Version:    0.6.2
 */
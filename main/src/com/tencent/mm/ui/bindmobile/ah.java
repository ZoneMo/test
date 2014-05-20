package com.tencent.mm.ui.bindmobile;

import android.content.Intent;
import android.widget.CheckBox;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.cw;

final class ah
  implements cw
{
  ah(BindMContactUI paramBindMContactUI, String paramString)
  {
  }

  public final void mN(int paramInt)
  {
    if (paramInt == 1)
      if (BindMContactUI.h(this.gJb))
      {
        if (!v.to())
        {
          localho = new ho();
          localho.bRi.bRj = true;
          localho.bRi.bRk = true;
          com.tencent.mm.sdk.b.a.ayH().f(localho);
        }
        BindMContactUI.i(this.gJb);
        localIntent2 = new Intent();
        localIntent2.addFlags(67108864);
        com.tencent.mm.plugin.a.a.cHS.d(this.gJb, localIntent2);
      }
    while (paramInt != 2)
    {
      ho localho;
      Intent localIntent2;
      return;
      if (BindMContactUI.j(this.gJb))
      {
        BindMContactUI localBindMContactUI = this.gJb;
        String str = this.gJb.getString(n.bwA);
        h.an(localBindMContactUI, str);
        MMWizardActivity.j(this.gJb, new Intent(this.gJb, BindMContactStatusUI.class));
        return;
      }
      MMWizardActivity.j(this.gJb, new Intent(this.gJb, BindMContactStatusUI.class));
      return;
    }
    Intent localIntent1 = new Intent(this.gJb, BindMContactVerifyUI.class);
    localIntent1.putExtra("bindmcontact_mobile", this.gvE);
    localIntent1.putExtra("is_bind_for_safe_device", BindMContactUI.h(this.gJb));
    localIntent1.putExtra("is_bind_for_contact_sync", BindMContactUI.k(this.gJb));
    localIntent1.putExtra("is_bind_for_change_mobile", BindMContactUI.j(this.gJb));
    if (BindMContactUI.l(this.gJb) != null)
      localIntent1.putExtra("BIND_FIND_ME_BY_MOBILE", BindMContactUI.l(this.gJb).isChecked());
    localIntent1.putExtra("BIND_FOR_QQ_REG", BindMContactUI.m(this.gJb));
    MMWizardActivity.j(this.gJb, localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.ah
 * JD-Core Version:    0.6.2
 */
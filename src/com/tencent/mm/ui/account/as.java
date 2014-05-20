package com.tencent.mm.ui.account;

import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;

final class as
  implements Runnable
{
  as(FacebookLoginUI paramFacebookLoginUI)
  {
  }

  public final void run()
  {
    int i;
    if (cj.a((Integer)be.uz().sr().get(65833), 0) > 0)
    {
      i = 1;
      if (i == 0)
        break label84;
      Intent localIntent2 = a.cHS.w(this.gqc);
      localIntent2.addFlags(67108864);
      MMWizardActivity.b(this.gqc, new Intent(this.gqc, BindMContactIntroUI.class), localIntent2);
    }
    while (true)
    {
      this.gqc.finish();
      return;
      i = 0;
      break;
      label84: Intent localIntent1 = a.cHS.w(this.gqc);
      localIntent1.addFlags(67108864);
      this.gqc.startActivity(localIntent1);
      com.tencent.mm.plugin.a.b.jdMethod_if(be.uv() + "," + this.gqc.getClass().getName() + ",L14," + be.ds("L14") + ",4");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.as
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.account;

import android.content.Intent;
import com.tencent.mm.a.c;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.bindmobile.FindMContactIntroUI;

final class jo
  implements Runnable
{
  jo(RegSetInfoUI paramRegSetInfoUI, x paramx, String paramString1, String paramString2, int paramInt)
  {
  }

  public final void run()
  {
    RegSetInfoUI.b(this.gtZ, ((ad)this.cmw).Cx());
    bd.cik.s("login_user_name", this.gub);
    c.deleteFile(h.ggB + "temp.avatar");
    if ((this.guc != null) && (this.guc.contains("0")))
    {
      b.ie("R300_100_phone");
      Intent localIntent2 = new Intent(this.gtZ, FindMContactIntroUI.class);
      localIntent2.addFlags(67108864);
      localIntent2.putExtra("regsetinfo_ticket", RegSetInfoUI.g(this.gtZ));
      localIntent2.putExtra("regsetinfo_NextStep", this.guc);
      localIntent2.putExtra("regsetinfo_NextStyle", this.gud);
      Intent localIntent3 = a.cHS.w(this.gtZ);
      localIntent3.addFlags(67108864);
      MMWizardActivity.b(this.gtZ, localIntent2, localIntent3);
      this.gtZ.finish();
      return;
    }
    Intent localIntent1 = a.cHS.w(this.gtZ);
    localIntent1.addFlags(67108864);
    this.gtZ.startActivity(localIntent1);
    b.jdMethod_if(be.uv() + "," + this.gtZ.getClass().getName() + ",R200_900_phone," + be.ds("R200_900_phone") + ",4");
    this.gtZ.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jo
 * JD-Core Version:    0.6.2
 */
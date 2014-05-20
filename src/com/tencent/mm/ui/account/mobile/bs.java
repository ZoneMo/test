package com.tencent.mm.ui.account.mobile;

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

final class bs
  implements Runnable
{
  bs(MobileLoginOrForceReg paramMobileLoginOrForceReg, x paramx, String paramString)
  {
  }

  public final void run()
  {
    MobileLoginOrForceReg.a(this.gwx, ((ad)this.cmw).Cx());
    bd.cik.s("login_user_name", this.gub);
    c.deleteFile(h.ggB + "temp.avatar");
    Intent localIntent = a.cHS.w(this.gwx);
    localIntent.addFlags(67108864);
    this.gwx.startActivity(localIntent);
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_600," + be.ds("R200_600") + ",4");
    this.gwx.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.bs
 * JD-Core Version:    0.6.2
 */
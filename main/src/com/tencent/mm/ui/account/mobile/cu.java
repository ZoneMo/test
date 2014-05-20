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

final class cu
  implements Runnable
{
  cu(cn paramcn, x paramx, String paramString)
  {
  }

  public final void run()
  {
    cn.a(this.gwJ, ((ad)this.cmw).Cx());
    bd.cik.s("login_user_name", this.gub);
    c.deleteFile(h.ggB + "temp.avatar");
    Intent localIntent = a.cHS.w(cn.a(this.gwJ));
    localIntent.addFlags(67108864);
    cn.a(this.gwJ).startActivity(localIntent);
    cn.a(this.gwJ).finish();
    b.ie("RE900_100");
    b.b(false, be.uv() + "," + getClass().getName() + ",RE200_300," + be.ds("RE200_300") + ",4");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cu
 * JD-Core Version:    0.6.2
 */
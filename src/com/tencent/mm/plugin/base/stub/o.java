package com.tencent.mm.plugin.base.stub;

import android.content.Context;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.t;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

public final class o
{
  private String appId;
  private String cOp;
  private r cOq;
  private Context context;

  public o(Context paramContext, String paramString1, String paramString2, r paramr)
  {
    this.context = paramContext;
    this.appId = paramString1;
    this.cOp = paramString2;
    this.cOq = paramr;
  }

  public final void IB()
  {
    if ((this.cOp == null) || (this.cOp.length() == 0))
    {
      aa.w("MicroMsg.OpenIdChecker", "doCheck, openId is null");
      this.cOq.ae(true);
      return;
    }
    k localk = l.F(this.appId, false);
    if (localk == null)
    {
      aa.e("MicroMsg.OpenIdChecker", "doCheck fail, local app is null, appId = " + this.appId);
      this.cOq.ae(true);
      return;
    }
    if (au.hX(localk.field_openId))
    {
      aa.w("MicroMsg.OpenIdChecker", "doCheck fail, local openId is null, appId = " + this.appId);
      aa.d("MicroMsg.OpenIdChecker", "doCheck, trigger getappsetting, appId = " + this.appId);
      ba.aqj().eQ(this.appId);
      this.cOq.ae(true);
      return;
    }
    if (this.cOp.equalsIgnoreCase(localk.field_openId))
    {
      aa.d("MicroMsg.OpenIdChecker", "doCheck succ, appId = " + this.appId);
      this.cOq.ae(true);
      return;
    }
    aa.w("MicroMsg.OpenIdChecker", "doCheck fail, appId = " + this.appId + ", openId = " + this.cOp + ", localOpenId = " + localk.field_openId);
    h.b(this.context, 2131166855, 2131167675, new p(this), new q(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.o
 * JD-Core Version:    0.6.2
 */
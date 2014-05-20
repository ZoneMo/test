package com.tencent.mm.sdk.d;

import android.os.Bundle;

public final class a extends com.tencent.mm.sdk.c.a
{
  public String appId;
  public String fbi;
  public b fbu;
  public String gcc;
  public String gcd;
  public String gce;
  public String gcf;
  public String gcg;
  public String gch;

  public final int getType()
  {
    return 5;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putString("_wxapi_payreq_appid", this.appId);
    paramBundle.putString("_wxapi_payreq_partnerid", this.fbi);
    paramBundle.putString("_wxapi_payreq_prepayid", this.gcc);
    paramBundle.putString("_wxapi_payreq_noncestr", this.gcd);
    paramBundle.putString("_wxapi_payreq_timestamp", this.gce);
    paramBundle.putString("_wxapi_payreq_packagevalue", this.gcf);
    paramBundle.putString("_wxapi_payreq_sign", this.gcg);
    paramBundle.putString("_wxapi_payreq_extdata", this.gch);
    if (this.fbu != null)
    {
      b localb = this.fbu;
      paramBundle.putString("_wxapi_payoptions_callback_classname", localb.gci);
      paramBundle.putInt("_wxapi_payoptions_callback_flags", localb.gcj);
    }
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.appId = paramBundle.getString("_wxapi_payreq_appid");
    this.fbi = paramBundle.getString("_wxapi_payreq_partnerid");
    this.gcc = paramBundle.getString("_wxapi_payreq_prepayid");
    this.gcd = paramBundle.getString("_wxapi_payreq_noncestr");
    this.gce = paramBundle.getString("_wxapi_payreq_timestamp");
    this.gcf = paramBundle.getString("_wxapi_payreq_packagevalue");
    this.gcg = paramBundle.getString("_wxapi_payreq_sign");
    this.gch = paramBundle.getString("_wxapi_payreq_extdata");
    this.fbu = new b();
    this.fbu.i(paramBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.d.a
 * JD-Core Version:    0.6.2
 */
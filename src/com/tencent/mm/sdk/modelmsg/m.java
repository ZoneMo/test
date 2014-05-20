package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.a;

public final class m extends a
{
  public String dHm;
  public String doZ;
  public WXMediaMessage gca;

  public final int getType()
  {
    return 4;
  }

  public final void h(Bundle paramBundle)
  {
    Bundle localBundle = o.b(this.gca);
    super.h(localBundle);
    paramBundle.putString("_wxapi_showmessage_req_lang", this.doZ);
    paramBundle.putString("_wxapi_showmessage_req_country", this.dHm);
    paramBundle.putAll(localBundle);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.doZ = paramBundle.getString("_wxapi_showmessage_req_lang");
    this.dHm = paramBundle.getString("_wxapi_showmessage_req_country");
    this.gca = o.u(paramBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.m
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.b;

public final class h extends b
{
  public String cnI;
  public String code;
  public String dHm;
  public String doZ;
  public String url;

  public final int getType()
  {
    return 1;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putString("_wxapi_sendauth_resp_token", this.code);
    paramBundle.putString("_wxapi_sendauth_resp_state", this.cnI);
    paramBundle.putString("_wxapi_sendauth_resp_url", this.url);
    paramBundle.putString("_wxapi_sendauth_resp_lang", this.doZ);
    paramBundle.putString("_wxapi_sendauth_resp_country", this.dHm);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.code = paramBundle.getString("_wxapi_sendauth_resp_token");
    this.cnI = paramBundle.getString("_wxapi_sendauth_resp_state");
    this.url = paramBundle.getString("_wxapi_sendauth_resp_url");
    this.doZ = paramBundle.getString("_wxapi_sendauth_resp_lang");
    this.dHm = paramBundle.getString("_wxapi_sendauth_resp_country");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.h
 * JD-Core Version:    0.6.2
 */
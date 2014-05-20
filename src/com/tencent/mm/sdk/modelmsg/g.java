package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.a;

public final class g extends a
{
  public String cnI;
  public String gcb;

  public g()
  {
  }

  public g(Bundle paramBundle)
  {
    i(paramBundle);
  }

  public final int getType()
  {
    return 1;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putString("_wxapi_sendauth_req_scope", this.gcb);
    paramBundle.putString("_wxapi_sendauth_req_state", this.cnI);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.gcb = paramBundle.getString("_wxapi_sendauth_req_scope");
    this.cnI = paramBundle.getString("_wxapi_sendauth_req_state");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.g
 * JD-Core Version:    0.6.2
 */
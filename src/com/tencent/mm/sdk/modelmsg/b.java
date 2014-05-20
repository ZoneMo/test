package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.a;

public final class b extends a
{
  public String dHm;
  public String doZ;
  public String username;

  public final int getType()
  {
    return 3;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putString("_wxapi_getmessage_req_lang", this.doZ);
    paramBundle.putString("_wxapi_getmessage_req_country", this.dHm);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.doZ = paramBundle.getString("_wxapi_getmessage_req_lang");
    this.dHm = paramBundle.getString("_wxapi_getmessage_req_country");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.b
 * JD-Core Version:    0.6.2
 */
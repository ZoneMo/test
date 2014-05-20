package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.a;

public final class j extends a
{
  public int bLN;
  public WXMediaMessage gca;

  public j()
  {
  }

  public j(Bundle paramBundle)
  {
    i(paramBundle);
  }

  public final int getType()
  {
    return 2;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putAll(o.b(this.gca));
    paramBundle.putInt("_wxapi_sendmessagetowx_req_scene", this.bLN);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.gca = o.u(paramBundle);
    this.bLN = paramBundle.getInt("_wxapi_sendmessagetowx_req_scene");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.j
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.sdk.d;

import android.os.Bundle;
import com.tencent.mm.sdk.c.b;

public final class c extends b
{
  public String gcc;
  public String gch;
  public String gck;

  public final int getType()
  {
    return 5;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putString("_wxapi_payresp_prepayid", this.gcc);
    paramBundle.putString("_wxapi_payresp_returnkey", this.gck);
    paramBundle.putString("_wxapi_payresp_extdata", this.gch);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.gcc = paramBundle.getString("_wxapi_payresp_prepayid");
    this.gck = paramBundle.getString("_wxapi_payresp_returnkey");
    this.gch = paramBundle.getString("_wxapi_payresp_extdata");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.d.c
 * JD-Core Version:    0.6.2
 */
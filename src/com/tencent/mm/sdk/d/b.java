package com.tencent.mm.sdk.d;

import android.os.Bundle;

public final class b
{
  public String gci;
  public int gcj = -1;

  public final void i(Bundle paramBundle)
  {
    this.gci = paramBundle.getString("_wxapi_payoptions_callback_classname");
    this.gcj = paramBundle.getInt("_wxapi_payoptions_callback_flags", -1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.d.b
 * JD-Core Version:    0.6.2
 */
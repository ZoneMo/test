package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.b;

public final class c extends b
{
  public WXMediaMessage gca;

  public c()
  {
  }

  public c(Bundle paramBundle)
  {
    i(paramBundle);
  }

  public final int getType()
  {
    return 3;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putAll(o.b(this.gca));
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.gca = o.u(paramBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.c
 * JD-Core Version:    0.6.2
 */
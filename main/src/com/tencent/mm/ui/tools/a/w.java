package com.tencent.mm.ui.tools.a;

import android.content.Context;
import java.util.concurrent.ExecutorService;

public final class w
{
  private final Context context;
  private e hpY;
  private boolean hqB;
  private ExecutorService hqm;

  public w(Context paramContext)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("Context must not be null.");
    this.context = paramContext.getApplicationContext();
  }

  public final u aOL()
  {
    Context localContext = this.context;
    if (this.hpY == null)
      this.hpY = new t(localContext);
    if (this.hqm == null)
      this.hqm = new aa();
    af localaf = new af(this.hpY);
    return new u(localContext, new n(localContext, this.hqm, u.hqC, this.hpY, localaf), this.hpY, localaf, this.hqB, (byte)0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.w
 * JD-Core Version:    0.6.2
 */
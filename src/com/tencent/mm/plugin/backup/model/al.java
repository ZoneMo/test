package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.sdk.platformtools.aa;

public class al extends Thread
{
  private boolean cKX = false;

  final boolean Hs()
  {
    try
    {
      if (this.cKX)
        aa.w("MicroMsg.MMThread", "the thread has beed killed!!");
      boolean bool = this.cKX;
      return bool;
    }
    finally
    {
    }
  }

  public final void kill()
  {
    try
    {
      this.cKX = true;
      aa.i("MicroMsg.MMThread", "interrupt before");
      interrupt();
      aa.i("MicroMsg.MMThread", "interrupt after");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.al
 * JD-Core Version:    0.6.2
 */
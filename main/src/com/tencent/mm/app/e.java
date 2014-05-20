package com.tencent.mm.app;

import com.tencent.mm.sdk.platformtools.aa;

final class e
  implements Runnable
{
  e(d paramd)
  {
  }

  public final void run()
  {
    if (!WorkerProfile.nM().nN())
    {
      aa.d("MicroMsg.INIT", "KEVIN WelcomeUI: " + WorkerProfile.nM().nO());
      if (c.a(this.bKQ.bKP))
        this.bKQ.bKP.nA();
      return;
    }
    WorkerProfile.nM().nL();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.e
 * JD-Core Version:    0.6.2
 */
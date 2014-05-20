package com.tencent.mapapi.map;

import java.util.concurrent.Semaphore;

final class v
{
  protected boolean Uk = true;
  protected Semaphore VR = new Semaphore(0, false);
  Thread[] VS = null;
  x VT = null;
  private Runnable VU = new w(this);
  protected volatile boolean c = true;

  public v(int paramInt, x paramx)
  {
    if (paramInt <= 0)
      return;
    this.VS = new Thread[paramInt];
    while (i < paramInt)
    {
      this.VS[i] = new Thread(this.VU);
      this.VS[i].setDaemon(true);
      i++;
    }
    this.VT = paramx;
  }

  private void mB()
  {
    this.Uk = false;
    this.VR.release(100);
  }

  protected final void bb(int paramInt)
  {
    if ((!this.Uk) || (this.VR == null) || (this.VR.availablePermits() > 100))
      return;
    this.VR.release(paramInt);
  }

  public final void lX()
  {
    if (this.VS == null);
    while (true)
    {
      return;
      int i = this.VS.length;
      if (i != 0)
        for (int j = 0; j < i; j++)
          if (this.VS[j] != null)
            this.VS[j].start();
    }
  }

  public final void md()
  {
    this.c = false;
    if (this.VS == null);
    int i;
    int j;
    do
    {
      return;
      mB();
      i = this.VS.length;
      j = 0;
    }
    while (i == 0);
    while (j < i)
    {
      this.VS[j] = null;
      j++;
    }
    this.VS = null;
    this.VR = null;
  }

  public final void me()
  {
    this.c = false;
    if (this.VS == null);
    int i;
    int j;
    do
    {
      return;
      mB();
      i = this.VS.length;
      j = 0;
    }
    while (i == 0);
    while (true)
    {
      if (j < i)
        if (this.VS[j] != null)
          this.VS[j].interrupt();
      try
      {
        this.VS[j].join();
        label61: this.VS[j] = null;
        j++;
        continue;
        this.VS = null;
        this.VR = null;
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label61;
      }
    }
  }

  final void ms()
  {
    Thread.yield();
    if (this.VR == null);
    while (true)
    {
      return;
      try
      {
        this.VR.acquire();
        label18: if (this.VT == null)
          continue;
        this.VT.lX();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label18;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.v
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.sdk.e;

import android.os.Looper;

public abstract class ai
{
  private final am gfD = new aj(this);
  private final am gfE = new ak(this);

  public final void Ei()
  {
    this.gfD.ah("*");
    this.gfD.Ei();
  }

  public final void a(al paramal, Looper paramLooper)
  {
    this.gfD.a(paramal, paramLooper);
  }

  public final void e(al paramal)
  {
    this.gfD.a(paramal, Looper.getMainLooper());
  }

  public final void f(al paramal)
  {
    this.gfD.remove(paramal);
  }

  public void lock()
  {
    this.gfD.lock();
  }

  public final void th(String paramString)
  {
    this.gfD.ah(paramString);
    this.gfD.Ei();
  }

  public void unlock()
  {
    this.gfD.unlock();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.e.ai
 * JD-Core Version:    0.6.2
 */
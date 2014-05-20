package com.tencent.map.location;

final class t
  implements Runnable
{
  t(s params)
  {
  }

  public final void run()
  {
    if (System.currentTimeMillis() - s.a(this.UF) < 8000L)
      return;
    if ((s.b(this.UF).lZ()) && (s.b(this.UF).mh()))
    {
      s.b(this.UF).f(0L);
      return;
    }
    s.c(this.UF);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.t
 * JD-Core Version:    0.6.2
 */
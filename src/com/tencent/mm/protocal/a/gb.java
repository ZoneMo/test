package com.tencent.mm.protocal.a;

public final class gb extends com.tencent.mm.am.a
{
  public String desc;
  public String dqp;
  public String info;
  public String title;

  public static boolean a(a.a.a.a.a parama, gb paramgb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramgb.title = parama.aPS();
      return true;
    case 2:
      paramgb.desc = parama.aPS();
      return true;
    case 3:
      paramgb.dqp = parama.aPS();
      return true;
    case 4:
    }
    paramgb.info = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.title != null)
      parama.A(1, this.title);
    if (this.desc != null)
      parama.A(2, this.desc);
    if (this.dqp != null)
      parama.A(3, this.dqp);
    if (this.info != null)
      parama.A(4, this.info);
  }

  public final int ns()
  {
    String str = this.title;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.title);
    if (this.desc != null)
      i += a.a.a.a.z(2, this.desc);
    if (this.dqp != null)
      i += a.a.a.a.z(3, this.dqp);
    if (this.info != null)
      i += a.a.a.a.z(4, this.info);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gb
 * JD-Core Version:    0.6.2
 */
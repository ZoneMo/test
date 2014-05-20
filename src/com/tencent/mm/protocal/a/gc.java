package com.tencent.mm.protocal.a;

public final class gc extends com.tencent.mm.am.a
{
  private String desc;
  private String dqp;
  public boolean fGE = false;
  public boolean fGF = false;
  public boolean fHK = false;
  private String fIA;
  public boolean fIB = false;
  private int fIC;
  public boolean fID = false;
  private String title;

  public static boolean a(a.a.a.a.a parama, gc paramgc, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramgc.title = parama.aPS();
      paramgc.fGE = true;
      return true;
    case 2:
      paramgc.desc = parama.aPS();
      paramgc.fGF = true;
      return true;
    case 3:
      paramgc.fIA = parama.aPS();
      paramgc.fIB = true;
      return true;
    case 4:
      paramgc.dqp = parama.aPS();
      paramgc.fHK = true;
      return true;
    case 5:
    }
    paramgc.fIC = parama.aPQ();
    paramgc.fID = true;
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.title != null)
      parama.A(1, this.title);
    if (this.desc != null)
      parama.A(2, this.desc);
    if (this.fIA != null)
      parama.A(3, this.fIA);
    if (this.dqp != null)
      parama.A(4, this.dqp);
    if (this.fID == true)
      parama.by(5, this.fIC);
  }

  public final String axH()
  {
    return this.dqp;
  }

  public final String ayd()
  {
    return this.fIA;
  }

  public final int aye()
  {
    return this.fIC;
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final gc lt(int paramInt)
  {
    this.fIC = paramInt;
    this.fID = true;
    return this;
  }

  public final int ns()
  {
    String str = this.title;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.title);
    if (this.desc != null)
      i += a.a.a.a.z(2, this.desc);
    if (this.fIA != null)
      i += a.a.a.a.z(3, this.fIA);
    if (this.dqp != null)
      i += a.a.a.a.z(4, this.dqp);
    if (this.fID == true)
      i += a.a.a.a.br(5, this.fIC);
    return i;
  }

  public final gc sj(String paramString)
  {
    this.title = paramString;
    this.fGE = true;
    return this;
  }

  public final gc sk(String paramString)
  {
    this.desc = paramString;
    this.fGF = true;
    return this;
  }

  public final gc sl(String paramString)
  {
    this.fIA = paramString;
    this.fIB = true;
    return this;
  }

  public final gc sm(String paramString)
  {
    this.dqp = paramString;
    this.fHK = true;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gc
 * JD-Core Version:    0.6.2
 */
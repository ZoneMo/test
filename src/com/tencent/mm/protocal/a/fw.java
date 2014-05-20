package com.tencent.mm.protocal.a;

public final class fw extends com.tencent.mm.am.a
{
  private String desc;
  private String dqp;
  public boolean fGE = false;
  public boolean fGF = false;
  public boolean fHK = false;
  public boolean fHL = false;
  public boolean fHM = false;
  private String info;
  private String title;
  private int type;

  public static boolean a(a.a.a.a.a parama, fw paramfw, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfw.title = parama.aPS();
      paramfw.fGE = true;
      return true;
    case 2:
      paramfw.desc = parama.aPS();
      paramfw.fGF = true;
      return true;
    case 3:
      paramfw.dqp = parama.aPS();
      paramfw.fHK = true;
      return true;
    case 4:
      paramfw.info = parama.aPS();
      paramfw.fHL = true;
      return true;
    case 5:
    }
    paramfw.type = parama.aPQ();
    paramfw.fHM = true;
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
    if (this.fHM == true)
      parama.by(5, this.type);
  }

  public final String axH()
  {
    return this.dqp;
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final String getInfo()
  {
    return this.info;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final int getType()
  {
    return this.type;
  }

  public final fw lq(int paramInt)
  {
    this.type = paramInt;
    this.fHM = true;
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
    if (this.dqp != null)
      i += a.a.a.a.z(3, this.dqp);
    if (this.info != null)
      i += a.a.a.a.z(4, this.info);
    if (this.fHM == true)
      i += a.a.a.a.br(5, this.type);
    return i;
  }

  public final fw rT(String paramString)
  {
    this.title = paramString;
    this.fGE = true;
    return this;
  }

  public final fw rU(String paramString)
  {
    this.desc = paramString;
    this.fGF = true;
    return this;
  }

  public final fw rV(String paramString)
  {
    this.dqp = paramString;
    this.fHK = true;
    return this;
  }

  public final fw rW(String paramString)
  {
    this.info = paramString;
    this.fHL = true;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fw
 * JD-Core Version:    0.6.2
 */
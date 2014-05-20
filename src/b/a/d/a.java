package b.a.d;

import java.io.OutputStream;

public final class a
{
  private final String gcb;
  private final String hzO;
  private final String hzP;
  private final String hzQ;
  private final h hzS;
  private final OutputStream hzT;

  public a(String paramString1, String paramString2, String paramString3, h paramh, String paramString4, OutputStream paramOutputStream)
  {
    this.hzO = paramString1;
    this.hzP = paramString2;
    this.hzQ = paramString3;
    this.hzS = paramh;
    this.gcb = paramString4;
    this.hzT = paramOutputStream;
  }

  public final String aRe()
  {
    return this.hzO;
  }

  public final String aRf()
  {
    return this.hzP;
  }

  public final String aRg()
  {
    return this.hzQ;
  }

  public final h aRh()
  {
    return this.hzS;
  }

  public final String aRi()
  {
    return this.gcb;
  }

  public final boolean aRj()
  {
    return this.gcb != null;
  }

  public final void u(String paramString)
  {
    String str;
    if (this.hzT != null)
      str = paramString + "\n";
    try
    {
      this.hzT.write(str.getBytes("UTF8"));
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("there were problems while writting to the debug stream", localException);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.a
 * JD-Core Version:    0.6.2
 */
package b.a.a;

import b.a.d.h;
import b.a.g.d;
import java.io.OutputStream;

public final class a
{
  private String gcb;
  private String hzO;
  private String hzP;
  private String hzQ = "oob";
  private b.a.a.a.a hzR;
  private h hzS = h.hAk;
  private OutputStream hzT = null;

  private static b.a.a.a.a g(Class paramClass)
  {
    d.a(paramClass, "Api class cannot be null");
    try
    {
      b.a.a.a.a locala = (b.a.a.a.a)paramClass.newInstance();
      return locala;
    }
    catch (Exception localException)
    {
      throw new b.a.b.b("Error while creating the Api object", localException);
    }
  }

  public final b.a.e.b aRb()
  {
    d.a(this.hzR, "You must specify a valid api through the provider() method");
    d.br(this.hzO, "You must provide an api key");
    d.br(this.hzP, "You must provide an api secret");
    return this.hzR.a(new b.a.d.a(this.hzO, this.hzP, this.hzQ, this.hzS, this.gcb, this.hzT));
  }

  public final a f(Class paramClass)
  {
    this.hzR = g(paramClass);
    return this;
  }

  public final a yi(String paramString)
  {
    d.a(paramString, "Callback can't be null");
    this.hzQ = paramString;
    return this;
  }

  public final a yj(String paramString)
  {
    d.br(paramString, "Invalid Api key");
    this.hzO = paramString;
    return this;
  }

  public final a yk(String paramString)
  {
    d.br(paramString, "Invalid Api secret");
    this.hzP = paramString;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.a.a
 * JD-Core Version:    0.6.2
 */
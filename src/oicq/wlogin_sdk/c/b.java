package oicq.wlogin_sdk.c;

public final class b
  implements Cloneable
{
  private String hzs;
  private String message;
  private String title;
  private int type;

  public b()
  {
    aQS();
  }

  public final void aQS()
  {
    this.type = 0;
    this.title = "";
    this.message = "";
    this.hzs = "";
  }

  public final Object clone()
  {
    return super.clone();
  }

  public final void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void ye(String paramString)
  {
    this.hzs = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.c.b
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.storage;

public final class cb
{
  private String gjg;
  private String user;

  public cb(String paramString)
  {
    int i = paramString.indexOf("@");
    if (i >= 0)
    {
      this.user = paramString.substring(0, i);
      this.gjg = paramString.substring(i);
      return;
    }
    this.user = paramString;
    this.gjg = "";
  }

  public final String vA(String paramString)
  {
    if (this.gjg != null)
      paramString = this.gjg;
    return paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.cb
 * JD-Core Version:    0.6.2
 */
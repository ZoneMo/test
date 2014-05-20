package com.tencent.mm.storage;

public final class aj
{
  private final String bPk;
  private final boolean cQJ;
  private final String djv;
  private boolean ghG;
  private final String name;
  private final String type;

  public aj()
  {
    this.type = "";
    this.name = "";
    this.bPk = "";
    this.djv = "";
    this.cQJ = true;
  }

  public aj(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.type = paramString1;
    this.name = paramString2;
    this.bPk = paramString3;
    this.djv = paramString4;
    this.cQJ = paramBoolean1;
    this.ghG = paramBoolean2;
  }

  public final String aBR()
  {
    if (this.djv == null)
      return "";
    return this.djv;
  }

  public final boolean aBS()
  {
    return this.cQJ;
  }

  public final String getType()
  {
    if (this.type == null)
      return "";
    return this.type;
  }

  public final String rq()
  {
    if (this.bPk == null)
      return "";
    return this.bPk;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.aj
 * JD-Core Version:    0.6.2
 */
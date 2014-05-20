package b.a.d;

import b.a.g.c;

public final class d
  implements Comparable
{
  private final String cnG;
  private final String value;

  public d(String paramString1, String paramString2)
  {
    this.cnG = paramString1;
    this.value = paramString2;
  }

  public final String aRs()
  {
    return c.encode(this.cnG).concat("=").concat(c.encode(this.value));
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    d locald;
    do
    {
      do
      {
        return false;
        if (paramObject == this)
          return true;
      }
      while (!(paramObject instanceof d));
      locald = (d)paramObject;
    }
    while ((!locald.cnG.equals(this.cnG)) || (!locald.value.equals(this.value)));
    return true;
  }

  public final int hashCode()
  {
    return this.cnG.hashCode() + this.value.hashCode();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.d
 * JD-Core Version:    0.6.2
 */
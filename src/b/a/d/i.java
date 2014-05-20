package b.a.d;

import b.a.g.d;
import java.io.Serializable;

public final class i
  implements Serializable
{
  private final String etE;
  private final String fOM;
  private final String hAn;

  public i(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }

  public i(String paramString1, String paramString2, String paramString3)
  {
    d.a(paramString1, "Token can't be null");
    d.a(paramString2, "Secret can't be null");
    this.etE = paramString1;
    this.fOM = paramString2;
    this.hAn = paramString3;
  }

  public final String aRw()
  {
    return this.fOM;
  }

  public final String ank()
  {
    return this.etE;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    i locali;
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      locali = (i)paramObject;
    }
    while ((this.etE.equals(locali.etE)) && (this.fOM.equals(locali.fOM)));
    return false;
  }

  public final int hashCode()
  {
    return 31 * this.etE.hashCode() + this.fOM.hashCode();
  }

  public final boolean isEmpty()
  {
    return ("".equals(this.etE)) && ("".equals(this.fOM));
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.etE;
    arrayOfObject[1] = this.fOM;
    return String.format("Token[%s , %s]", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.i
 * JD-Core Version:    0.6.2
 */
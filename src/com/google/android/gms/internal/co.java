package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Arrays;

public abstract class co
{
  protected final l Qa;
  protected final int Qb;
  private final int Qc;

  public co(l paraml, int paramInt)
  {
    this.Qa = ((l)i.M(paraml));
    if ((paramInt >= 0) && (paramInt < paraml.getCount()));
    for (boolean bool = true; ; bool = false)
    {
      i.F(bool);
      this.Qb = paramInt;
      this.Qc = paraml.aW(this.Qb);
      return;
    }
  }

  protected final Uri X(String paramString)
  {
    return this.Qa.e(paramString, this.Qb, this.Qc);
  }

  protected final boolean Y(String paramString)
  {
    return this.Qa.f(paramString, this.Qb, this.Qc);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof co;
    boolean bool2 = false;
    if (bool1)
    {
      co localco = (co)paramObject;
      boolean bool3 = g.b(Integer.valueOf(localco.Qb), Integer.valueOf(this.Qb));
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = g.b(Integer.valueOf(localco.Qc), Integer.valueOf(this.Qc));
        bool2 = false;
        if (bool4)
        {
          l locall1 = localco.Qa;
          l locall2 = this.Qa;
          bool2 = false;
          if (locall1 == locall2)
            bool2 = true;
        }
      }
    }
    return bool2;
  }

  protected final boolean getBoolean(String paramString)
  {
    return this.Qa.d(paramString, this.Qb, this.Qc);
  }

  protected final int getInteger(String paramString)
  {
    return this.Qa.b(paramString, this.Qb, this.Qc);
  }

  protected final long getLong(String paramString)
  {
    return this.Qa.a(paramString, this.Qb, this.Qc);
  }

  protected final String getString(String paramString)
  {
    return this.Qa.c(paramString, this.Qb, this.Qc);
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.Qb);
    arrayOfObject[1] = Integer.valueOf(this.Qc);
    arrayOfObject[2] = this.Qa;
    return Arrays.hashCode(arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.co
 * JD-Core Version:    0.6.2
 */
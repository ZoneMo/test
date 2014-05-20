package com.tencent.mapapi.map;

import java.util.ArrayList;

final class y extends am
{
  private ad VW = null;
  public boolean VX = true;
  private byte[] VY = new byte[1024];

  public y(ArrayList paramArrayList, String paramString)
  {
    super(paramArrayList, paramString);
  }

  private boolean a(byte[] paramArrayOfByte, aa paramaa)
  {
    if (paramArrayOfByte == null);
    StringBuilder localStringBuilder;
    do
    {
      return false;
      if (paramArrayOfByte.length <= 0)
        return true;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramaa.a);
      localStringBuilder.append("-");
      localStringBuilder.append(paramaa.b);
      localStringBuilder.append("-");
      localStringBuilder.append(paramaa.Uc);
    }
    while (!this.VW.Wd.b(paramArrayOfByte, localStringBuilder.toString()));
    if (this.VW != null)
      this.VW.a(paramaa);
    if ((this.VW.WI == true) && (this.VW != null) && (this.VW.We != null))
      this.VW.We.a(paramArrayOfByte, paramaa.a, paramaa.b, paramaa.Uc);
    return true;
  }

  public final void a(ad paramad)
  {
    this.VW = paramad;
  }

  protected final String mj()
  {
    int i = ((ArrayList)this.Wr).size();
    if (i <= 0)
      return null;
    int[] arrayOfInt = new int[3 * ((ArrayList)this.Wr).size()];
    for (int j = 0; j < i; j++)
    {
      arrayOfInt[(j * 3)] = ((aa)((ArrayList)this.Wr).get(j)).a;
      arrayOfInt[(1 + j * 3)] = ((aa)((ArrayList)this.Wr).get(j)).b;
      arrayOfInt[(2 + j * 3)] = ((aa)((ArrayList)this.Wr).get(j)).Uc;
    }
    return this.VW.WN.a(this.VW.mE(), arrayOfInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.y
 * JD-Core Version:    0.6.2
 */
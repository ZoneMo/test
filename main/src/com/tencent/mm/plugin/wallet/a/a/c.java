package com.tencent.mm.plugin.wallet.a.a;

import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.al;

public final class c
{
  int dti;
  String dtj;

  private c(int paramInt, String paramString)
  {
    this.dti = paramInt;
    this.dtj = paramString;
  }

  public static c jH(int paramInt)
  {
    int i = -1;
    int j;
    switch (paramInt)
    {
    default:
      j = n.boV;
    case 0:
    case -1005:
    case 1:
    case 3:
    case 4:
    case 7:
    case 103:
    case 8:
    case -1010:
    case -1006:
    case -1003:
    case -1002:
    case -2001:
    case -2002:
    }
    while (true)
    {
      return new c(i, al.getContext().getString(j));
      j = n.boU;
      i = 0;
      continue;
      i = 100000000;
      j = n.boW;
      continue;
      j = n.boO;
      continue;
      j = n.boT;
      continue;
      i = 103;
      j = n.boR;
      continue;
      j = n.boS;
      continue;
      j = n.boN;
      continue;
      i = 100000004;
      j = n.boP;
      continue;
      i = 1000000093;
      j = n.boQ;
    }
  }

  public static c jI(int paramInt)
  {
    return o(paramInt, "");
  }

  public static c o(int paramInt, String paramString)
  {
    int i = -1;
    int j;
    switch (paramInt)
    {
    default:
      j = n.bIw;
    case 0:
    case 1:
    case 100000000:
    case 103:
      while (true)
      {
        return new c(i, al.getContext().getString(j));
        j = n.bIv;
        i = 0;
        continue;
        i = 100000000;
        j = n.bIx;
        continue;
        i = 103;
        j = n.bIu;
      }
    case 105:
    }
    return new c(i, paramString);
  }

  public final int QC()
  {
    return this.dti;
  }

  public final boolean QE()
  {
    return (this.dti == 7) || (this.dti == 103);
  }

  public final String getMessage()
  {
    return this.dtj;
  }

  public final boolean isFailure()
  {
    if (this.dti == 0);
    for (int i = 1; (i == 0) && (!QE()); i = 0)
      return true;
    return false;
  }

  public final String toString()
  {
    return "IabResult: " + this.dtj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.a.a.c
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.voicetranstext;

import com.tencent.mm.protocal.a.zi;

public final class d
{
  public static zi oF(int paramInt)
  {
    zi localzi = new zi();
    switch (paramInt)
    {
    default:
      localzi.fZE = 0;
      localzi.fYm = 0;
      localzi.fYo = 0;
      localzi.fZD = 0;
      return localzi;
    case 0:
      localzi.fZE = 8000;
      localzi.fYm = 16;
      localzi.fYo = 5;
      localzi.fZD = 5;
      return localzi;
    case 1:
    }
    localzi.fZE = 16000;
    localzi.fYm = 16;
    localzi.fYo = 4;
    localzi.fZD = 4;
    return localzi;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.d
 * JD-Core Version:    0.6.2
 */
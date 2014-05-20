package com.tencent.mm.console;

import com.tencent.mm.model.cd;
import com.tencent.mm.network.a.f;
import com.tencent.mm.network.r;
import com.tencent.mm.sdk.platformtools.aa;

final class d
  implements cd
{
  public final void a(r paramr)
  {
    if (paramr == null);
    while (true)
    {
      return;
      String[] arrayOfString1 = paramr.getIPsString(true);
      for (int i = 0; i < arrayOfString1.length; i++)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(i);
        arrayOfObject3[1] = arrayOfString1[i];
        aa.e("MicroMsg.CommandProcessor", "dkip long:%d  %s", arrayOfObject3);
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(i);
        arrayOfObject4[1] = f.hG(arrayOfString1[i]).toString();
        aa.e("MicroMsg.CommandProcessor", "dkip long:%d %s", arrayOfObject4);
      }
      String[] arrayOfString2 = paramr.getIPsString(false);
      for (int j = 0; j < arrayOfString2.length; j++)
      {
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(j);
        arrayOfObject1[1] = arrayOfString2[j];
        aa.e("MicroMsg.CommandProcessor", "dkip short:%d %s", arrayOfObject1);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(j);
        arrayOfObject2[1] = f.hG(arrayOfString2[j]).toString();
        aa.e("MicroMsg.CommandProcessor", "dkip long:%d %s", arrayOfObject2);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.d
 * JD-Core Version:    0.6.2
 */
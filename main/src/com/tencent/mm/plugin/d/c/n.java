package com.tencent.mm.plugin.d.c;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bw;

final class n
  implements bw
{
  x dZS;
  final int type;

  public n(int paramInt)
  {
    this.type = paramInt;
  }

  public final boolean ve()
  {
    this.dZS = j.hA(this.type);
    Object[] arrayOfObject = new Object[2];
    if (this.dZS == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      arrayOfObject[1] = Integer.valueOf(this.type);
      aa.f("MicroMsg.ReportManager", "doInBackground : result is null ? %B, type = %d", arrayOfObject);
      if (this.dZS == null)
        break;
      return true;
    }
    return false;
  }

  public final boolean vf()
  {
    Object[] arrayOfObject1 = new Object[2];
    if (this.dZS == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject1[0] = Boolean.valueOf(bool);
      arrayOfObject1[1] = Integer.valueOf(this.type);
      aa.f("MicroMsg.ReportManager", "onPostExecute : result is null ? %B, type = %d", arrayOfObject1);
      if (this.dZS != null)
      {
        be.uA().d(this.dZS);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.type);
        aa.e("MicroMsg.ReportManager", "do scene end, type = %d", arrayOfObject2);
      }
      return false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.n
 * JD-Core Version:    0.6.2
 */
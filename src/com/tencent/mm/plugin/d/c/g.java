package com.tencent.mm.plugin.d.c;

import com.tencent.mm.platformtools.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

final class g extends f
{
  private long dZH;

  public g(long paramLong)
  {
    this.dZH = paramLong;
  }

  protected final com.tencent.mm.plugin.d.a.g Zg()
  {
    return e.bb(false);
  }

  protected final boolean a(com.tencent.mm.plugin.d.a.f paramf)
  {
    if (paramf == null)
      return false;
    long l = cj.FC();
    if (this.dZH <= 0L)
    {
      paramf.YS();
      paramf.fDR = ((int)l);
      return true;
    }
    String str = e.WN();
    if ((!cj.hX(str)) && (l - i.a(str, String.valueOf(paramf.YY()), 0L) > this.dZH))
    {
      i.b(str, String.valueOf(paramf.YY()), l);
      paramf.YS();
      paramf.fDR = ((int)l);
      File localFile = new File(str);
      if (localFile.length() > 3145728L)
        localFile.delete();
      return true;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramf.fNl);
    arrayOfObject[1] = Integer.valueOf(paramf.YY());
    aa.f("MicroMsg.KVReportHelper", "match freq limit, logID = %d, key = %d", arrayOfObject);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.g
 * JD-Core Version:    0.6.2
 */
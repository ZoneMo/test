package com.tencent.mm.af;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;

final class j
  implements m
{
  j(e parame, String paramString)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("upload", "onSceneEnd " + ((a)paramx).getFileName() + " filepath " + this.cyr + " errCode " + paramInt2);
    File localFile;
    if (((a)paramx).getFileName().equals(this.cyr))
    {
      be.uA().b(240, e.c(this.cyo));
      e.d(this.cyo);
      if (paramInt2 == 0)
      {
        c.CD();
        c.CE();
      }
      localFile = new File(this.cyr);
    }
    try
    {
      boolean bool = localFile.delete();
      aa.d("upload", "delete " + this.cyr + " delete " + bool + " errCode " + paramInt2);
      e.CL().start();
      return;
    }
    catch (Exception localException)
    {
      e.CL().start();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.j
 * JD-Core Version:    0.6.2
 */
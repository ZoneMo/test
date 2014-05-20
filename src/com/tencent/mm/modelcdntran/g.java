package com.tencent.mm.modelcdntran;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.aw;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Map;

final class g
  implements Runnable
{
  g(b paramb, String paramString, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
  }

  public final void run()
  {
    m localm = (m)b.c(this.cph).get(this.cpj);
    if (localm == null)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.cpj;
      aa.b("MicroMsg.CDNTransportService", " task in jni get info failed mediaid:%s", arrayOfObject);
    }
    do
    {
      long l;
      do
      {
        return;
        if (this.cpk != null)
          this.cpk.mediaId = this.cpj;
        if (this.cpl != null)
          this.cpl.mediaId = this.cpj;
        if (localm.cpJ == null)
          break;
        l = cj.FD();
      }
      while ((this.cpl == null) && (this.cpk != null) && (l - localm.field_lastProgressCallbackTime < 300L));
      localm.field_lastProgressCallbackTime = l;
      n localn = localm.cpJ;
      localn.a(0, this.cpk, this.cpl);
    }
    while (this.cpl == null);
    int i;
    if ((this.cpl.field_retCode == 0) && (be.se()) && (ar.ua() != null))
    {
      i = this.cpl.field_fileLength + this.cpl.field_midimgLength + this.cpl.field_thumbimgLength;
      if (!localm.cpI)
        break label246;
      ar.ua().C(0, i);
    }
    while (true)
    {
      b.c(this.cph).remove(this.cpj);
      return;
      label246: ar.ua().C(i, 0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.g
 * JD-Core Version:    0.6.2
 */
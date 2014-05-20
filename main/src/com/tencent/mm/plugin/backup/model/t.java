package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.a.c;
import com.tencent.mm.sdk.platformtools.aa;

final class t
  implements Runnable
{
  t(s params, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    if (s.a(this.cKE))
    {
      aa.d("MicroMsg.BckDownloadInfoMgr", "infoToFileImp has been deleted");
      return;
    }
    c.a(s.b(this.cKE), this.cKD, this.cKD.length);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.t
 * JD-Core Version:    0.6.2
 */
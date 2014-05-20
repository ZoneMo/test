package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.a.c;
import com.tencent.mm.sdk.platformtools.aa;

final class v
  implements Runnable
{
  v(u paramu, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    if (u.a(this.cKG))
    {
      aa.d("MicroMsg.BckUploadInfoMgr", "infoToFileImp has been deleted");
      return;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = u.b(this.cKG);
    aa.e("MicroMsg.BckUploadInfoMgr", "infoToFileImp in thread path %s", arrayOfObject);
    c.a(u.b(this.cKG), this.cKD, this.cKD.length);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.v
 * JD-Core Version:    0.6.2
 */
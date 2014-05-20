package com.tencent.mm.m;

import android.graphics.Bitmap;
import com.tencent.mm.as.a;
import com.tencent.mm.as.d;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Set;

final class l
  implements bw
{
  Bitmap bitmap = null;
  byte[] buf;
  x ckz = null;

  public l(e parame, x paramx, byte[] paramArrayOfByte)
  {
    this.ckz = paramx;
    this.buf = paramArrayOfByte;
  }

  public final boolean ve()
  {
    if ((this.ckz == null) || (cj.hX(this.ckz.getUsername())))
    {
      aa.e("MicroMsg.AvatarService", "SaveAvatar imgFlag info is null");
      return false;
    }
    m localm = e.vL();
    if (localm != null)
      this.bitmap = localm.b(this.ckz.getUsername(), this.buf);
    y localy = e.vK();
    if (localy != null)
    {
      this.ckz.cL(-1);
      this.ckz.vY();
      localy.a(this.ckz);
    }
    return true;
  }

  public final boolean vf()
  {
    if (cj.hX(this.ckz.getUsername()));
    while (true)
    {
      return false;
      m localm = e.vL();
      if ((localm != null) && (this.bitmap != null))
        localm.c(this.ckz.getUsername(), this.bitmap);
      e.e(this.cks).remove(this.ckz.getUsername());
      if (this.buf != null);
      for (int i = this.buf.length; (be.uz() != null) && (be.uz().sT() != null); i = 0)
      {
        be.uz().sT().a(new d(1002, this.ckz.getUsername() + ";" + i));
        return false;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.l
 * JD-Core Version:    0.6.2
 */
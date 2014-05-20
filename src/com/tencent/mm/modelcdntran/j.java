package com.tencent.mm.modelcdntran;

import com.tencent.mm.model.a;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import java.io.File;
import java.util.HashMap;

public class j
  implements bb
{
  private static j cpD;
  private CdnTransportEngine cpE = null;
  private b cpF = null;

  public static j yw()
  {
    j localj = (j)be.uh().dN(j.class.getName());
    cpD = localj;
    if (localj == null)
    {
      cpD = new j();
      be.uh().a(j.class.getName(), cpD);
    }
    return cpD;
  }

  public static String yx()
  {
    if (be.uz().sd() == 0)
      throw new a();
    return be.uz().sW() + "cdndnsinfo/";
  }

  public static b yy()
  {
    if (be.uz().sd() == 0)
      throw new a();
    return yw().cpF;
  }

  static CdnTransportEngine yz()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (yw().cpE == null)
      yw().cpE = new CdnTransportEngine(be.uz().sW(), yy());
    return yw().cpE;
  }

  public final void N(boolean paramBoolean)
  {
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
    if (yw().cpF == null)
      yw().cpF = new b();
    if (be.uz().sd() == 0)
      throw new a();
    File localFile = new File(yx());
    if (!localFile.exists())
      localFile.mkdir();
    be.a(new k(this));
  }

  public final void qy()
  {
    be.a(null);
    if (this.cpE != null)
    {
      this.cpE.release();
      this.cpE = null;
    }
    if (this.cpF != null)
    {
      this.cpF.release();
      this.cpF = null;
    }
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.j
 * JD-Core Version:    0.6.2
 */
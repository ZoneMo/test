package com.tencent.mm.ab;

import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.HashMap;

public class r
  implements bb
{
  private static HashMap bZd;
  private l cwa;
  private b cwb;
  private m cwc = new m();
  private n cwd = new n();
  private o cwe = new o();
  private p cwf = new p();
  private ay cwg = new ay(be.ut().getLooper(), new u(this), false);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("PACKAGE_INFO_TABLE".hashCode()), new s());
    bZd.put(Integer.valueOf("CHATTINGBGINFO_TABLE".hashCode()), new t());
  }

  private static r BL()
  {
    r localr = (r)be.uh().dN(r.class.getName());
    if (localr == null)
    {
      localr = new r();
      be.uh().a(r.class.getName(), localr);
    }
    return localr;
  }

  public static l BM()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (BL().cwa == null)
      BL().cwa = new l(be.uz().sp(), be.uz().sO());
    return BL().cwa;
  }

  public static b BN()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (BL().cwb == null)
      BL().cwb = new b(be.uz().sp());
    return BL().cwb;
  }

  public final void N(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      aa.d("MicroMsg.SubCorePacakge", "dkregcode Update RegonCode here !");
      this.cwg.bO(10000L);
    }
    com.tencent.mm.sdk.b.a.ayH().a("PostSyncTask", this.cwc);
    com.tencent.mm.sdk.b.a.ayH().a("PostSyncTask", this.cwd);
    com.tencent.mm.sdk.b.a.ayH().a("PostSyncTask", this.cwe);
    com.tencent.mm.sdk.b.a.ayH().a("PostSyncTask", this.cwf);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    com.tencent.mm.sdk.b.a.ayH().b("PostSyncTask", this.cwc);
    com.tencent.mm.sdk.b.a.ayH().b("PostSyncTask", this.cwd);
    com.tencent.mm.sdk.b.a.ayH().b("PostSyncTask", this.cwe);
    com.tencent.mm.sdk.b.a.ayH().b("PostSyncTask", this.cwf);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.r
 * JD-Core Version:    0.6.2
 */
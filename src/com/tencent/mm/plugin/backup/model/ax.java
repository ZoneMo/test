package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.ab.l;
import com.tencent.mm.ap.i;
import com.tencent.mm.m.w;
import com.tencent.mm.model.a;
import com.tencent.mm.modelfriend.af;
import com.tencent.mm.modelstat.j;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.pluginsdk.as;
import com.tencent.mm.storage.ab;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.e;
import java.util.HashMap;

public final class ax
{
  private com.tencent.mm.ai.r cAN;
  private br cDa;
  private com.tencent.mm.w.g cLl;
  private ab cLm;
  private com.tencent.mm.ah.s cLn;
  private com.tencent.mm.t.b cLo;
  private w cLp;
  private j cLq;
  private af cLr;
  private l cLs;
  private as cLt;
  private com.tencent.mm.pluginsdk.model.app.r cLu;
  private com.tencent.mm.pluginsdk.model.app.o cLv;
  private com.tencent.mm.pluginsdk.model.app.b cLw;
  private String chB;
  private String chC;
  private e chl;
  private com.tencent.mm.storage.k chm;
  private ap cho;
  private com.tencent.mm.storage.o chp;
  private au chq;
  private cc chr;
  private c chs;
  private cd cht;
  private i chw = null;
  private com.tencent.mm.ap.g chy = null;
  private com.tencent.mm.p.k coo;
  private com.tencent.mm.ab.b cwb;
  private int uin = 0;

  public final com.tencent.mm.w.g Ba()
  {
    if (this.uin == 0)
      throw new a();
    return this.cLl;
  }

  public final com.tencent.mm.ai.r DE()
  {
    if (this.uin == 0)
      throw new a();
    return this.cAN;
  }

  public final boolean HB()
  {
    return this.uin != 0;
  }

  public final ab HC()
  {
    if (this.uin == 0)
      throw new a();
    return this.cLm;
  }

  public final com.tencent.mm.pluginsdk.model.app.r HD()
  {
    if (this.uin == 0)
      throw new a();
    return this.cLu;
  }

  public final com.tencent.mm.pluginsdk.model.app.o HE()
  {
    if (this.uin == 0)
      throw new a();
    return this.cLv;
  }

  public final com.tencent.mm.pluginsdk.model.app.b HF()
  {
    if (this.uin == 0)
      throw new a();
    return this.cLw;
  }

  public final void b(String paramString1, int paramInt, String paramString2)
  {
    this.chw = new i(new ay(this));
    if (!this.chw.a(paramString1, paramString2, paramInt, com.tencent.mm.compatible.c.s.pU(), new HashMap(), false))
      throw new a((byte)0);
    this.chl = new e(this.chw);
    this.chq = new au(this.chB);
    this.chm = new com.tencent.mm.storage.k(this.chw, null);
    this.cho = new ap(this.chw);
    this.chp = new com.tencent.mm.storage.o(this.chw);
    this.chr = new cc(this.chw);
    this.cLl = new com.tencent.mm.w.g(this.chw);
    this.cLm = new ab(this.chw, sJ());
    this.chs = new c(this.chw);
    this.cLo = new com.tencent.mm.t.b(this.chw);
    this.cLp = new w(this.chw);
    this.cDa = new br(this.chw);
    i locali1 = this.chw;
    if (this.uin == 0)
      throw new a();
    this.cAN = new com.tencent.mm.ai.r(locali1, this.chB + "video/");
    this.cLn = new com.tencent.mm.ah.s(this.chw);
    this.cLq = new j(this.chw);
    this.cLr = new af(this.chw);
    i locali2 = this.chw;
    if (this.uin == 0)
      throw new a();
    this.cLs = new l(locali2, this.chB + "package/");
    this.cwb = new com.tencent.mm.ab.b(this.chw);
    this.cLt = new as(this.chw);
    this.cLu = new com.tencent.mm.pluginsdk.model.app.r(this.chw);
    i locali3 = this.chw;
    if (this.uin == 0)
      throw new a();
    this.cLv = new com.tencent.mm.pluginsdk.model.app.o(locali3, this.chB + "openapi/");
    this.cLw = new com.tencent.mm.pluginsdk.model.app.b(this.chw);
    this.coo = new com.tencent.mm.p.k(this.chw);
    this.cht = new cd(this.chl);
    this.cht.e(new az(this));
    this.cht.aDm();
  }

  public final void f(String paramString1, String paramString2, int paramInt)
  {
    this.uin = paramInt;
    this.chB = paramString1;
    this.chC = paramString2;
  }

  public final c sA()
  {
    if (this.uin == 0)
      throw new a();
    return this.chs;
  }

  public final String sF()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "voice/";
  }

  public final String sG()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "voice2/";
  }

  public final String sJ()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "emoji/";
  }

  public final void sh()
  {
    if (this.chw != null)
    {
      this.chw.sh();
      this.chw = null;
    }
    if (this.chy != null)
    {
      this.chy.sh();
      this.chy = null;
    }
  }

  public final i sp()
  {
    return this.chw;
  }

  public final e sr()
  {
    if (this.uin == 0)
      throw new a();
    return this.chl;
  }

  public final com.tencent.mm.storage.k su()
  {
    if (this.uin == 0)
      throw new a();
    return this.chm;
  }

  public final ap sw()
  {
    if (this.uin == 0)
      throw new a();
    return this.cho;
  }

  public final com.tencent.mm.storage.o sx()
  {
    if (this.uin == 0)
      throw new a();
    return this.chp;
  }

  public final cc sz()
  {
    if (this.uin == 0)
      throw new a();
    return this.chr;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ax
 * JD-Core Version:    0.6.2
 */
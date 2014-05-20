package com.tencent.mm.plugin.scanner.a;

import java.util.ArrayList;
import java.util.List;

public final class j
{
  private static j ebv;
  private String bTQ;
  private String cie;
  private l ebc;
  private String ebd;
  private m ebe;
  private m ebf;
  private m ebg;
  private String ebh;
  private k ebi;
  private k ebj;
  private k ebk;
  private k ebl;
  private List ebm;
  private List ebn;
  private List ebo;
  private List ebp;
  private List ebq;
  private String ebr;
  private String ebs;
  private String ebt;
  private String ebu;
  private String title;
  private String url;

  public static j ZY()
  {
    return ebv;
  }

  public static void a(j paramj)
  {
    ebv = paramj;
  }

  public final l ZG()
  {
    return this.ebc;
  }

  public final String ZH()
  {
    return this.ebd;
  }

  public final m ZI()
  {
    return this.ebf;
  }

  public final String ZJ()
  {
    return this.ebh;
  }

  public final k ZK()
  {
    return this.ebi;
  }

  public final k ZL()
  {
    return this.ebj;
  }

  public final k ZM()
  {
    return this.ebk;
  }

  public final k ZN()
  {
    return this.ebl;
  }

  public final k ZO()
  {
    if ((this.ebj != null) && (this.ebj.ZZ().length() > 0))
      return this.ebj;
    if ((this.ebk != null) && (this.ebk.ZZ().length() > 0))
      return this.ebk;
    if ((this.ebl != null) && (this.ebl.ZZ().length() > 0))
      return this.ebl;
    if ((this.ebi != null) && (this.ebi.ZZ().length() > 0))
      return this.ebi;
    return null;
  }

  public final List ZP()
  {
    return this.ebm;
  }

  public final List ZQ()
  {
    return this.ebn;
  }

  public final List ZR()
  {
    return this.ebo;
  }

  public final List ZS()
  {
    return this.ebp;
  }

  public final List ZT()
  {
    return this.ebq;
  }

  public final String ZU()
  {
    return this.ebr;
  }

  public final String ZV()
  {
    return this.ebs;
  }

  public final String ZW()
  {
    return this.ebt;
  }

  public final String ZX()
  {
    return this.ebu;
  }

  public final void a(k paramk)
  {
    this.ebi = paramk;
  }

  public final void a(l paraml)
  {
    this.ebc = paraml;
  }

  public final void a(m paramm)
  {
    this.ebe = paramm;
  }

  public final void b(k paramk)
  {
    this.ebj = paramk;
  }

  public final void b(m paramm)
  {
    this.ebf = paramm;
  }

  public final void bF(String paramString)
  {
    this.bTQ = paramString;
  }

  public final void c(k paramk)
  {
    this.ebk = paramk;
  }

  public final void c(m paramm)
  {
    this.ebg = paramm;
  }

  public final void d(k paramk)
  {
    this.ebl = paramk;
  }

  public final void fc(String paramString)
  {
    this.cie = paramString;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final void mo(String paramString)
  {
    this.ebd = paramString;
  }

  public final void mp(String paramString)
  {
    this.ebh = paramString;
  }

  public final void mq(String paramString)
  {
    if (this.ebm == null)
      this.ebm = new ArrayList();
    if ((paramString != null) && (!this.ebm.contains(paramString)))
      this.ebm.add(paramString);
  }

  public final void mr(String paramString)
  {
    if (this.ebn == null)
      this.ebn = new ArrayList();
    if ((paramString != null) && (!this.ebn.contains(paramString)))
      this.ebn.add(paramString);
  }

  public final void ms(String paramString)
  {
    if (this.ebo == null)
      this.ebo = new ArrayList();
    if ((paramString != null) && (!this.ebo.contains(paramString)))
      this.ebo.add(paramString);
  }

  public final void mt(String paramString)
  {
    if (this.ebp == null)
      this.ebp = new ArrayList();
    if ((paramString != null) && (!this.ebp.contains(paramString)))
      this.ebp.add(paramString);
  }

  public final void mu(String paramString)
  {
    if (this.ebq == null)
      this.ebq = new ArrayList();
    if ((paramString != null) && (!this.ebq.contains(paramString)))
      this.ebq.add(paramString);
  }

  public final void mv(String paramString)
  {
    this.ebr = paramString;
  }

  public final void mw(String paramString)
  {
    this.ebs = paramString;
  }

  public final void mx(String paramString)
  {
    this.ebt = paramString;
  }

  public final void my(String paramString)
  {
    this.ebu = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final String yP()
  {
    return this.cie;
  }

  public final String yT()
  {
    return this.bTQ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.j
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.plugin.search.model;

import com.tencent.mm.sdk.platformtools.aa;

public final class y
{
  private ae ehx = new ae(this);

  public final af a(int paramInt, af paramaf)
  {
    if (this.ehx == null)
      return null;
    af.a(paramaf, paramInt);
    this.ehx.b(paramaf);
    return paramaf;
  }

  public final void a(af paramaf)
  {
    if (this.ehx == null)
      return;
    this.ehx.a(paramaf);
  }

  public final void bk(boolean paramBoolean)
  {
    if (this.ehx == null)
      return;
    this.ehx.bk(paramBoolean);
  }

  public final void init()
  {
    if ((this.ehx != null) && (this.ehx.isAlive()))
    {
      aa.a("MicroMsg.SearchDaemon", new Throwable(), "Duplicated daemon initialization detected, working queue maybe dirty!", new Object[0]);
      return;
    }
    this.ehx = new ae(this);
    aa.i("MicroMsg.SearchDaemon", "***** Search daemon initialized, waiting for starting.");
  }

  public final void j(Runnable paramRunnable)
  {
    if (this.ehx == null)
      return;
    this.ehx.j(paramRunnable);
  }

  public final void quit()
  {
    if ((this.ehx == null) || (!this.ehx.isAlive()))
      return;
    this.ehx.quit();
    this.ehx = null;
    aa.i("MicroMsg.SearchDaemon", "***** Search daemon quited.");
  }

  public final void start()
  {
    this.ehx.start();
    aa.i("MicroMsg.SearchDaemon", "***** Search daemon started.");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.y
 * JD-Core Version:    0.6.2
 */
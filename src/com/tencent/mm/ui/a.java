package com.tencent.mm.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import com.tencent.mm.pluginsdk.ui.bi;
import com.tencent.mm.pluginsdk.ui.tools.w;
import com.tencent.mm.sdk.platformtools.aa;

public abstract class a extends cy
  implements bi, w, ac
{
  private boolean gka;
  private boolean gkb;
  private Bundle gkc;
  private boolean gkd;
  protected boolean gke;
  protected boolean gkf = false;
  protected boolean gkg = false;
  protected boolean gkh;

  protected abstract void aDG();

  protected abstract void aDH();

  protected abstract void aDI();

  protected abstract void aDJ();

  protected abstract void aDK();

  protected abstract void aDL();

  public abstract void aDM();

  public abstract void aDN();

  public abstract void aDO();

  public final void aDP()
  {
    aDN();
    this.gkd = true;
  }

  public final void aDQ()
  {
  }

  public final void aDR()
  {
    this.gkg = true;
  }

  public final void aDS()
  {
    if (!this.gkf)
      return;
    if (this.gkb)
    {
      aDG();
      this.gkb = false;
    }
    while (true)
    {
      long l = System.currentTimeMillis();
      if (this.gkd)
      {
        this.gkd = false;
        aDO();
      }
      aDH();
      aa.d("MicroMsg.INIT", "KEVIN " + toString() + " OnTabResume last : " + (System.currentTimeMillis() - l));
      this.gke = true;
      this.gkf = false;
      return;
      if (this.gka)
      {
        aDL();
        aDG();
        aa.v("MicroMsg.INIT", "KEVIN tab onRecreate " + toString());
        this.gka = false;
      }
    }
  }

  protected int getLayoutId()
  {
    return 0;
  }

  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.gkb = true;
  }

  public final void onDestroy()
  {
    aDL();
    super.onDestroy();
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
      return false;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final void onPause()
  {
    super.onPause();
    this.gkh = true;
    if (this.gkh)
    {
      if (!this.gke)
        this.gkh = false;
    }
    else
      return;
    long l = System.currentTimeMillis();
    aDJ();
    aa.d("MicroMsg.INIT", "KEVIN " + toString() + " onTabPause last : " + (System.currentTimeMillis() - l));
    this.gke = false;
    this.gkh = false;
  }

  public final void onResume()
  {
    super.onResume();
    if (LauncherUI.aEA().aEs())
    {
      this.gkf = true;
      if (this.gkg)
      {
        aDS();
        this.gkg = false;
      }
    }
  }

  public void onStart()
  {
    super.onStart();
    if (!LauncherUI.aEA().aEs())
      return;
    aDI();
  }

  public final void onStop()
  {
    super.onStop();
    aDK();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a
 * JD-Core Version:    0.6.2
 */
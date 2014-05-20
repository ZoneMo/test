package com.tencent.mm.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.y;

public abstract class b extends y
  implements ac
{
  private boolean gka;
  private boolean gkb;
  private Bundle gkc;
  private boolean gkd;
  private boolean gke;
  protected boolean gkf = false;
  protected boolean gkg = false;
  protected boolean gkh;

  protected abstract void aDG();

  protected abstract void aDH();

  protected abstract void aDI();

  protected abstract void aDJ();

  protected abstract void aDK();

  protected abstract void aDL();

  public final void aDP()
  {
    aDN();
    this.gkd = true;
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
        aDO();
        this.gkd = false;
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
        aa.v("MicroMsg.INIT", "KEVIN tab onRecreate ");
        this.gka = false;
      }
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.gkc = paramBundle;
    this.gkb = true;
  }

  public void onDestroy()
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
    aDQ();
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

  public final void onStart()
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
 * Qualified Name:     com.tencent.mm.ui.b
 * JD-Core Version:    0.6.2
 */
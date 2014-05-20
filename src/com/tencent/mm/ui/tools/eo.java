package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.z;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;

public class eo
{
  private final String TAG = "MicroMsg.SearchViewHelper-" + String.valueOf(System.currentTimeMillis());
  private Handler ctk = new Handler(Looper.getMainLooper());
  protected ActionBarSearchView hgH = null;
  private boolean hlS = false;
  private boolean hlT = false;
  private boolean hlU = true;
  private MenuItem hlV = null;
  private ez hlW;

  public void a(FragmentActivity paramFragmentActivity, Menu paramMenu)
  {
    String str = this.TAG;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Boolean.valueOf(this.hlS);
    arrayOfObject[1] = Boolean.valueOf(this.hlT);
    arrayOfObject[2] = Boolean.valueOf(this.hlU);
    aa.f(str, "on prepare options menu, searchViewExpand %B, triggerExpand %B, canExpand %B", arrayOfObject);
    if (paramFragmentActivity == null)
      aa.w(this.TAG, "on hanle status fail, activity is null");
    do
    {
      return;
      this.hlV = paramMenu.findItem(i.aAZ);
      if (this.hlV == null)
      {
        aa.w(this.TAG, "can not find search menu, error");
        return;
      }
    }
    while ((!this.hlU) || ((!this.hlS) && (!this.hlT)));
    this.hlT = false;
    for (int i = 0; i < paramMenu.size(); i++)
    {
      MenuItem localMenuItem = paramMenu.getItem(i);
      if (localMenuItem.getItemId() != i.aAZ)
        localMenuItem.setVisible(false);
    }
    this.ctk.post(new ew(this, paramFragmentActivity));
  }

  public final void a(ez paramez)
  {
    this.hlW = paramez;
  }

  public final String aMH()
  {
    if (this.hgH != null)
      return this.hgH.aMH();
    return "";
  }

  public final void aND()
  {
    String str = this.TAG;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(this.hlS);
    MenuItem localMenuItem = this.hlV;
    boolean bool = false;
    if (localMenuItem == null)
      bool = true;
    arrayOfObject[1] = Boolean.valueOf(bool);
    aa.e(str, "do expand, expanded[%B], search menu item null[%B]", arrayOfObject);
    if (!this.hlS)
    {
      if (!this.hlU)
        aa.w(this.TAG, "can not expand now");
    }
    else
      return;
    if (this.hlV != null)
    {
      this.ctk.post(new ey(this));
      return;
    }
    this.hlT = true;
  }

  public final void aNE()
  {
    aa.d(this.TAG, "do collapse");
    if ((this.hlS) && (this.hlV != null))
      z.g(this.hlV);
  }

  public final boolean aNF()
  {
    return this.hlS;
  }

  protected boolean auT()
  {
    return false;
  }

  protected void auU()
  {
  }

  protected void auV()
  {
  }

  public final void b(FragmentActivity paramFragmentActivity, Menu paramMenu)
  {
    aa.v(this.TAG, "on create options menu");
    if (paramFragmentActivity == null)
    {
      aa.w(this.TAG, "on add search menu, activity is null");
      return;
    }
    if (this.hgH == null)
      this.hgH = new ActionBarSearchView(paramFragmentActivity);
    this.hgH.a(new ep(this));
    this.hgH.cP(auT());
    this.hgH.setOnEditorActionListener(new eq(this));
    this.hlV = paramMenu.add(0, i.aAZ, 0, n.bek);
    this.hlV.setEnabled(this.hlU);
    this.hlV.setIcon(h.abD);
    z.a(this.hlV, this.hgH);
    z.a(this.hlV, 10);
    z.a(this.hlV, new er(this, paramFragmentActivity));
  }

  public final void clearFocus()
  {
    if (this.hgH != null)
      this.hgH.aMJ();
  }

  public final void clearText()
  {
    if (this.hgH != null)
      this.hgH.em(true);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    String str = this.TAG;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Boolean.valueOf(this.hlS);
    aa.f(str, "on key down, key code %d, expand %B", arrayOfObject);
    if ((4 == paramInt) && (this.hlS))
    {
      aNE();
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.eo
 * JD-Core Version:    0.6.2
 */
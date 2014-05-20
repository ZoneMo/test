package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.compatible.c.d;
import com.tencent.mm.m.af;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.p.ab;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pluginsdk.ui.tools.c;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.h;

public abstract class ai
{
  protected ProgressDialog cIr = null;
  protected TextView djQ;
  Point ebQ;
  protected boolean edD = true;
  protected Rect edE;
  protected com.tencent.mm.plugin.scanner.b.a edF;
  protected int edG;
  protected int edH;
  protected int edI = 40;
  protected int edJ = 20;
  protected am edK;
  protected int edL;
  protected Handler edM = new aj(this);
  private int edN = 30;

  public ai(am paramam, Point paramPoint)
  {
    this.edK = paramam;
    this.ebQ = paramPoint;
  }

  public ai(am paramam, Point paramPoint, byte paramByte)
  {
    this.edK = paramam;
    this.ebQ = paramPoint;
    this.edI = 50;
  }

  public final void a(Activity paramActivity, String paramString, int paramInt)
  {
    this.edN = paramInt;
    com.tencent.mm.modelsimple.aj localaj = new com.tencent.mm.modelsimple.aj(paramString);
    be.uA().d(localaj);
    paramActivity.getString(n.ber);
    this.cIr = h.b(paramActivity, paramActivity.getString(n.bxo), new ak(this, localaj));
  }

  protected final boolean a(sj paramsj)
  {
    String str = an.a(paramsj.fEI);
    af.vJ().c(str, an.a(paramsj.fzx));
    if ((this.cIr != null) && (this.cIr.isShowing()))
      this.cIr.dismiss();
    if (cj.hW(str).length() > 0)
    {
      i locali = be.uz().su().tO(str);
      if ((locali != null) && (locali.rb()) && (locali.aAp()))
      {
        com.tencent.mm.p.a locala = ab.ye().eG(str);
        if ((locala != null) && (locala.xD()))
        {
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("Chat_User", str);
          localIntent2.putExtra("finish_direct", true);
          com.tencent.mm.plugin.scanner.a.Tm().d(localIntent2, this.edK.aal());
        }
      }
      Intent localIntent1;
      do
      {
        return true;
        localIntent1 = new Intent();
        c.a(localIntent1, paramsj, this.edN);
        if ((locali != null) && (!locali.rb()))
          localIntent1.putExtra("Contact_IsLBSFriend", true);
        if ((0x8 & paramsj.fNp) > 0)
          com.tencent.mm.plugin.d.c.m.dZN.j(10298, str + "," + this.edN);
      }
      while (this.edK.aal() == null);
      com.tencent.mm.plugin.scanner.a.Tm().c(localIntent1, this.edK.aal());
      return true;
    }
    if (this.edK.aal() != null)
      Toast.makeText(this.edK.aal(), n.bxx, 0).show();
    return false;
  }

  protected abstract int aaA();

  public final am aau()
  {
    return this.edK;
  }

  protected abstract void aav();

  protected abstract com.tencent.mm.plugin.scanner.b.a aaw();

  protected abstract int aax();

  protected abstract int aay();

  protected abstract void aaz();

  protected final double at(int paramInt1, int paramInt2)
  {
    Activity localActivity = this.edK.aal();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)localActivity.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    double d = localDisplayMetrics.densityDpi / 160;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Double.valueOf(d);
    aa.e("MicroMsg.scanner.ScanMode", "dpiLevel [%s]", arrayOfObject);
    if (d > 1.2D)
    {
      this.edG = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), paramInt1);
      this.edH = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), paramInt2);
    }
    while (true)
    {
      if (this.edG % 2 == 1)
        this.edG = (1 + this.edG);
      if (this.edH % 2 == 1)
        this.edH = (1 + this.edH);
      return d;
      if ((this.ebQ != null) && (this.ebQ.x + this.ebQ.y > 1560))
      {
        this.edG = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), 1.8F * paramInt1);
        this.edH = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), 1.8F * paramInt2);
      }
      else
      {
        this.edG = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), paramInt1 / 1.1F);
        this.edH = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), paramInt2 / 1.1F);
      }
    }
  }

  protected final void bf(boolean paramBoolean)
  {
    if (this.djQ == null)
      return;
    if (paramBoolean)
    {
      this.djQ.setVisibility(4);
      this.edM.sendEmptyMessageDelayed(1, 210L);
      return;
    }
    this.edM.removeMessages(1);
    this.djQ.setVisibility(4);
  }

  protected final Rect bg(boolean paramBoolean)
  {
    int i;
    int j;
    int k;
    int m;
    int n;
    int i6;
    if ((this.edE == null) || (paramBoolean))
    {
      i = this.ebQ.x;
      j = this.ebQ.y;
      k = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), this.edI);
      if (!this.edK.aam())
        k = 0;
      if (d.pI())
        break label305;
      if (i >= j)
        break label234;
      m = i / 2 - this.edG / 2;
      n = i / 2 + this.edG / 2;
      i6 = j / 2 - this.edH / 2;
      if (i6 - k <= 0)
        break label427;
    }
    label427: for (int i7 = i6 - k; ; i7 = i6)
    {
      int i8 = i7 + this.edH;
      int i1 = i7;
      int i2 = i8;
      Object[] arrayOfObject = new Object[6];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(j);
      arrayOfObject[2] = Integer.valueOf(m);
      arrayOfObject[3] = Integer.valueOf(n);
      arrayOfObject[4] = Integer.valueOf(i1);
      arrayOfObject[5] = Integer.valueOf(i2);
      aa.e("MicroMsg.scanner.ScanMode", "framingRect: width = %s, height = %s; left = %s, right = %s, top = %s, bottom = %s", arrayOfObject);
      this.edE = new Rect(m, i1, n, i2);
      return this.edE;
      label234: m = j / 2 - this.edG / 2;
      n = j / 2 + this.edG / 2;
      int i3 = i / 2 - this.edH / 2;
      if (i3 - k > 0);
      for (int i4 = i3 - k; ; i4 = i3)
      {
        int i5 = i4 + this.edH;
        i1 = i4;
        i2 = i5;
        break;
        label305: if (i < j)
        {
          m = j / 2 - this.edG / 2;
          n = j / 2 + this.edG / 2;
          i1 = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), this.edJ);
          i2 = i1 + this.edH;
          break;
        }
        m = i / 2 - this.edG / 2;
        n = i / 2 + this.edG / 2;
        i1 = com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), this.edJ);
        i2 = i1 + this.edH;
        break;
      }
    }
  }

  protected abstract void hG(int paramInt);

  protected abstract void onPause();

  protected abstract void onResume();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ai
 * JD-Core Version:    0.6.2
 */
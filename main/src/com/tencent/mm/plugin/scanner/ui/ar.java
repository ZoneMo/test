package com.tencent.mm.plugin.scanner.ui;

import android.graphics.Point;
import android.os.Handler;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.compatible.c.b;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.scanner.b.a;
import com.tencent.mm.plugin.scanner.b.j;
import com.tencent.mm.plugin.scanner.b.q;
import com.tencent.mm.protocal.a.pg;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;

public final class ar extends ai
  implements m, com.tencent.mm.plugin.scanner.b.d
{
  private int ebb;
  private TextView ecS;
  private int edS = 0;
  private int edT = 2;
  private long edU;
  private final int edV = 184;
  private final int edW = 46;
  private final int edX = 276;
  private final int edY = 70;
  private float eed;
  private final int eeg = 50;
  com.tencent.mm.plugin.scanner.a.d eek;
  private int eel = 0;
  private TextView eem;
  private final int een = 5000;
  private final int eeo = 8000;
  private Handler eep = new as(this);

  public ar(am paramam, Point paramPoint)
  {
    super(paramam, paramPoint, (byte)0);
    at(184, 46);
    int i = this.edG;
    this.eed = q.au(276, i);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.edG);
    arrayOfObject[1] = Integer.valueOf(this.edH);
    arrayOfObject[2] = Float.valueOf(this.eed);
    aa.e("MicroMsg.scanner.ScanModeOCR", "frameRectWidth = [%s], frameRectHeight = [%s], scaleRate = [%s]", arrayOfObject);
    this.ebb = ((int)(0xFFFFFFFF & System.currentTimeMillis()));
  }

  private void aaB()
  {
    if (this.edK == null)
    {
      aa.e("MicroMsg.scanner.ScanModeOCR", "dealWithNetWork(), scanUICallback == null");
      return;
    }
    if ((be.uA().wS() == 1) || (be.uA().wS() == 5))
    {
      this.edK.a(1800L, true);
      return;
    }
    this.ecS.setText("");
    this.eem.setText("");
    this.edK.bd(true);
  }

  private void aj(String paramString1, String paramString2)
  {
    if (!cj.hX(paramString1))
    {
      this.djQ.setVisibility(8);
      this.ecS.setText(paramString1);
      this.ecS.setVisibility(0);
    }
    while (!cj.hX(paramString2))
    {
      this.djQ.setVisibility(8);
      this.eem.setText(paramString2);
      this.eem.setVisibility(0);
      return;
      this.ecS.setText("");
    }
    this.eem.setText("");
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    this.eep.removeMessages(0);
    switch (paramx.getType())
    {
    default:
    case 392:
    }
    do
    {
      pg localpg;
      do
      {
        return;
        this.edS = (-1 + this.edS);
        if ((paramInt1 != 0) || (paramInt2 != 0))
        {
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(paramInt1);
          arrayOfObject1[1] = Integer.valueOf(paramInt2);
          aa.b("MicroMsg.scanner.ScanModeOCR", "onSceneEnd() errType = [%s], errCode = [%s]", arrayOfObject1);
          this.edU -= 300L;
          aj(null, null);
          return;
        }
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt1);
        arrayOfObject2[1] = Integer.valueOf(paramInt2);
        aa.e("MicroMsg.scanner.ScanModeOCR", "onSceneEnd() errType = [%s], errCode = [%s]", arrayOfObject2);
        localpg = ((com.tencent.mm.plugin.scanner.a.d)paramx).ZD();
        if (localpg == null)
        {
          aa.e("MicroMsg.scanner.ScanModeOCR", "onSceneEnd(), getResp() == null");
          aj(null, null);
          return;
        }
        Object[] arrayOfObject3 = new Object[4];
        arrayOfObject3[0] = Integer.valueOf(localpg.fRz);
        arrayOfObject3[1] = Integer.valueOf(localpg.fRB);
        arrayOfObject3[2] = localpg.fRF;
        arrayOfObject3[3] = localpg.fRG;
        aa.e("MicroMsg.scanner.ScanModeOCR", "onSceneEnd() clientScanID = %s, imageType = %s, source = %s, translate = %s", arrayOfObject3);
      }
      while (cj.hX(localpg.fRG));
      aj(localpg.fRF, localpg.fRG);
    }
    while (this.eek == null);
    be.uA().c(this.eek);
  }

  public final void a(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeOCR", "scanUICallback == null");
      return;
    }
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
    {
      Object[] arrayOfObject1 = new Object[1];
      boolean bool;
      if (paramArrayOfByte == null)
      {
        bool = true;
        arrayOfObject1[0] = Boolean.valueOf(bool);
        aa.c("MicroMsg.scanner.ScanModeOCR", "greyData null:[%s]", arrayOfObject1);
        if ((System.currentTimeMillis() - this.edU <= 1840L) || (efV[1] != 1))
          break label109;
        this.edU = System.currentTimeMillis();
        this.edK.a(0L, true);
      }
      while (true)
      {
        this.eel = 0;
        return;
        bool = false;
        break;
        label109: this.edK.aC(40L);
      }
    }
    if (this.edS >= this.edT)
    {
      if ((System.currentTimeMillis() - this.edU > 1840L) && (efV[1] == 1))
      {
        this.edU = System.currentTimeMillis();
        this.edK.a(0L, true);
      }
      while (true)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(this.edS);
        arrayOfObject3[1] = Integer.valueOf(this.edT);
        aa.c("MicroMsg.scanner.ScanModeOCR", "hasDoSceneCount[%s], maxDoSceneCount[%s]", arrayOfObject3);
        return;
        this.edK.aC(40L);
      }
    }
    this.eek = new com.tencent.mm.plugin.scanner.a.d(paramArrayOfByte, "en", "zh_CN", this.ebb);
    be.uA().d(this.eek);
    this.edS = (1 + this.edS);
    this.eep.removeMessages(0);
    if (ba.bp(this.edK.aal()))
    {
      this.eep.sendEmptyMessageDelayed(0, 8000L);
      this.edL += paramArrayOfByte.length;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(this.edL);
      arrayOfObject2[1] = Integer.valueOf(this.eel);
      arrayOfObject2[2] = Integer.valueOf(this.edT);
      aa.e("MicroMsg.scanner.ScanModeOCR", "totalNetworkFlow[%s], hasTakePicNum[%s], maxDoSceneCount[%s]", arrayOfObject2);
      if ((System.currentTimeMillis() - this.edU <= 1840L) || (efV[1] != 1))
        break label465;
      this.edU = System.currentTimeMillis();
      this.edK.a(0L, true);
    }
    while (true)
    {
      aa.v("MicroMsg.scanner.ScanModeOCR", "onDecodeFinished:" + this.edS + "," + this.eel);
      return;
      this.eep.sendEmptyMessageDelayed(0, 5000L);
      break;
      label465: this.edK.aC(40L);
    }
  }

  public final int aaA()
  {
    return 3;
  }

  public final void aaC()
  {
    aa.d("MicroMsg.scanner.ScanModeOCR", "decodeFail");
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeOCR", "scanUICallback == null");
      return;
    }
    if ((System.currentTimeMillis() - this.edU > 1840L) && (efV[1] == 1))
    {
      this.edU = System.currentTimeMillis();
      this.edK.a(0L, true);
      return;
    }
    this.edK.aC(40L);
  }

  protected final void aav()
  {
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeOCR", "scanUICallback == null");
      return;
    }
    aaB();
  }

  protected final a aaw()
  {
    int i;
    if (this.edF == null)
    {
      i = 50;
      if (s.ceK.cdH > 0)
      {
        i = s.ceK.cdH;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(s.ceK.cdH);
        aa.e("MicroMsg.scanner.ScanModeOCR", "ImageQuality=[%s]", arrayOfObject);
      }
      if (!ba.bp(this.edK.aal()))
        break label102;
    }
    label102: for (this.edF = new j(this, i - 10, this.eed, true, this.edK.aam()); ; this.edF = new j(this, i, this.eed, true, this.edK.aam()))
      return this.edF;
  }

  protected final int aax()
  {
    return k.aYP;
  }

  protected final int aay()
  {
    return 0;
  }

  protected final void aaz()
  {
    hG(0);
    this.edK.a(4, null, false);
    this.edK.a(1800L, true);
    onResume();
  }

  protected final void hG(int paramInt)
  {
    this.djQ = ((TextView)this.edK.findViewById(i.aIe));
    this.eem = ((TextView)this.edK.findViewById(i.aCZ));
    this.ecS = ((TextView)this.edK.findViewById(i.aDa));
    this.djQ = ((TextView)this.edK.findViewById(i.aIe));
    if (paramInt > 0)
    {
      RelativeLayout.LayoutParams localLayoutParams1 = (RelativeLayout.LayoutParams)this.djQ.getLayoutParams();
      localLayoutParams1.topMargin = (paramInt + 0 + e.a(this.edK.aal(), 13.0F));
      this.djQ.setLayoutParams(localLayoutParams1);
      RelativeLayout.LayoutParams localLayoutParams2 = (RelativeLayout.LayoutParams)this.ecS.getLayoutParams();
      localLayoutParams2.topMargin = (paramInt + 0 + e.a(this.edK.aal(), 13.0F));
      this.ecS.setLayoutParams(localLayoutParams2);
      this.ecS.setVisibility(4);
    }
    if (com.tencent.mm.compatible.c.d.pI())
    {
      this.djQ.setPadding(e.a(this.edK.aal(), 54.0F), this.djQ.getPaddingTop(), e.a(this.edK.aal(), 54.0F), this.djQ.getPaddingBottom());
      this.ecS.setPadding(e.a(this.edK.aal(), 54.0F), this.ecS.getPaddingTop(), e.a(this.edK.aal(), 54.0F), this.ecS.getPaddingBottom());
    }
    if (this.edF != null)
      ((j)this.edF).bi(this.edK.aam());
    aaB();
    bf(true);
  }

  protected final void onPause()
  {
    bf(false);
    be.uA().b(392, this);
  }

  protected final void onResume()
  {
    be.uA().a(392, this);
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeOCR", "scanUICallback == null");
      return;
    }
    aaB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ar
 * JD-Core Version:    0.6.2
 */
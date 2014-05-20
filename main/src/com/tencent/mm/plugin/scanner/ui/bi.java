package com.tencent.mm.plugin.scanner.ui;

import android.graphics.Point;
import android.os.Handler;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.scanner.b.a;
import com.tencent.mm.protocal.a.sg;
import com.tencent.mm.sdk.platformtools.LBSManager;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;

public final class bi extends ai
  implements m, com.tencent.mm.plugin.scanner.b.d
{
  private static int edP = 300;
  private LBSManager cnY;
  private boolean ecV = false;
  private TextView ecf;
  private final int edV = 260;
  private final int edW = 300;
  private final int edZ = 220;
  private float eeG;
  private float eeH;
  private int eeI;
  private int eeJ;
  private String eeK;
  private String eeL;
  private boolean eeM = false;
  private float eeN = -10000.0F;
  private boolean eeO = false;
  private boolean eeP = false;
  protected Handler eeQ = new bl(this);
  private final int eea = 240;
  private float pitch = -10000.0F;

  public bi(am paramam, Point paramPoint)
  {
    super(paramam, paramPoint);
    if (!com.tencent.mm.compatible.c.d.pI())
    {
      at(260, 300);
      return;
    }
    at(220, 240);
  }

  private void aaB()
  {
    if (this.edK == null)
      aa.e("MicroMsg.scanner.ScanModeStreetView", "dealWithNetWork(), scanUICallback == null");
    do
    {
      do
      {
        return;
        if (this.eeP)
        {
          this.edK.bd(true);
          return;
        }
      }
      while ((!be.se()) || ((be.uA().wS() != 1) && (be.uA().wS() != 5)));
      this.edK.a(0L, false);
    }
    while (this.cnY != null);
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeStreetView", "initLBS(), scanUICallback == null");
      return;
    }
    if (this.cnY == null)
      this.cnY = new LBSManager(this.edK.aal(), new bj(this));
    this.eeG = -1000.0F;
    this.eeH = -1000.0F;
    this.eeJ = -1000;
    this.eeI = 1;
    this.eeK = this.cnY.aze();
    this.eeL = this.cnY.azd();
    this.cnY.start();
    this.cnY.aza();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.edK == null)
      aa.w("MicroMsg.scanner.ScanModeStreetView", "onSceneEnd(), scanUICallback == null");
    sg localsg;
    do
    {
      do
      {
        return;
        this.ecV = false;
        switch (paramx.getType())
        {
        default:
          return;
        case 424:
        }
        if ((paramInt1 != 0) || (paramInt2 != 0))
        {
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(paramInt1);
          arrayOfObject1[1] = Integer.valueOf(paramInt2);
          aa.b("MicroMsg.scanner.ScanModeStreetView", "onSceneEnd() errType = [%s], errCode = [%s]", arrayOfObject1);
          return;
        }
        localsg = ((ag)paramx).CA();
        if ((localsg == null) || (localsg.fMA == null))
        {
          aa.d("MicroMsg.scanner.ScanModeStreetView", "resp null");
          return;
        }
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = Integer.valueOf(paramInt1);
        arrayOfObject2[1] = Integer.valueOf(paramInt2);
        arrayOfObject2[2] = Integer.valueOf(localsg.dGR);
        aa.e("MicroMsg.scanner.ScanModeStreetView", "onSceneEnd() errType = [%s], errCode = [%s], resp.Type=[%s]", arrayOfObject2);
        if (localsg.dGR == 0)
        {
          String str = ag.gs(localsg.fMA);
          if (cj.hX(str))
          {
            aa.e("MicroMsg.scanner.ScanModeStreetView", "SCAN_STREET_VIEW_TYPE_STREETVIEW url is null");
            return;
          }
          an.b(new bk(this, str), 800L);
          return;
        }
        if (localsg.dGR != 2)
          break;
      }
      while ((this.eeQ == null) || (this.eeO));
      this.eeQ.removeMessages(0);
      this.eeQ.sendEmptyMessageDelayed(0, 1000L);
      return;
    }
    while (localsg.dGR != 1);
    try
    {
      com.tencent.mm.modelsimple.ai.gt(localsg.fMA);
      return;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localException.getMessage();
      aa.b("MicroMsg.scanner.ScanModeStreetView", "MM_SCAN_STREET_VIEW_TYPE_RECOMMEND， [%s]", arrayOfObject3);
    }
  }

  public final void a(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
  }

  public final int aaA()
  {
    return 5;
  }

  public final void aaC()
  {
  }

  protected final void aav()
  {
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeStreetView", "handleNetworkChange(), scanUICallback == null");
      return;
    }
    aaB();
  }

  protected final a aaw()
  {
    return null;
  }

  protected final int aax()
  {
    return k.aYS;
  }

  protected final int aay()
  {
    return edP;
  }

  protected final void aaz()
  {
    hG(0);
    this.edK.a(4, null, false);
    onResume();
  }

  protected final void hG(int paramInt)
  {
    this.ecf = ((TextView)this.edK.findViewById(i.aIc));
    this.ecf.setText(n.bxq);
    this.djQ = ((TextView)this.edK.findViewById(i.aIe));
    if (paramInt > 0)
    {
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.djQ.getLayoutParams();
      localLayoutParams.topMargin = (paramInt + 0 + e.a(this.edK.aal(), 13.0F));
      this.djQ.setLayoutParams(localLayoutParams);
    }
    if (com.tencent.mm.compatible.c.d.pI())
      this.djQ.setPadding(e.a(this.edK.aal(), 54.0F), this.djQ.getPaddingTop(), e.a(this.edK.aal(), 54.0F), this.djQ.getPaddingBottom());
    aaB();
    bf(true);
  }

  protected final void onPause()
  {
    this.eeO = true;
    bf(false);
    if (be.se())
      be.uA().b(424, this);
    if (this.cnY != null)
    {
      this.cnY.ayZ();
      this.cnY.IR();
      this.cnY = null;
    }
    if (this.eeQ != null)
      this.eeQ.removeMessages(0);
  }

  protected final void onResume()
  {
    if (be.se())
      be.uA().a(424, this);
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeStreetView", "scanUICallback == null");
      return;
    }
    aaB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bi
 * JD-Core Version:    0.6.2
 */
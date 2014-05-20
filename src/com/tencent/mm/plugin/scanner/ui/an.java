package com.tencent.mm.plugin.scanner.ui;

import android.graphics.Point;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.compatible.c.b;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.scanner.a.f;
import com.tencent.mm.plugin.scanner.b.a;
import com.tencent.mm.plugin.scanner.b.j;
import com.tencent.mm.plugin.scanner.b.q;
import com.tencent.mm.protocal.a.se;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;

public final class an extends ai
  implements com.tencent.mm.n.m, com.tencent.mm.plugin.scanner.b.d
{
  private static int edP = 300;
  private int ebb;
  private TextView ecf;
  private View ecg;
  private long edQ = 130L;
  f edR;
  private int edS = 0;
  private int edT = 1;
  private long edU;
  private final int edV = 260;
  private final int edW = 300;
  private final int edX = 390;
  private final int edY = 450;
  private final int edZ = 220;
  private final int eea = 240;
  private final int eeb = 330;
  private final int eec = 360;
  private float eed;
  private final long eee = 30000L;
  private long eef;
  private final int eeg = 50;
  private View.OnTouchListener eeh;

  public an(am paramam, Point paramPoint)
  {
    super(paramam, paramPoint);
    int j;
    if (!com.tencent.mm.compatible.c.d.pI())
    {
      at(260, 300);
      j = this.edG;
    }
    int i;
    for (this.eed = q.au(390, j); ; this.eed = q.au(330, i))
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(this.edG);
      arrayOfObject[1] = Integer.valueOf(this.edH);
      arrayOfObject[2] = Float.valueOf(this.eed);
      aa.e("MicroMsg.scanner.ScanModeImage", "frameRectWidth = [%s], frameRectHeight = [%s], scaleRate = [%s]", arrayOfObject);
      if (cj.bD(paramam.aal()) < 100L)
      {
        aa.w("MicroMsg.scanner.ScanModeImage", "memory is not much");
        this.edQ = 300L;
      }
      this.ebb = ((int)(0xFFFFFFFF & System.currentTimeMillis()));
      this.eef = System.currentTimeMillis();
      return;
      at(220, 240);
      i = this.edG;
    }
  }

  private void aaB()
  {
    if (this.edK == null)
      aa.e("MicroMsg.scanner.ScanModeImage", "dealWithNetWork(), scanUICallback == null");
    while ((be.uA().wS() != 1) && (be.uA().wS() != 5))
      return;
    this.edK.a(0L, false);
  }

  private void aaD()
  {
    com.tencent.mm.sdk.platformtools.an.i(new ao(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    boolean bool = true;
    this.edS = 0;
    if ((this.edK == null) || (paramx == null))
    {
      Object[] arrayOfObject1 = new Object[bool];
      if (paramx == null)
      {
        arrayOfObject1[0] = Boolean.valueOf(bool);
        aa.b("MicroMsg.scanner.ScanModeImage", "onSceneEnd() scene is null [%s]", arrayOfObject1);
      }
    }
    label287: 
    do
      while (true)
      {
        return;
        bool = false;
        break;
        if (paramx.getType() != 393)
          break label287;
        if ((paramInt1 != 0) || (paramInt2 != 0))
        {
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(paramInt1);
          arrayOfObject2[bool] = Integer.valueOf(paramInt2);
          aa.b("MicroMsg.scanner.ScanModeImage", "onSceneEnd() errType = [%s], errCode = [%s]", arrayOfObject2);
          this.djQ.setText(n.bxm);
        }
        while (this.edR != null)
        {
          be.uA().c(this.edR);
          return;
          se localse = ((f)paramx).ZF();
          if (localse == null)
          {
            aa.e("MicroMsg.scanner.ScanModeImage", "onSceneEnd(), getResp() == null");
            return;
          }
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = Integer.valueOf(localse.fRz);
          arrayOfObject3[bool] = Integer.valueOf(localse.fRB);
          aa.e("MicroMsg.scanner.ScanModeImage", "onSceneEnd() clientScanID = %s, imageType = %s", arrayOfObject3);
          switch (com.tencent.mm.plugin.scanner.b.m.a(localse.fMA, this, 3))
          {
          default:
            break;
          case 0:
            this.edK.aae();
            com.tencent.mm.sdk.platformtools.an.b(new aq(this), 700L);
            break;
          case 1:
            aa.d("MicroMsg.scanner.ScanModeImage", "onSceneEnd() PROCESS_XML_RETURN_TYPE_SEARCH_CONTACT");
            break;
          case 2:
            aa.e("MicroMsg.scanner.ScanModeImage", "onSceneEnd() PROCESS_XML_RETURN_TYPE_WRONG");
          }
        }
      }
    while (paramx.getType() != 106);
    a(((aj)paramx).CB());
  }

  public final void a(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeImage", "scanUICallback == null");
      return;
    }
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
    {
      aa.w("MicroMsg.scanner.ScanModeImage", "greyData null");
      if ((System.currentTimeMillis() - this.edU > 1800L + this.edQ) && (efV[1] == 1))
      {
        this.edU = System.currentTimeMillis();
        this.edK.a(0L, true);
        return;
      }
      this.edK.aC(this.edQ);
      return;
    }
    aaD();
    if (this.edS >= this.edT)
    {
      aa.d("MicroMsg.scanner.ScanModeImage", "too quick to send image, return now");
      this.edK.aC(this.edQ);
      if ((System.currentTimeMillis() - this.edU > 1800L + this.edQ) && (efV[1] == 1))
      {
        this.edU = System.currentTimeMillis();
        this.edK.a(0L, true);
        return;
      }
      this.edK.aC(this.edQ);
      return;
    }
    this.edR = new f(paramArrayOfByte, paramArrayOfByte.length, this.ebb);
    be.uA().d(this.edR);
    this.edS = (1 + this.edS);
    this.edL += paramArrayOfByte.length;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.edL);
    aa.e("MicroMsg.scanner.ScanModeImage", "totalNetworkFlow : [%s]", arrayOfObject);
    if ((System.currentTimeMillis() - this.edU > 1800L + this.edQ) && (efV[1] == 1))
    {
      this.edU = System.currentTimeMillis();
      this.edK.a(0L, true);
      return;
    }
    this.edK.aC(this.edQ);
  }

  public final int aaA()
  {
    return 2;
  }

  public final void aaC()
  {
    aa.d("MicroMsg.scanner.ScanModeImage", "decodeFail");
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeImage", "scanUICallback == null");
      return;
    }
    aaD();
    if ((System.currentTimeMillis() - this.edU > 1800L + this.edQ) && (efV[1] == 1))
    {
      this.edU = System.currentTimeMillis();
      this.edK.a(0L, true);
      return;
    }
    this.edK.aC(this.edQ);
  }

  protected final void aav()
  {
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeImage", "scanUICallback == null");
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
        aa.e("MicroMsg.scanner.ScanModeImage", "ImageQuality=[%s]", arrayOfObject);
      }
      if (!ba.bp(this.edK.aal()))
        break label102;
    }
    label102: for (this.edF = new j(this, i - 10, this.eed, false, this.edK.aam()); ; this.edF = new j(this, i, this.eed, false, this.edK.aam()))
      return this.edF;
  }

  protected final int aax()
  {
    return k.aYO;
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
    this.ecg = this.edK.findViewById(i.aIb);
    this.ecf = ((TextView)this.edK.findViewById(i.aIc));
    this.djQ = ((TextView)this.edK.findViewById(i.aIe));
    if (paramInt > 0)
    {
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.djQ.getLayoutParams();
      localLayoutParams.topMargin = (paramInt + 0 + e.a(this.edK.aal(), 13.0F));
      this.djQ.setLayoutParams(localLayoutParams);
    }
    if (com.tencent.mm.compatible.c.d.pI())
      this.djQ.setPadding(e.a(this.edK.aal(), 54.0F), this.djQ.getPaddingTop(), e.a(this.edK.aal(), 54.0F), this.djQ.getPaddingBottom());
    if (this.edF != null)
      ((j)this.edF).bi(this.edK.aam());
    aaB();
    bf(true);
  }

  protected final void onPause()
  {
    bf(false);
    be.uA().b(393, this);
    be.uA().b(106, this);
  }

  protected final void onResume()
  {
    be.uA().a(393, this);
    be.uA().a(106, this);
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeImage", "scanUICallback == null");
      return;
    }
    this.edS = 0;
    aaB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.an
 * JD-Core Version:    0.6.2
 */
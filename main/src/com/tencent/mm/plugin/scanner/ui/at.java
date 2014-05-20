package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Handler;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.c.a.ef;
import com.tencent.mm.c.a.eh;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.bm;
import com.tencent.mm.pluginsdk.ui.af;
import com.tencent.mm.protocal.a.sc;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class at extends ai
  implements com.tencent.mm.n.m, com.tencent.mm.plugin.c.a.i, com.tencent.mm.plugin.scanner.b.d, al
{
  private String bQI = "";
  private int ece = 0;
  private com.tencent.mm.plugin.scanner.b.a edF;
  private long edQ = 80L;
  private final int edV = 240;
  private final int edW = 240;
  private boolean eer = false;
  private boolean ees = false;
  private boolean eet = false;
  private TextView eeu;
  private boolean eev = false;
  private boolean eew;
  private View.OnClickListener eex = new au(this);

  public at(am paramam, Point paramPoint, int paramInt, boolean paramBoolean)
  {
    super(paramam, paramPoint);
    at(240, 240);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.edG);
    arrayOfObject[1] = Integer.valueOf(this.edH);
    aa.e("MicroMsg.scanner.ScanModeQRCode", "frameRectWidth = [%s], frameRectHeight = [%s]", arrayOfObject);
    this.ece = paramInt;
    this.ees = paramBoolean;
    if (cj.bD(paramam.aal()) < 100L)
    {
      aa.w("MicroMsg.scanner.ScanModeQRCode", "memory is not much");
      this.edQ = 280L;
    }
  }

  public at(am paramam, Point paramPoint, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramam, paramPoint, paramInt, paramBoolean1);
    this.eew = paramBoolean2;
  }

  private void a(Activity paramActivity, String paramString)
  {
    com.tencent.mm.modelsimple.x localx = new com.tencent.mm.modelsimple.x(paramString, null, 4, 0);
    com.tencent.mm.model.be.uA().d(localx);
    this.bQI = paramString;
    paramActivity.getString(n.ber);
    this.cIr = com.tencent.mm.ui.base.h.a(paramActivity, paramActivity.getString(n.buj), true, new bc(this, localx));
  }

  private void aaB()
  {
    if (this.edK == null)
      aa.e("MicroMsg.scanner.ScanModeQRCode", "dealWithNetWork(), scanUICallback == null");
    while ((com.tencent.mm.model.be.uA().wS() != 1) && (com.tencent.mm.model.be.uA().wS() != 5))
      return;
    this.edK.a(0L, false);
  }

  private void aaE()
  {
    if (this.edK == null)
      return;
    this.edK.a(0L, false);
    this.eer = false;
    this.edK.bd(false);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    arrayOfObject1[2] = paramString;
    aa.d("MicroMsg.scanner.ScanModeQRCode", "onSceneEnd: errType = [%s] errCode = [%s] errMsg = [%s]", arrayOfObject1);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    boolean bool1;
    if ((this.edK == null) || (paramx == null))
    {
      Object[] arrayOfObject2 = new Object[1];
      if (paramx == null)
      {
        bool1 = true;
        arrayOfObject2[0] = Boolean.valueOf(bool1);
        aa.b("MicroMsg.scanner.ScanModeQRCode", "onSceneEnd() scene is null [%s]", arrayOfObject2);
        this.eer = false;
      }
    }
    do
    {
      return;
      bool1 = false;
      break;
      if ((paramInt1 == 4) && (paramInt2 == -4))
      {
        com.tencent.mm.ui.base.h.a(this.edK.aal(), n.bug, n.ber, new ba(this));
        return;
      }
      int j;
      switch (paramInt1)
      {
      default:
        j = 0;
      case 1:
      case 2:
      }
      while (j != 0)
      {
        aaE();
        return;
        if (com.tencent.mm.model.be.uA().wT())
          af.k(this.edK.aal(), com.tencent.mm.model.be.uA().getNetworkServerIp(), String.valueOf(paramInt2));
        while (true)
        {
          j = 1;
          break;
          if (bm.ac(this.edK.aal()))
          {
            af.aZ(this.edK.aal());
          }
          else
          {
            Activity localActivity5 = this.edK.aal();
            Activity localActivity6 = this.edK.aal();
            int m = n.bmE;
            Object[] arrayOfObject7 = new Object[2];
            arrayOfObject7[0] = Integer.valueOf(1);
            arrayOfObject7[1] = Integer.valueOf(paramInt2);
            Toast.makeText(localActivity5, localActivity6.getString(m, arrayOfObject7), 1).show();
          }
        }
        Activity localActivity1 = this.edK.aal();
        Activity localActivity2 = this.edK.aal();
        int i = n.bmF;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(2);
        arrayOfObject3[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localActivity1, localActivity2.getString(i, arrayOfObject3), 1).show();
        j = 1;
      }
      if ((paramInt1 == 4) && (paramInt2 == -2004))
      {
        com.tencent.mm.ui.base.h.c(this.edK.aal(), n.bub, n.ber);
        aaE();
        return;
      }
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Activity localActivity3 = this.edK.aal();
        Activity localActivity4 = this.edK.aal();
        int k = n.bnk;
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(paramInt1);
        arrayOfObject4[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localActivity3, localActivity4.getString(k, arrayOfObject4), 0).show();
        aaE();
        return;
      }
      if (paramx.getType() == 233)
      {
        String str = ((com.tencent.mm.modelsimple.x)paramx).Cl();
        if ((str != null) && ((str.startsWith("http://login.weixin.qq.com")) || (str.startsWith("https://login.weixin.qq.com"))))
          this.ece = 2;
        boolean bool2 = com.tencent.mm.plugin.c.a.d.a(this, (com.tencent.mm.modelsimple.x)paramx, new bb(this), this.ece, this.bQI);
        if ((!bool2) && (((com.tencent.mm.modelsimple.x)paramx).Cn() == 4))
        {
          a(this.edK.aal(), str, 30);
          aaE();
          return;
        }
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = Boolean.valueOf(bool2);
        aa.d("MicroMsg.scanner.ScanModeQRCode", "scene geta8key, redirect result = [%s]", arrayOfObject6);
        this.edK.a(0L, false);
        return;
      }
      if (paramx.getType() == 106)
      {
        if (a(((aj)paramx).CB()))
        {
          this.edK.aal().finish();
          this.edK.aal().overridePendingTransition(0, 0);
          return;
        }
        aaE();
        return;
      }
    }
    while (paramx.getType() != 420);
    sc localsc = ((com.tencent.mm.plugin.scanner.a.e)paramx).ZE();
    if (localsc == null)
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "onSceneEnd(), getResp() == null");
      aaE();
      return;
    }
    Object[] arrayOfObject5 = new Object[1];
    arrayOfObject5[0] = Integer.valueOf(localsc.dGR);
    aa.e("MicroMsg.scanner.ScanModeQRCode", "onSceneEnd() ScanBarcode Type = %s", arrayOfObject5);
    if (cj.hX(localsc.fLU))
    {
      aaE();
      return;
    }
    switch (com.tencent.mm.plugin.scanner.b.m.a(localsc.fLU, this, 4))
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      this.edK.bd(false);
      return;
      this.edK.aal().finish();
      this.edK.aal().overridePendingTransition(0, 0);
      return;
      aa.d("MicroMsg.scanner.ScanModeQRCode", "onSceneEnd() PROCESS_XML_RETURN_TYPE_SEARCH_CONTACT");
      continue;
      aa.e("MicroMsg.scanner.ScanModeQRCode", "onSceneEnd() PROCESS_XML_RETURN_TYPE_WRONG");
      this.edK.a(0L, false);
    }
  }

  public final void a(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    int i = 2;
    if (this.edK == null)
      aa.w("MicroMsg.scanner.ScanModeQRCode", "scanUICallback == null");
    do
    {
      return;
      if (this.eer)
      {
        aa.w("MicroMsg.scanner.ScanModeQRCode", "is decoding, return");
        return;
      }
      this.eer = true;
      aa.e("MicroMsg.scanner.ScanModeQRCode", "decode success:%s", new Object[] { paramString });
      if (cj.hX(paramString))
      {
        this.eer = false;
        return;
      }
      if (com.tencent.mm.model.be.uA().wS() == 0)
      {
        Toast.makeText(this.edK.aal(), this.edK.aal().getString(n.bmF), 0).show();
        this.eer = false;
        return;
      }
      Activity localActivity1 = this.edK.aal();
      ef localef = new ef();
      if (paramInt == 1);
      for (localef.bPd.bPf = 0; ; localef.bPd.bPf = 1)
      {
        localef.bPd.bPg = paramString;
        if (!this.eev)
          break;
        aa.d("MicroMsg.scanner.ScanModeQRCode", "need to finish on decode success");
        localef.bPd.bOY = 1;
        com.tencent.mm.sdk.b.a.ayH().f(localef);
        localActivity1.finish();
        localActivity1.overridePendingTransition(0, 0);
        return;
      }
      localef.bPd.bOY = 0;
      com.tencent.mm.sdk.b.a.ayH().f(localef);
      if (localef.bPe.ret == 1)
      {
        localActivity1.finish();
        localActivity1.overridePendingTransition(0, 0);
      }
      this.edK.bd(true);
      if (paramInt == 1)
      {
        this.edK.aae();
        String str2 = "";
        if (paramString.startsWith("weixin://qr/"))
          str2 = paramString.substring(12) + "@qr";
        while (!cj.hX(str2))
        {
          a(this.edK.aal(), str2, 30);
          this.eer = false;
          return;
          if (paramString.startsWith("http://weixin.qq.com/r/"))
            str2 = paramString.substring(23) + "@qr";
        }
        a(this.edK.aal(), paramString);
        return;
      }
    }
    while (paramInt != i);
    if ((paramString == null) || (paramString.length() <= 0))
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "result is null");
      this.eer = false;
      this.edK.bd(false);
      return;
    }
    String[] arrayOfString = paramString.split(",");
    if ((arrayOfString == null) || (arrayOfString.length < i))
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "wrong zbar format");
      this.eer = false;
      this.edK.bd(false);
      return;
    }
    String str1 = arrayOfString[0];
    if (str1 != null)
      if (("EAN-13".equals(str1)) || ("EAN_13".equals(str1)))
        i = 4;
    while (true)
    {
      com.tencent.mm.plugin.scanner.a.e locale = new com.tencent.mm.plugin.scanner.a.e(i, arrayOfString[1]);
      com.tencent.mm.model.be.uA().d(locale);
      this.edK.aae();
      this.edK.bd(true);
      Activity localActivity2 = this.edK.aal();
      this.edK.aal().getString(n.ber);
      this.cIr = com.tencent.mm.ui.base.h.a(localActivity2, this.edK.aal().getString(n.buj), true, new bd(this, locale));
      return;
      if (("EAN-8".equals(str1)) || ("EAN_8".equals(str1)))
        i = 3;
      else if ("EAN-2".equals(str1))
        i = 1;
      else if (!"EAN-5".equals(str1))
        if (("UPC-A".equals(str1)) || ("UPC_A".equals(str1)))
          i = 5;
        else if (("UPC-E".equals(str1)) || ("UPC_E".equals(str1)))
          i = 6;
        else if (("CODE-39".equals(str1)) || ("CODE_39".equals(str1)))
          i = 9;
        else if (("CODE-93".equals(str1)) || ("CODE_93".equals(str1)))
          i = 10;
        else if (("CODE-128".equals(str1)) || ("CODE_128".equals(str1)))
          i = 11;
        else if ("COMPOSITE".equals(str1))
          i = 12;
        else if ("I/25".equals(str1))
          i = 13;
        else if ("DATABAR".equals(str1))
          i = 7;
        else if ("DATABAR-EXP".equals(str1))
          i = 8;
        else
          i = 0;
    }
  }

  public final void aT(boolean paramBoolean)
  {
    if (this.edK == null)
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "continueScan, scanUICallback == null");
      return;
    }
    if (paramBoolean)
    {
      this.edK.a(0L, false);
      this.eer = false;
      this.edK.bd(false);
      return;
    }
    this.edK.aal().finish();
    this.edK.aal().overridePendingTransition(0, 0);
  }

  public final int aaA()
  {
    return 1;
  }

  public final void aaC()
  {
    aa.d("MicroMsg.scanner.ScanModeQRCode", "decodeFail");
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeQRCode", "scanUICallback == null");
      return;
    }
    this.edK.aC(this.edQ);
  }

  protected final void aav()
  {
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeQRCode", "handleNetworkChange(), scanUICallback == null");
      return;
    }
    aaB();
  }

  protected final com.tencent.mm.plugin.scanner.b.a aaw()
  {
    if ((this.edF == null) && (this.edK != null))
      this.edF = new com.tencent.mm.plugin.scanner.b.f(this, this.ees, this.edK.aam());
    return this.edF;
  }

  protected final int aax()
  {
    return k.aYR;
  }

  protected final int aay()
  {
    return 240;
  }

  protected final void aaz()
  {
    hG(0);
    this.edK.a(0, new ax(this), this.eew);
    this.edK.a(this);
    onResume();
  }

  public final void b(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramActivity == null)
      return;
    this.eer = true;
    if (paramInt2 != -1)
    {
      this.eer = false;
      this.eet = false;
      return;
    }
    switch (paramInt1)
    {
    default:
      return;
    case 4660:
    }
    if (paramIntent == null)
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "onActivityResult data == null");
      this.eer = false;
      this.eet = false;
      return;
    }
    String str = com.tencent.mm.ui.tools.h.b(paramActivity, paramIntent, com.tencent.mm.model.be.uz().sB());
    aa.e("MicroMsg.scanner.ScanModeQRCode", "select: [%s]", new Object[] { str });
    new Handler().post(new be(this, paramActivity));
    if (this.edF != null)
      this.edF.aaF();
    new com.tencent.mm.plugin.c.a.a().a(str, new bg(this, paramActivity));
  }

  public final void bh(boolean paramBoolean)
  {
    this.eev = paramBoolean;
  }

  public final Context getContext()
  {
    if (this.edK == null)
    {
      aa.e("MicroMsg.scanner.ScanModeQRCode", "getContext(), scanUICallback == null");
      return null;
    }
    return this.edK.aal();
  }

  protected final void hG(int paramInt)
  {
    this.eeu = ((TextView)this.edK.findViewById(com.tencent.mm.i.aIh));
    this.eeu.setOnClickListener(this.eex);
    this.djQ = ((TextView)this.edK.findViewById(com.tencent.mm.i.aIe));
    if (paramInt > 0)
    {
      this.eeu.setVisibility(0);
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.djQ.getLayoutParams();
      localLayoutParams.topMargin = (paramInt + 0 + com.tencent.mm.sdk.platformtools.e.a(this.edK.aal(), 13.0F));
      this.djQ.setLayoutParams(localLayoutParams);
    }
    if (this.edF != null)
      ((com.tencent.mm.plugin.scanner.b.f)this.edF).bi(this.edK.aam());
    aaB();
    if (this.ece == 1)
      this.djQ.setText(n.buk);
    while (true)
    {
      bf(true);
      return;
      if (this.ece == 2)
        this.djQ.setText(n.bHH);
      else
        this.djQ.setText(n.bul);
    }
  }

  protected final void onPause()
  {
    bf(false);
    com.tencent.mm.model.be.uA().b(233, this);
    com.tencent.mm.model.be.uA().b(106, this);
    com.tencent.mm.model.be.uA().b(420, this);
  }

  protected final void onResume()
  {
    com.tencent.mm.model.be.uA().a(233, this);
    com.tencent.mm.model.be.uA().a(106, this);
    com.tencent.mm.model.be.uA().a(420, this);
    if (this.edK == null)
    {
      aa.w("MicroMsg.scanner.ScanModeQRCode", "scanUICallback == null");
      return;
    }
    if (!this.eet)
      this.eer = false;
    aaB();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.at
 * JD-Core Version:    0.6.2
 */
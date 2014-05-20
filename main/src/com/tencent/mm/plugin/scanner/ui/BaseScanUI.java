package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.PreviewCallback;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.ag;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bq;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.x;
import com.tencent.mm.x.b;

public class BaseScanUI extends MMActivity
  implements Camera.AutoFocusCallback, Camera.PreviewCallback, am
{
  private long ebG = 1200L;
  private final long ebH = 150L;
  private SurfaceHolder ebI;
  private boolean ebJ = false;
  private LinearLayout ebK;
  private TextView ebL;
  private FrameLayout ebM;
  private com.tencent.mm.plugin.scanner.b.h ebN;
  private boolean ebO = false;
  private Object ebP = new Object();
  private Point ebQ;
  private SelectScanModePanel ebR;
  private ScanMaskView ebS = null;
  private boolean ebT = false;
  private boolean ebU = true;
  private al ebV;
  private boolean ebW = false;
  private int ebX;
  private int ebY;
  private int ebZ;
  private int eca;
  private TranslateAnimation ecb;
  private ImageView ecc;
  private ai ecd;
  int ece = 0;
  private TextView ecf;
  private View ecg;
  private long ech;
  private boolean eci = false;
  private boolean ecj = false;
  private BaseScanUI.ScreenOnOffReceiver eck = null;
  private ag ecl = new a(this);
  protected Handler ecm = new l(this);
  private final int ecn = 2600;
  private SurfaceHolder.Callback eco = new m(this);
  private boolean ecp = false;
  protected Handler ecq = new d(this);
  protected Handler ecr = new e(this);
  protected Handler ecs = new f(this);
  private long ect = 0L;
  private PowerManager.WakeLock wakeLock = null;

  private void a(boolean paramBoolean, long paramLong)
  {
    if ((this.ebZ < 0) || (this.eca <= 0))
      return;
    if (paramBoolean)
    {
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.ecc.getLayoutParams();
      localLayoutParams.width = this.ebX;
      this.ecc.setLayoutParams(localLayoutParams);
      this.ecc.invalidate();
      this.ecc.setVisibility(0);
      if (this.ecb != null)
        break label118;
    }
    for (this.ecb = new TranslateAnimation(0.0F, 0.0F, this.ebZ, this.eca); ; this.ecb = new TranslateAnimation(0.0F, 0.0F, this.ebZ, this.eca))
    {
      this.ecm.removeMessages(1);
      if (paramLong > 0L)
        break;
      this.ecm.sendEmptyMessage(1);
      return;
      label118: this.ecb.reset();
    }
    aad();
    this.ecm.sendEmptyMessageDelayed(1, paramLong);
  }

  private void aac()
  {
    if (this.ecd == null);
    do
    {
      return;
      this.ebM.removeAllViews();
      View.inflate(this, this.ecd.aax(), this.ebM);
      this.ecd.aaz();
    }
    while (!this.ebJ);
    aai();
  }

  private void aaf()
  {
    com.tencent.mm.sdk.platformtools.an.i(new n(this));
    com.tencent.mm.sdk.platformtools.an.b(new o(this), 30L);
  }

  private void aag()
  {
    this.ebO = true;
    new Thread(new p(this)).start();
  }

  private void aah()
  {
    x localx = com.tencent.mm.ui.base.h.a(this, getString(com.tencent.mm.n.bxr), getString(com.tencent.mm.n.ber), new c(this));
    if (localx == null)
    {
      aa.d("MicroMsg.scanner.ScanBaseUI", "comfirmDialog == null");
      return;
    }
    localx.setCanceledOnTouchOutside(false);
    localx.show();
  }

  protected final void FR()
  {
    this.ech = System.currentTimeMillis();
    this.ebW = com.tencent.mm.compatible.c.d.pI();
    if (this.ebW)
    {
      getWindow().setFlags(1024, 1024);
      aFd();
      aa.d("MicroMsg.scanner.ScanBaseUI", "oncreate LANDSCAPE");
    }
    this.ecg = findViewById(com.tencent.mm.i.aIb);
    this.ecf = ((TextView)findViewById(com.tencent.mm.i.aIc));
    this.ebK = ((LinearLayout)findViewById(com.tencent.mm.i.aIf));
    this.ebL = ((TextView)findViewById(com.tencent.mm.i.aIg));
    this.ebM = ((FrameLayout)findViewById(com.tencent.mm.i.aHZ));
    this.ebI = ((SurfaceView)findViewById(com.tencent.mm.i.aEp)).getHolder();
    this.ebI.addCallback(this.eco);
    this.ebI.setType(3);
    Button localButton = (Button)findViewById(com.tencent.mm.i.aHY);
    int i;
    if (localButton != null)
    {
      localButton.setOnClickListener(new i(this));
      this.ecc = ((ImageView)findViewById(com.tencent.mm.i.aIa));
      this.ece = getIntent().getIntExtra("GetFriendQRCodeUI.INTENT_FROM_ACTIVITY", 0);
      this.ebR = ((SelectScanModePanel)findViewById(com.tencent.mm.i.aId));
      this.ebM.setVisibility(0);
      i = getIntent().getIntExtra("BaseScanUI_select_scan_mode", 1);
      this.ecj = getIntent().getBooleanExtra("BaseScanUI_qrcode_right_btn_direct_album", false);
      if (this.ebW)
      {
        this.eci = true;
        i = 1;
      }
      if (i != 2)
        break label376;
      this.ecd = new an(this, this.ebQ);
      aac();
      mn(com.tencent.mm.n.bxn);
    }
    label569: 
    while (true)
    {
      this.ebR.a(new k(this));
      this.ebR.hI(i);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(this.ece);
      arrayOfObject[1] = Integer.valueOf(i);
      aa.d("MicroMsg.scanner.ScanBaseUI", "initView() done, fromSource=[%s], directSelectMode=[%s]", arrayOfObject);
      return;
      a(new j(this));
      break;
      label376: if (i == 5)
      {
        this.ecd = new bi(this, this.ebQ);
        aac();
        mn(com.tencent.mm.n.bxj);
      }
      else if (i == 3)
      {
        this.ecd = new ar(this, this.ebQ);
        aac();
        mn(com.tencent.mm.n.bxf);
      }
      else
      {
        this.ecd = new at(this, this.ebQ, this.ece, this.ebW, this.ecj);
        ((at)this.ecd).bh(getIntent().getBooleanExtra("key_is_finish_on_scanned", false));
        aac();
        if (b.Bh())
        {
          this.eci = true;
          this.ebR.setVisibility(8);
        }
        while (true)
        {
          if (!this.eci)
            break label569;
          mn(com.tencent.mm.n.bxh);
          i = 1;
          break;
          if (getIntent().getBooleanExtra("BaseScanUI_only_scan_qrcode_with_zbar", false))
          {
            this.eci = false;
            this.ebR.setVisibility(8);
          }
        }
        mn(com.tencent.mm.n.bxi);
        i = 1;
      }
    }
  }

  protected final int IX()
  {
    this.ebW = com.tencent.mm.compatible.c.d.pI();
    if (!this.ebW)
    {
      aa.d("MicroMsg.scanner.ScanBaseUI", "getForceOrientation PORTRAIT");
      return 1;
    }
    aa.d("MicroMsg.scanner.ScanBaseUI", "getForceOrientation LANDSCAPE");
    return 0;
  }

  public final void VX()
  {
    if ((this.wakeLock != null) && (this.wakeLock.isHeld()))
    {
      this.wakeLock.release();
      this.wakeLock = null;
    }
  }

  public final void a(int paramInt, View.OnClickListener paramOnClickListener, boolean paramBoolean)
  {
    if (this.ebK != null)
    {
      this.ebK.setVisibility(paramInt);
      this.ebK.setOnClickListener(paramOnClickListener);
      if (paramBoolean)
      {
        this.ebL.setBackgroundDrawable(null);
        this.ebL.setText(getString(com.tencent.mm.n.bxT));
      }
      return;
    }
    if (paramOnClickListener == null)
    {
      mE(0);
      return;
    }
    if (paramBoolean)
    {
      a(0, getString(com.tencent.mm.n.bxT), new g(this, paramOnClickListener));
      return;
    }
    a(0, com.tencent.mm.h.afQ, new h(this, paramOnClickListener));
  }

  public final void a(long paramLong, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramLong > 0L))
      this.ebG = paramLong;
    if ((!this.ebT) && (this.ebN != null) && (this.ebN != null) && (this.ebN.aaM()))
    {
      aC(50L);
      if (paramLong == 0L)
        aD(100L);
    }
    else
    {
      return;
    }
    aD(this.ebG);
  }

  public final void a(al paramal)
  {
    this.ebV = paramal;
  }

  public final void aC(long paramLong)
  {
    this.ecr.removeMessages(0);
    if (!this.ebT)
    {
      this.ecr.sendEmptyMessageDelayed(0, paramLong);
      return;
    }
    aa.w("MicroMsg.scanner.ScanBaseUI", "takeOneShotDelay() scanPause");
  }

  public final void aD(long paramLong)
  {
    this.ecs.removeMessages(0);
    if (paramLong == 0L)
    {
      this.ecs.sendEmptyMessageDelayed(0, 100L);
      this.ect = System.currentTimeMillis();
      return;
    }
    this.ebN.aaM();
    if (System.currentTimeMillis() - this.ect < this.ebG)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(this.ebG - (System.currentTimeMillis() - this.ect));
      aa.e("MicroMsg.scanner.ScanBaseUI", "autoFocusDelay sendEmptyMessageDelayed [%s]", arrayOfObject2);
      this.ecs.sendEmptyMessageDelayed(0, this.ebG - (System.currentTimeMillis() - this.ect));
      return;
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Long.valueOf(paramLong);
    aa.e("MicroMsg.scanner.ScanBaseUI", "autoFocusDelay sendEmptyMessageDelayed [%s].", arrayOfObject1);
    this.ecs.sendEmptyMessageDelayed(0, paramLong);
    this.ect = System.currentTimeMillis();
  }

  public final void aad()
  {
    if ((this.ecc != null) && (this.ecb != null))
    {
      this.ecc.setVisibility(8);
      this.ecc.clearAnimation();
      this.ecc.setAnimation(null);
    }
  }

  public final void aae()
  {
    bq.q(this, com.tencent.mm.n.buc);
  }

  public final void aai()
  {
    try
    {
      if ((this.ecd == null) || (this.ecd.bg(true) == null))
      {
        aa.d("MicroMsg.scanner.ScanBaseUI", "initBodyByScanMode null scanMode");
        return;
      }
      if (this.ebN != null)
      {
        Rect localRect1 = new Rect();
        getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect1);
        int i = localRect1.top;
        Rect localRect2 = this.ebN.a(this.ecd.bg(false), true);
        Object[] arrayOfObject1 = new Object[5];
        arrayOfObject1[0] = Integer.valueOf(i);
        arrayOfObject1[1] = Float.valueOf(this.ebN.aaQ());
        arrayOfObject1[2] = Float.valueOf(this.ebN.aaP());
        arrayOfObject1[3] = Integer.valueOf(localRect1.width());
        arrayOfObject1[4] = Integer.valueOf(localRect1.height());
        aa.e("MicroMsg.scanner.ScanBaseUI", "initBodyByScanMode statusBarHeight = [%s], CameraScreenHeightRate() = [%s], CameraScreenWidthRate() = [%s], frame.width=[%s], frame.height=[%s]", arrayOfObject1);
        FrameLayout.LayoutParams localLayoutParams1;
        label312: Rect localRect3;
        label472: Rect localRect4;
        if (!com.tencent.mm.compatible.c.d.pI())
          if (this.ebN.aaN())
          {
            this.ebX = ((int)(localRect2.height() * this.ebN.aaQ()));
            this.ebY = ((int)(localRect2.width() * this.ebN.aaP()));
            localLayoutParams1 = new FrameLayout.LayoutParams(this.ebX, this.ebY, 3);
            if (!this.ebN.aaN())
              break label903;
            localLayoutParams1.leftMargin = ((int)(localRect2.top * this.ebN.aaP()));
            localLayoutParams1.topMargin = ((int)(localRect2.left * this.ebN.aaQ()));
            if (this.ebN.aaQ() <= 1.3D)
              break label869;
            localLayoutParams1.topMargin = ((int)(localLayoutParams1.topMargin - i / this.ebN.aaQ()));
            Object[] arrayOfObject2 = new Object[6];
            arrayOfObject2[0] = Integer.valueOf(localLayoutParams1.leftMargin);
            arrayOfObject2[1] = Integer.valueOf(localLayoutParams1.topMargin);
            arrayOfObject2[2] = Integer.valueOf(this.ebX);
            arrayOfObject2[3] = Integer.valueOf(this.ebY);
            arrayOfObject2[4] = Boolean.valueOf(this.ebN.aaN());
            arrayOfObject2[5] = Integer.valueOf(i);
            aa.e("MicroMsg.scanner.ScanBaseUI", "mask : leftMargin=[%s], topMargin=[%s], width=[%s], height=[%s], needRotate=[%s], statusBarHeight=[%s]", arrayOfObject2);
            if (this.ecd.aaA() != 1)
              break label946;
            int j = com.tencent.mm.sdk.platformtools.e.a(this, 15.0F);
            localRect3 = new Rect(j + localLayoutParams1.leftMargin, j + localLayoutParams1.topMargin, localLayoutParams1.leftMargin + this.ebX - j, localLayoutParams1.topMargin + this.ebY - j - j);
            if (com.tencent.mm.plugin.scanner.b.h.h(this).x - localRect3.right < localRect3.left)
            {
              aa.w("MicroMsg.scanner.ScanBaseUI", "this is a special device");
              if (com.tencent.mm.plugin.scanner.b.h.h(this).x - localRect3.left > localRect3.left)
                localRect3.right = (com.tencent.mm.plugin.scanner.b.h.h(this).x - localRect3.left);
            }
            this.ebX = localRect3.width();
            if (this.ebS == null)
              break label988;
            localRect4 = this.ebS.aas();
            this.ebS.aar();
          }
        label903: label946: label988: for (this.ebS = new ScanMaskView(this, localRect4); ; this.ebS = new ScanMaskView(this, localRect3))
        {
          FrameLayout.LayoutParams localLayoutParams2 = new FrameLayout.LayoutParams(-1, -1);
          this.ebS.setLayoutParams(localLayoutParams2);
          this.ebM.removeAllViews();
          View.inflate(this, this.ecd.aax(), this.ebM);
          this.ebM.addView(this.ebS, 0, localLayoutParams2);
          this.ebS.a(localRect3);
          ai localai = this.ecd;
          localai.hG(localRect3.bottom);
          this.ebZ = localRect3.top;
          this.eca = (localRect3.bottom - com.tencent.mm.sdk.platformtools.e.a(this, 8.0F));
          if (!this.ebU)
            break label1005;
          ScanMaskView.aat();
          a(true, 350L);
          if ((this.ebN != null) && (this.ebN.aaM()))
          {
            aC(50L);
            aD(0L);
          }
          if ((this.ecf == null) || (this.ecg == null))
            break label1045;
          this.ecf.setVisibility(8);
          this.ecg.setVisibility(8);
          return;
          this.ebX = ((int)(localRect2.width() * this.ebN.aaP()));
          this.ebY = ((int)(localRect2.height() * this.ebN.aaQ()));
          break;
          this.ebX = ((int)(localRect2.width() * this.ebN.aaP()));
          this.ebY = ((int)(localRect2.height() * this.ebN.aaQ()));
          break;
          label869: localLayoutParams1.topMargin = ((int)(localLayoutParams1.topMargin - (i - com.tencent.mm.sdk.platformtools.e.a(this, 9.0F)) / this.ebN.aaQ()));
          break label312;
          localLayoutParams1.leftMargin = ((int)(localRect2.left * this.ebN.aaP()));
          localLayoutParams1.topMargin = ((int)(localRect2.top * this.ebN.aaQ()));
          break label312;
          localRect3 = new Rect(localLayoutParams1.leftMargin, localLayoutParams1.topMargin, localLayoutParams1.leftMargin + this.ebX, localLayoutParams1.topMargin + this.ebY);
          break label472;
        }
        label1005: if ((this.ecf != null) && (this.ecg != null))
        {
          this.ecf.setText(com.tencent.mm.n.bxq);
          this.ecg.setVisibility(0);
          this.ecf.setVisibility(0);
        }
      }
      label1045: return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void aaj()
  {
    if ((this.ebN == null) || (!this.ebJ))
      return;
    try
    {
      this.ebN.b(this.ebI);
      aC(50L);
      aD(0L);
      a(false, 150L);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.scanner.ScanBaseUI", "in setPreviewState");
    }
  }

  public final void aak()
  {
    s.e(this, 4660);
  }

  public final Activity aal()
  {
    return this;
  }

  public final boolean aam()
  {
    if (this.ebN == null)
    {
      aa.d("MicroMsg.scanner.ScanBaseUI", "scanCamera == null, cameraNeedRotate return false");
      return false;
    }
    return this.ebN.aaN();
  }

  public final void bd(boolean paramBoolean)
  {
    this.ebT = paramBoolean;
    if (paramBoolean)
    {
      aad();
      if (this.ecg != null)
        this.ecg.setVisibility(0);
    }
    do
    {
      return;
      a(0L, false);
      a(false, 0L);
    }
    while (this.ecg == null);
    this.ecg.setVisibility(8);
  }

  protected final int getLayoutId()
  {
    this.ebW = com.tencent.mm.compatible.c.d.pI();
    if (!this.ebW)
    {
      aa.d("MicroMsg.scanner.ScanBaseUI", "getLayoutId PORTRAIT");
      return com.tencent.mm.k.aYM;
    }
    aa.d("MicroMsg.scanner.ScanBaseUI", "getLayoutId LANDSCAPE");
    return com.tencent.mm.k.aYN;
  }

  public final void hD(int paramInt)
  {
    this.ecq.removeMessages(0);
    this.ecq.sendEmptyMessageDelayed(paramInt, 50L);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.ebV != null)
      this.ebV.b(this, paramInt1, paramInt2, paramIntent);
  }

  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    if (this.ebT);
    while ((this.ecd == null) || (this.ecd.aaA() == 3) || (this.ecd.aaA() == 2) || (this.ebN == null) || (!this.ebN.aaM()))
      return;
    aD(this.ebG);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    MMActivity.bO(this);
    if ((be.uA().wS() == 1) || (be.uA().wS() == 5));
    for (this.ebU = true; ; this.ebU = false)
    {
      this.ebQ = com.tencent.mm.plugin.scanner.b.h.h(this);
      this.eck = new BaseScanUI.ScreenOnOffReceiver(this);
      registerReceiver(this.eck, new IntentFilter("android.intent.action.SCREEN_OFF"));
      FR();
      return;
    }
  }

  protected void onDestroy()
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "onDestroy()");
    if ((this.ecd == null) || (this.ebS != null))
      this.ebS.aar();
    aag();
    VX();
    unregisterReceiver(this.eck);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      aa.d("MicroMsg.scanner.ScanBaseUI", "keyCode KEYCODE_BACK");
      this.ebT = true;
      finish();
      overridePendingTransition(0, 0);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    aa.d("MicroMsg.scanner.ScanBaseUI", "onPause()");
    this.ebT = true;
    if (this.ecd != null)
    {
      this.ecd.onPause();
      if (this.ecd.aaw() != null)
        this.ecd.aaw().aaF();
    }
    synchronized (this.ebP)
    {
      if (this.ebN != null)
        this.ebN.stopPreview();
      sendBroadcast(new Intent("com.tencent.mm.ui.ACTION_DEACTIVE").putExtra("classname", getClass().getName()), "com.tencent.mm.permission.MM_MESSAGE");
      be.b(this.ecl);
      super.onPause();
      return;
    }
  }

  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    boolean bool = true;
    if ((this.ebT) || (this.ecd == null) || (this.ecd.aaw() == null) || (this.ecd.bg(false) == null))
    {
      Object[] arrayOfObject1 = new Object[bool];
      arrayOfObject1[0] = Boolean.valueOf(this.ebT);
      aa.c("MicroMsg.scanner.ScanBaseUI", "onPreviewFrame error state, scanPause = [%s]", arrayOfObject1);
      return;
    }
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
    {
      Object[] arrayOfObject2 = new Object[bool];
      if (paramArrayOfByte == null);
      while (true)
      {
        arrayOfObject2[0] = Boolean.valueOf(bool);
        aa.b("MicroMsg.scanner.ScanBaseUI", "onPreviewFrame, wrong data, data is null [%s]", arrayOfObject2);
        aah();
        return;
        bool = false;
      }
    }
    if (this.ebN == null)
    {
      aa.e("MicroMsg.scanner.ScanBaseUI", "onPreviewFrame, scanCamera == null, finish this activity");
      return;
    }
    this.ecd.aaw().a(paramArrayOfByte, this.ebN.aaO(), this.ebN.b(this.ecd.bg(false)), cj.bD(this));
  }

  protected void onResume()
  {
    super.onResume();
    if (this.ebU)
    {
      this.ebT = false;
      a(false, 0L);
    }
    while (true)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(this.ebT);
      aa.e("MicroMsg.scanner.ScanBaseUI", "onResume(), scanPause=[%s]", arrayOfObject);
      if (this.ebJ);
      synchronized (this.ebP)
      {
        if (this.ebN == null)
        {
          aa.d("MicroMsg.scanner.ScanBaseUI", "reOpen Camera");
          this.ebN = new com.tencent.mm.plugin.scanner.b.h(this);
          aaf();
        }
        while (true)
        {
          if (this.ecd != null)
          {
            if (this.ecd.aaw() != null)
              this.ecd.aaw().aaG();
            this.ecd.onResume();
          }
          if (this.wakeLock == null)
          {
            this.wakeLock = ((PowerManager)getSystemService("power")).newWakeLock(10, "MicroMsg.scanner.ScanBaseUI");
            this.wakeLock.acquire();
          }
          sendBroadcast(new Intent("com.tencent.mm.ui.ACTION_ACTIVE").putExtra("classname", getClass().getName()), "com.tencent.mm.permission.MM_MESSAGE");
          be.a(this.ecl);
          return;
          this.ebT = true;
          aad();
          break;
          aa.d("MicroMsg.scanner.ScanBaseUI", "startPreview");
          this.ebO = false;
          try
          {
            this.ebN.b(this.ebI);
            aC(50L);
            aD(0L);
          }
          catch (Exception localException)
          {
            aa.e("MicroMsg.scanner.ScanBaseUI", "in onResume startPreview");
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.BaseScanUI
 * JD-Core Version:    0.6.2
 */
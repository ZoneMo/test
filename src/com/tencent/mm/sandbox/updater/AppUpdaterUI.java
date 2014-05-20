package com.tencent.mm.sandbox.updater;

import android.app.Activity;
import android.app.Notification;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import com.tencent.mm.a.f;
import com.tencent.mm.b.h;
import com.tencent.mm.sandbox.b;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.x;
import java.io.File;

public class AppUpdaterUI extends Activity
{
  private String bPX;
  private String cDM;
  private Button cNz;
  private byte[] cmW;
  private String desc;
  private x dpV = null;
  private Notification eLx = null;
  private int gaO;
  private com.tencent.mm.sandbox.monitor.j gaS = null;
  private Button gaT;
  private String[] gaU;
  private int gaV = com.tencent.mm.protocal.a.fxr;
  private String[] gaW;
  private com.tencent.mm.b.g gaX;
  private h gaY;
  private boolean gaZ = false;
  private boolean gba = false;
  private DialogInterface.OnClickListener gbb = new k(this);
  private DialogInterface.OnClickListener gbc = new l(this);
  private b gbd = new n(this);
  private int size;
  private int uin;

  private void ayD()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "showUpdateDlg, downloadUrls = " + this.gaW);
    if (this.gaW != null)
      for (String str5 : this.gaW)
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "download url : " + str5);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "md5 = " + this.bPX + " , size = " + this.size);
    if ((this.bPX == null) || (this.size == 0))
      finish();
    com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(this);
    localaa.mR(com.tencent.mm.n.bnp);
    localaa.dp(true);
    localaa.a(new j(this));
    String str2;
    String str3;
    String str4;
    label269: String str1;
    if (this.gaX != null)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "patchInfo != null");
      str2 = af.bh(this);
      if ((str2 == null) || (!new File(str2).exists()))
      {
        str3 = null;
        this.gaY = this.gaX.aA(str3);
        StringBuilder localStringBuilder = new StringBuilder("apkMD5 = ").append(str3).append(" : ");
        if (this.gaY != null)
          break label504;
        str4 = "not match";
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", str4);
      }
    }
    else
    {
      if ((this.gaY == null) || (com.tencent.mm.sandbox.monitor.j.sp(this.bPX)))
        break label512;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "isIncresmentUpdate");
      this.gaZ = true;
      int k = com.tencent.mm.n.bnr;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = this.desc;
      arrayOfObject2[1] = getString(com.tencent.mm.n.bDx);
      arrayOfObject2[2] = cj.K(this.gaY.getSize());
      str1 = getString(k, arrayOfObject2);
      label369: if (this.gaO == 1)
        break label575;
    }
    label512: label575: for (int j = com.tencent.mm.n.bDq; ; j = com.tencent.mm.n.bDs)
    {
      localaa.wg(str1);
      localaa.a(com.tencent.mm.n.bDA, this.gbc);
      localaa.c(j, this.gbb);
      this.dpV = localaa.aGI();
      this.dpV.setCanceledOnTouchOutside(false);
      this.gaT = this.dpV.getButton(-1);
      this.cNz = this.dpV.getButton(-2);
      this.dpV.show();
      return;
      com.tencent.mm.b.a locala = com.tencent.mm.b.a.ax(str2);
      if ((locala != null) && (locala.nd() != null))
      {
        str3 = locala.nd().ng();
        break;
      }
      str3 = f.au(str2);
      break;
      label504: str4 = "match";
      break label269;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "had try to download full pack.");
      int i = com.tencent.mm.n.bnr;
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = this.desc;
      arrayOfObject1[1] = getString(com.tencent.mm.n.bDt);
      arrayOfObject1[2] = cj.K(this.size);
      str1 = getString(i, arrayOfObject1);
      break label369;
    }
  }

  private void ayE()
  {
    if (this.gaS != null)
      this.gaS.a(this.gbd);
  }

  private void ly(int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.tencent.mm.sandbox.updater.intent.ACTION_UPDATE");
    localIntent.putExtra("intent_extra_opcode", paramInt);
    sendBroadcast(localIntent, "com.tencent.mm.permission.MM_MESSAGE");
  }

  private void lz(int paramInt)
  {
    this.gba = true;
    new Handler().postDelayed(new g(this, paramInt), 300L);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.sandbox.c.lw(hashCode());
    MMActivity.bO(this);
    setContentView(com.tencent.mm.k.empty);
    this.gaU = getIntent().getStringArrayExtra("intent_short_ips");
    this.gaV = getIntent().getIntExtra("intent_client_version", com.tencent.mm.protocal.a.fxr);
    com.tencent.mm.protocal.a.fxr = this.gaV;
    this.gaO = getIntent().getIntExtra("intent_update_type", 3);
    this.cDM = getIntent().getStringExtra("intent_extra_session");
    this.cmW = getIntent().getByteArrayExtra("intent_extra_cookie");
    this.uin = getIntent().getIntExtra("intent_extra_uin", 0);
    this.desc = getIntent().getStringExtra("intent_extra_desc");
    this.bPX = getIntent().getStringExtra("intent_extra_md5");
    this.size = getIntent().getIntExtra("intent_extra_size", 0);
    this.gaW = getIntent().getStringArrayExtra("intent_extra_download_url");
    String str = getIntent().getStringExtra("intent_extra_patchInfo");
    if (str != null)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "patchXml != null");
      this.gaX = com.tencent.mm.b.g.aB(str);
    }
    if ((this.gaO == 999) && (this.gaW != null) && (this.gaW.length > 0))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.AppUpdaterUI", "into emergency status");
      new Handler().postDelayed(new a(this), 100L);
      return;
    }
    ayD();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    com.tencent.mm.sandbox.c.lx(hashCode());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.AppUpdaterUI
 * JD-Core Version:    0.6.2
 */
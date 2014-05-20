package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.app.ab;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.tools.ShowImageUI;
import java.io.File;

public class AppAttachDownloadUI extends MMActivity
  implements m, al
{
  private long bMS;
  private String bNy;
  private ab cZU;
  private ProgressBar cZV;
  private n cZW;
  private ak cad;
  private ImageView dPW;
  private ImageView dPX;
  private Button djN;
  private View djS;
  private Button esd;
  private int fhI;
  private View gJR;
  private TextView gJS;
  private TextView gJT;
  private boolean gJU;
  private Button gJV;
  private String gJW;
  private boolean gJX = false;
  private boolean gJY = false;
  private int gJZ = 5000;
  private LinearLayout gKa;
  private LinearLayout gKb;
  private TextView grG;
  private String mediaId;
  private String rD;

  private void aIE()
  {
    if (ba.HF().qk(this.mediaId) == null)
      s.b(this.bMS, this.bNy, null);
  }

  private void aIF()
  {
    switch (this.fhI)
    {
    case 1:
    case 3:
    case 4:
    case 5:
    default:
      this.djN.setVisibility(0);
      this.djS.setVisibility(8);
      this.gJR.setVisibility(8);
    case 0:
    case 6:
    case 2:
      do
      {
        do
          return;
        while (!aIG());
        if (cj.te(this.gJW))
        {
          aIH();
          return;
        }
        String str = getMimeType();
        this.grG.setVisibility(0);
        this.gJV.setVisibility(8);
        this.djS.setVisibility(8);
        this.gJR.setVisibility(8);
        this.esd.setVisibility(8);
        this.gJT.setVisibility(0);
        if (this.rD.equals(""))
          this.gJT.setText(getString(2131166851));
        while ((str == null) || (str.equals("")))
        {
          this.djN.setVisibility(8);
          this.grG.setText(getString(2131166753));
          return;
          this.gJT.setText(this.rD);
        }
        this.djN.setVisibility(0);
        this.grG.setText(getString(2131166754));
        return;
      }
      while (!aIG());
      aIH();
      return;
    case 7:
    }
    Intent localIntent = new Intent();
    localIntent.putExtra("App_MsgId", this.bMS);
    setResult(-1, localIntent);
    finish();
  }

  private boolean aIG()
  {
    com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(this.mediaId);
    if (locala == null);
    while (c.as(locala.field_fileFullPath))
      return true;
    this.gKa.setVisibility(8);
    this.gKb.setVisibility(0);
    return false;
  }

  private void aIH()
  {
    com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(this.mediaId);
    Intent localIntent = new Intent(this, ShowImageUI.class);
    localIntent.putExtra("key_message_id", this.cad.Bo());
    localIntent.putExtra("key_image_path", locala.field_fileFullPath);
    localIntent.putExtra("key_favorite", true);
    startActivity(localIntent);
    finish();
  }

  private String getMimeType()
  {
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.bNy);
    String str1 = localb.cgD;
    String str2 = null;
    if (str1 != null)
    {
      int i = localb.cgD.length();
      str2 = null;
      if (i > 0)
        str2 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(localb.cgD);
    }
    if ((str2 == null) || (str2.length() == 0))
    {
      aa.w("MicroMsg.AppAttachDownloadUI", "getMimeType fail, not a built-in mimetype, use \"*/{fileext}\" instead");
      str2 = "*/" + localb.cgD;
    }
    return str2;
  }

  protected final void FR()
  {
    this.dPW = ((ImageView)findViewById(2131361982));
    this.djS = findViewById(2131361983);
    this.cZV = ((ProgressBar)findViewById(2131361984));
    this.dPX = ((ImageView)findViewById(2131361985));
    this.esd = ((Button)findViewById(2131362483));
    this.djN = ((Button)findViewById(2131362484));
    this.gJV = ((Button)findViewById(2131362485));
    this.gJR = findViewById(2131362486);
    this.grG = ((TextView)findViewById(2131362488));
    this.gJS = ((TextView)findViewById(2131362487));
    this.gJT = ((TextView)findViewById(2131362482));
    this.gKa = ((LinearLayout)findViewById(2131362481));
    this.gKb = ((LinearLayout)findViewById(2131362489));
    this.dPX.setOnClickListener(new e(this));
    this.esd.setOnClickListener(new f(this));
    this.djN.setOnClickListener(new h(this));
    switch (this.fhI)
    {
    case 1:
    case 3:
    case 5:
    default:
      this.dPW.setBackgroundResource(2130837977);
    case 2:
    case 4:
    case 0:
    case 6:
    case 7:
    }
    while (true)
    {
      this.gJV.setOnClickListener(new g(this));
      a(new a(this));
      a(0, 2130837608, new b(this));
      this.gJX = false;
      com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(this.mediaId);
      if (((locala == null) || (!locala.vN())) && ((this.cad.rO() != 1) || (locala == null) || (!locala.field_isUpload)))
        break;
      this.gJX = true;
      aIF();
      return;
      this.dPW.setBackgroundResource(2130837976);
      continue;
      this.dPW.setBackgroundResource(2130837978);
      continue;
      if (cj.te(this.gJW))
        this.dPW.setBackgroundResource(2130837976);
      else
        this.dPW.setBackgroundResource(2130837977);
    }
    this.cZW = new d(this);
    switch (this.fhI)
    {
    case 1:
    case 3:
    case 4:
    case 5:
    default:
      return;
    case 0:
    case 6:
      if (this.gJY)
      {
        this.gJV.setVisibility(8);
        this.esd.setVisibility(0);
        this.djS.setVisibility(8);
        this.gJR.setVisibility(8);
        this.djN.setVisibility(8);
        this.grG.setVisibility(0);
        this.gJT.setVisibility(0);
        if (!this.rD.equals(""))
          break label672;
        this.gJT.setText(getString(2131166851));
        String str = getMimeType();
        if ((str != null) && (!str.equals("")))
          break label686;
        this.grG.setText(getString(2131166753));
      }
      while (cj.te(this.gJW))
      {
        this.grG.setVisibility(8);
        return;
        this.gJV.setVisibility(0);
        this.esd.setVisibility(8);
        break label533;
        this.gJT.setText(this.rD);
        break label601;
        this.grG.setText(getString(2131166754));
      }
    case 7:
      label533: label601: if (this.gJY)
      {
        this.gJV.setVisibility(8);
        this.esd.setVisibility(0);
      }
      while (true)
      {
        label672: label686: this.djS.setVisibility(8);
        this.gJR.setVisibility(8);
        this.djN.setVisibility(8);
        this.gJT.setVisibility(8);
        this.grG.setVisibility(0);
        this.grG.setText(getString(2131166754));
        return;
        this.gJV.setVisibility(0);
        this.esd.setVisibility(8);
      }
    case 2:
    }
    this.gJV.setVisibility(8);
    this.djS.setVisibility(0);
    this.gJR.setVisibility(0);
    this.esd.setVisibility(8);
    this.djN.setVisibility(8);
    this.gJT.setVisibility(8);
    this.grG.setVisibility(8);
    this.cZU = new ab(this.bMS, this.mediaId, this.cZW);
    aIE();
    be.uA().d(this.cZU);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 221);
    while ((paramInt1 == 0) && (paramInt2 == 0))
      return;
    this.djS.setVisibility(8);
    this.esd.setVisibility(0);
    this.gJR.setVisibility(8);
    aa.e("MicroMsg.AppAttachDownloadUI", "onSceneEnd, download fail, errType = " + paramInt1 + ", errCode = " + paramInt2);
  }

  public final void ca(String paramString)
  {
    com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(this.mediaId);
    long l1;
    long l2;
    int i;
    if (locala != null)
    {
      l1 = locala.field_totalLen;
      l2 = locala.field_offset;
      TextView localTextView = this.gJS;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = au.K(l2);
      arrayOfObject[1] = au.K(l1);
      localTextView.setText(getString(2131166756, arrayOfObject));
      boolean bool = locala.field_totalLen < 0L;
      i = 0;
      if (bool)
        break label213;
    }
    while (true)
    {
      aa.v("MicroMsg.AppAttachDownloadUI", "attach progress:" + i + " offset:" + l2 + " totallen:" + l1);
      this.cZV.setProgress(i);
      if (i >= 100)
      {
        this.gJX = true;
        if (locala != null)
          Toast.makeText(this, getString(2131166757) + " : " + locala.field_fileFullPath.replaceFirst(com.tencent.mm.storage.h.cfD, "/sdcard"), this.gJZ).show();
        aIF();
      }
      return;
      label213: i = (int)(100L * locala.field_offset / locala.field_totalLen);
    }
  }

  protected final int getLayoutId()
  {
    return 2130903247;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(2131166755);
    this.bMS = getIntent().getLongExtra("app_msg_id", -1L);
    int i;
    if (this.bMS == -1L)
      i = 0;
    while (i == 0)
    {
      finish();
      return;
      this.cad = be.uz().sw().bU(this.bMS);
      if ((this.cad == null) || (this.cad.Bo() == 0L) || (this.cad.getContent() == null))
      {
        i = 0;
      }
      else
      {
        this.gJU = w.cp(this.cad.field_talker);
        this.bNy = this.cad.getContent();
        if ((this.gJU) && (this.cad.rO() == 0))
        {
          String str = this.cad.getContent();
          if ((this.gJU) && (str != null))
            str = bv.dz(str);
          this.bNy = str;
        }
        com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.bNy);
        if (localb == null)
        {
          i = 0;
        }
        else
        {
          this.fhI = localb.type;
          this.mediaId = localb.cgE;
          this.rD = au.hW(localb.title);
          this.gJW = au.hW(localb.cgD).toLowerCase();
          com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(localb.cgE);
          if ((locala != null) && (locala.field_offset > 0L));
          for (this.gJY = true; ; this.gJY = false)
          {
            i = 1;
            break;
          }
        }
      }
    }
    File localFile = new File(com.tencent.mm.storage.h.cfF);
    if (!localFile.exists())
      localFile.mkdir();
    ba.HF().e(this);
    FR();
  }

  protected void onDestroy()
  {
    ba.HF().f(this);
    if (this.cZU != null)
      this.cZU.pause();
    super.onDestroy();
  }

  protected void onPause()
  {
    be.uA().b(221, this);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(221, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.AppAttachDownloadUI
 * JD-Core Version:    0.6.2
 */
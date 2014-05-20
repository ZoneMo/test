package com.tencent.mm.ui.transmit;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.Button;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.n;
import com.tencent.mm.network.bm;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;
import com.tencent.mm.w.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MsgRetransmitUI extends Activity
  implements com.tencent.mm.n.m
{
  public long bMS;
  public String bNy;
  public String bPx;
  private ProgressDialog cIr = null;
  public int cae;
  private n ctM = null;
  private int ctP = 0;
  private String hrh = null;
  private boolean hri = true;
  private boolean hrj = false;
  private com.tencent.mm.ui.base.x hrk;
  private int hrl = 0;
  private int hrm = 0;
  private y hrn = null;
  private List hro = null;
  private int hrp = 0;
  private int hrq = 0;
  private boolean hrr = false;
  boolean hrs = false;
  com.tencent.mm.ai.a hrt;
  private int length;
  public String rD;

  private void a(String paramString, int paramInt, n paramn)
  {
    String str = v.th();
    if (!cj.hX(this.rD))
    {
      this.hrp = 1;
      this.hrq = 1;
      if (v.b(this.rD, paramString, true))
      {
        this.ctP = 1;
        this.hrn = new y(paramInt, str, paramString, this.rD, this.ctP, paramn);
        be.uA().d(this.hrn);
        ct.vB().a(ct.cjQ, null);
      }
    }
    while (!this.hrr)
      while (true)
      {
        return;
        this.ctP = 0;
      }
    this.hrp = (1 + this.hrp);
    if (v.b((String)this.hro.get(0), paramString, true));
    for (this.ctP = 1; ; this.ctP = 0)
    {
      this.hrn = new y(paramInt, str, paramString, (String)this.hro.get(0), this.ctP, paramn);
      be.uA().d(this.hrn);
      ct.vB().a(ct.cjQ, null);
      return;
    }
  }

  private void cv(byte[] paramArrayOfByte)
  {
    com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(cj.sT(this.bNy));
    if (localb1 == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "transfer app message error: app content null");
      finish();
      return;
    }
    com.tencent.mm.pluginsdk.model.app.a locala = new com.tencent.mm.pluginsdk.model.app.a();
    if (localb1.cgE != null)
    {
      long l = cj.getLong(localb1.cgE, -1L);
      if (l == -1L)
        break label297;
      ba.HF().b(l, locala);
      if (locala.gfy != l)
      {
        locala = ba.HF().qk(localb1.cgE);
        if ((locala != null) && (locala.field_mediaSvrId.equals(localb1.cgE)));
      }
    }
    for (locala = null; ; locala = null)
      label297: 
      do
      {
        String str1 = "";
        if ((locala != null) && (locala.field_fileFullPath != null) && (!locala.field_fileFullPath.equals("")))
        {
          str1 = be.uz().sQ() + "da_" + cj.FD();
          com.tencent.mm.sdk.platformtools.m.f(locala.field_fileFullPath, str1, false);
        }
        String str2 = str1;
        com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.a(localb1);
        localb2.cgG = 3;
        com.tencent.mm.pluginsdk.model.app.s.a(localb2, localb1.appName, this.bPx, str2, paramArrayOfByte);
        if (this.hrj)
          Toast.makeText(this, getString(2131166714), 1).show();
        finish();
        if (!this.hri)
          break;
        Intent localIntent = new Intent(this, ChattingUI.class);
        localIntent.addFlags(67108864);
        localIntent.putExtra("Chat_User", this.bPx);
        startActivity(localIntent);
        return;
        locala = ba.HF().qk(localb1.cgE);
      }
      while ((locala != null) && (locala.field_mediaSvrId.equals(localb1.cgE)));
  }

  private void k(Intent paramIntent)
  {
    if (this.hrr)
    {
      this.hrq = this.hro.size();
      ArrayList localArrayList = paramIntent.getExtras().getParcelableArrayList("android.intent.extra.STREAM");
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          Parcelable localParcelable = (Parcelable)localIterator.next();
          if (this.hrs)
            break;
          Intent localIntent = new Intent();
          localIntent.setData((Uri)localParcelable);
          u(localIntent);
        }
      }
      finish();
      return;
    }
    this.hrq = 1;
    u(paramIntent);
    getString(2131167675);
    this.cIr = com.tencent.mm.ui.base.h.a(this, getString(2131167726), true, new i(this));
  }

  private void u(Intent paramIntent)
  {
    this.hrt = new com.tencent.mm.ai.a();
    this.hrt.a(this, paramIntent, new j(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (paramx.getType() != 110)
      return;
    if ((this.hro != null) && (this.hro.size() > 1))
    {
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.hro.get(0);
        Toast.makeText(this, getString(2131166742, arrayOfObject), 1).show();
      }
      this.hro.remove(0);
      a(this.bPx, 3, this.ctM);
      return;
    }
    if (this.hrk != null)
    {
      this.hrk.dismiss();
      this.hrk = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0));
    for (int i = 2131166740; ; i = 2131166741)
    {
      Toast.makeText(this, i, 1).show();
      finish();
      return;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1)
      finish();
    do
    {
      return;
      if (paramInt1 != 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "onActivityResult, unknown requestCode = " + paramInt1);
        return;
      }
      this.bPx = paramIntent.getStringExtra("Select_Conv_User");
      switch (this.cae)
      {
      case 3:
      default:
        return;
      case 0:
        if (!be.uz().isSDCardAvailable())
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "sdcard is not available, type = " + this.cae);
          Toast.makeText(this, 2131166745, 1).show();
          finish();
          return;
        }
        switch (this.hrm)
        {
        default:
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "unknown iScene, value = " + this.hrm);
          return;
        case 0:
          a(this.bPx, 4, null);
          Intent localIntent6 = new Intent(this, ChattingUI.class);
          localIntent6.addFlags(67108864);
          localIntent6.putExtra("Chat_User", this.bPx);
          startActivity(localIntent6);
          return;
        case 1:
        }
        if ((this.hro != null) && (this.hro.size() > 0))
          this.hrq = this.hro.size();
        this.ctM = new d(this);
        Object[] arrayOfObject3 = new Object[3];
        arrayOfObject3[0] = Integer.valueOf(1);
        arrayOfObject3[1] = Integer.valueOf(this.hrq);
        arrayOfObject3[2] = Integer.valueOf(0);
        this.hrk = com.tencent.mm.ui.base.h.a(this, getString(2131166739, arrayOfObject3), getString(2131167675), new e(this));
        this.hrk.setOnCancelListener(new f(this));
        this.hrk.setCanceledOnTouchOutside(false);
        this.hrk.getButton(-1).setText(2131167681);
        a(this.bPx, 3, this.ctM);
        return;
      case 1:
        if (!be.uz().isSDCardAvailable())
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "sdcard is not available, type = " + this.cae);
          Toast.makeText(this, 2131166745, 1).show();
          finish();
          return;
        }
        switch (this.hrm)
        {
        default:
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "unknown iScene, value = " + this.hrm);
          return;
        case 0:
          String str8 = this.bPx;
          l locall = new l();
          getString(2131167675);
          this.cIr = com.tencent.mm.ui.base.h.a(this, getString(2131167678), true, new k(this, locall));
          locall.context = this;
          locall.rD = this.rD;
          locall.dID = this.cIr;
          locall.bPx = str8;
          locall.hrl = this.hrl;
          locall.cAX = this.length;
          locall.execute(new Object[0]);
          ct.vB().a(ct.cjR, null);
          return;
        case 1:
        }
        if (!bm.ac(this))
        {
          com.tencent.mm.ui.base.h.a(this, 2131166718, 2131167675, 2131167684, 2131167681, new b(this), new c(this));
          return;
        }
        k(getIntent());
        return;
      case 2:
        String str4 = this.bPx;
        switch (this.hrm)
        {
        case 1:
        default:
          finish();
          return;
        case 0:
          Object localObject;
          String str7;
          if (this.hrh == null)
          {
            ak localak = be.uz().sw().bU(this.bMS);
            String str6 = localak.ot();
            localObject = null;
            if (str6 != null)
            {
              boolean bool = localak.ot().equals("");
              localObject = null;
              if (!bool)
                str7 = ag.Ba().fX(localak.ot());
            }
          }
          while (true)
          {
            try
            {
              byte[] arrayOfByte2 = com.tencent.mm.a.c.g(str7, 0, com.tencent.mm.a.c.ar(str7));
              localObject = arrayOfByte2;
              cv(localObject);
            }
            catch (Exception localException2)
            {
              Object[] arrayOfObject2 = new Object[2];
              arrayOfObject2[0] = str4;
              arrayOfObject2[1] = localException2.getLocalizedMessage();
              com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgRetransmitUI", "send appmsg to %s, error:%s", arrayOfObject2);
              localObject = null;
              continue;
            }
            try
            {
              byte[] arrayOfByte1 = com.tencent.mm.a.c.g(this.hrh, 0, com.tencent.mm.a.c.ar(this.hrh));
              localObject = arrayOfByte1;
            }
            catch (Exception localException1)
            {
              Object[] arrayOfObject1 = new Object[2];
              arrayOfObject1[0] = str4;
              arrayOfObject1[1] = localException1.getLocalizedMessage();
              com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgRetransmitUI", "send appmsg to %s, error:%s", arrayOfObject1);
              localObject = null;
            }
          }
        case 2:
        }
        String str5 = getIntent().getExtras().getString("_mmessage_appPackage");
        com.tencent.mm.pluginsdk.model.app.k localk = new com.tencent.mm.pluginsdk.model.app.k();
        localk.field_packageName = str5;
        ba.HE().c(localk, new String[] { "packageName" });
        aa.a(this, new com.tencent.mm.sdk.modelmsg.j(getIntent().getExtras()).gca, localk, new a(this));
        return;
      case 4:
        switch (this.hrm)
        {
        default:
          return;
        case 0:
        }
        if ((this.bNy == null) || (this.bNy.equals("")))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "Transfer text erro: content null");
          finish();
          return;
        }
        v.th();
        com.tencent.mm.z.f localf3 = new com.tencent.mm.z.f(this.bPx, this.bNy, w.dd(this.bPx));
        be.uA().d(localf3);
        finish();
        Intent localIntent5 = new Intent(this, ChattingUI.class);
        localIntent5.addFlags(67108864);
        localIntent5.putExtra("Chat_User", this.bPx);
        startActivity(localIntent5);
        return;
      case 5:
        if (!be.uz().isSDCardAvailable())
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "sdcard is not available, type = " + this.cae);
          dn.bW(this);
          finish();
          return;
        }
        switch (this.hrm)
        {
        default:
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "unknown iScene, value = " + this.hrm);
          return;
        case 0:
        }
        break;
      case 6:
      case 7:
      case 8:
      case 9:
      }
    }
    while ((this.rD == null) || (!com.tencent.mm.pluginsdk.h.apj().f(this, this.bPx, this.rD)));
    Intent localIntent4 = new Intent(this, ChattingUI.class);
    localIntent4.addFlags(67108864);
    localIntent4.putExtra("Chat_User", this.bPx);
    startActivity(localIntent4);
    return;
    cv(null);
    return;
    String str3 = this.bPx;
    if (!be.uz().isSDCardAvailable())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "sdcard is not available, type = " + this.cae);
      Toast.makeText(this, 2131166745, 1).show();
      finish();
      return;
    }
    switch (this.hrm)
    {
    default:
      return;
    case 0:
    }
    if (this.rD == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "Transfer fileName erro: fileName null");
      finish();
      return;
    }
    com.tencent.mm.modelvoice.s locals = new com.tencent.mm.modelvoice.s(bi.c(str3, this.rD, this.length), 1);
    be.uA().d(locals);
    finish();
    Intent localIntent3 = new Intent(this, ChattingUI.class);
    localIntent3.addFlags(67108864);
    localIntent3.putExtra("Chat_User", str3);
    startActivity(localIntent3);
    return;
    String str2 = this.bPx;
    if (!be.uz().isSDCardAvailable())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "sdcard is not available, type = " + this.cae);
      Toast.makeText(this, 2131166745, 1).show();
      finish();
      return;
    }
    com.tencent.mm.z.f localf2 = new com.tencent.mm.z.f(str2, this.bNy, 42);
    be.uA().d(localf2);
    finish();
    Intent localIntent2 = new Intent(this, ChattingUI.class);
    localIntent2.addFlags(67108864);
    localIntent2.putExtra("Chat_User", str2);
    startActivity(localIntent2);
    return;
    String str1 = this.bPx;
    switch (this.hrm)
    {
    default:
      return;
    case 0:
    }
    if ((this.bNy == null) || (this.bNy.equals("")))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgRetransmitUI", "Transfer text erro: content null");
      finish();
      return;
    }
    com.tencent.mm.z.f localf1 = new com.tencent.mm.z.f(str1, this.bNy, 48);
    be.uA().d(localf1);
    finish();
    Intent localIntent1 = new Intent(this, ChattingUI.class);
    localIntent1.addFlags(67108864);
    localIntent1.putExtra("Chat_User", str1);
    startActivity(localIntent1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cae = getIntent().getIntExtra("Retr_Msg_Type", -1);
    this.bNy = getIntent().getStringExtra("Retr_Msg_content");
    this.bMS = getIntent().getLongExtra("Retr_Msg_Id", -1L);
    this.rD = getIntent().getStringExtra("Retr_File_Name");
    this.hro = getIntent().getStringArrayListExtra("Retr_File_Path_List");
    boolean bool;
    Intent localIntent;
    if ((this.hro != null) && (this.hro.size() > 0))
    {
      bool = true;
      this.hrr = bool;
      this.ctP = getIntent().getIntExtra("Retr_Compress_Type", 0);
      this.hrm = getIntent().getIntExtra("Retr_Scene", 0);
      this.length = getIntent().getIntExtra("Retr_length", 0);
      this.hrl = getIntent().getIntExtra("Retr_video_isexport", 0);
      this.hrh = getIntent().getStringExtra("Retr_Msg_thumb_path");
      this.hri = getIntent().getBooleanExtra("Retr_go_to_chattingUI", true);
      this.hrj = getIntent().getBooleanExtra("Retr_show_success_tips", false);
      be.uA().a(110, this);
      setContentView(2130903125);
      localIntent = new Intent(this, SelectConversationUI.class);
      switch (this.cae)
      {
      case 3:
      case 4:
      case 5:
      default:
        localIntent.putExtra("Select_Conv_Type", 11);
      case 2:
      case 6:
      case 7:
      }
    }
    while (true)
    {
      localIntent.putExtra("select_is_ret", true);
      startActivityForResult(localIntent, 0);
      return;
      bool = false;
      break;
      localIntent.putExtra("Select_Conv_Type", 3);
    }
  }

  protected void onDestroy()
  {
    be.uA().b(110, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.MsgRetransmitUI
 * JD-Core Version:    0.6.2
 */
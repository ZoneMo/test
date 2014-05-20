package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.content.SharedPreferences;
import android.widget.Toast;
import com.tencent.mm.ai.r;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.compatible.h.c;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.pluginsdk.ui.chat.l;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.h;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.openapi.AddAppUI;
import java.io.File;

final class cd
  implements l
{
  cd(bv parambv)
  {
  }

  public final void Wa()
  {
    if (bv.d(this.gMs).asL())
      bv.d(this.gMs).asK();
    ia localia = new ia();
    localia.bRw.bNk = 5;
    localia.bRw.bNl = this.gMs.aJe();
    localia.bRw.context = bv.f(this.gMs);
    localia.bRw.bRz = 2;
    com.tencent.mm.sdk.b.a.ayH().f(localia);
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(4);
    arrayOfObject[1] = Integer.valueOf(1);
    arrayOfObject[2] = Integer.valueOf(0);
    localm.d(11033, arrayOfObject);
  }

  public final void Wb()
  {
    if (bv.d(this.gMs).asL())
      bv.d(this.gMs).asK();
    ia localia = new ia();
    localia.bRw.bNk = 5;
    localia.bRw.bNl = this.gMs.aJe();
    localia.bRw.context = bv.f(this.gMs);
    localia.bRw.bRz = 3;
    com.tencent.mm.sdk.b.a.ayH().f(localia);
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(4);
    arrayOfObject[1] = Integer.valueOf(2);
    arrayOfObject[2] = Integer.valueOf(0);
    localm.d(11033, arrayOfObject);
  }

  public final void Wc()
  {
    bv.d(this.gMs).asK();
    bv.f(this.gMs).dO(false);
  }

  public final void Wd()
  {
    bv.f(this.gMs).aJM();
  }

  public final void We()
  {
    bv.f(this.gMs).aJL();
  }

  public final void Wf()
  {
    Intent localIntent = new Intent(bv.f(this.gMs), AddAppUI.class);
    bv.f(this.gMs).startActivity(localIntent);
  }

  public final void Wg()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("key_to_user", bv.p(this.gMs).getUsername());
    localIntent.putExtra("key_fav_item_id", "3");
    com.tencent.mm.ak.a.b(bv.f(this.gMs), "favorite", ".ui.FavSelectUI", localIntent);
  }

  public final void e(k paramk)
  {
    bv.f(this.gMs).m(paramk);
  }

  public final void gY(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      try
      {
        com.tencent.mm.pluginsdk.ui.tools.s.f(bv.f(this.gMs), 218);
        bv.d(this.gMs).asK();
        return;
      }
      catch (Exception localException3)
      {
        while (true)
          com.tencent.mm.pluginsdk.ui.tools.s.g(bv.f(this.gMs), 208);
      }
    case 0:
    }
    String str1 = this.gMs.aJe();
    String str2 = r.gY(str1);
    aa.d("MicroMsg.ChattingFooterEventImpl", "filename " + str2);
    if (com.tencent.mm.compatible.c.s.ceN.cee == 2)
      try
      {
        Intent localIntent2 = new Intent("com.tencent.mm.action.VIDEO");
        localIntent2.setPackage(bv.f(this.gMs).getPackageName());
        localIntent2.putExtra("VideoRecorder_ToUser", str1);
        localIntent2.putExtra("VideoRecorder_FileName", str2);
        localIntent2.putExtra("VideoRecorder_VideoPath", com.tencent.mm.ai.m.DE().DV());
        localIntent2.putExtra("VideoRecorder_VideoFullPath", com.tencent.mm.ai.m.DE().gZ(str2));
        localIntent2.putExtra("VideoRecorder_VideoThumbPath", com.tencent.mm.ai.m.DE().ha(str2));
        bv.f(this.gMs).startActivityForResult(localIntent2, 216);
        return;
      }
      catch (Exception localException2)
      {
        aa.w("MicroMsg.ChattingFooterEventImpl", localException2.toString());
        c.b(bv.f(this.gMs), 215);
        return;
      }
    if (com.tencent.mm.compatible.c.s.ceN.cee == 1)
    {
      c.b(bv.f(this.gMs), 215);
      return;
    }
    try
    {
      Intent localIntent1 = new Intent("com.tencent.mm.action.VIDEO");
      localIntent1.setPackage(bv.f(this.gMs).getPackageName());
      localIntent1.putExtra("VideoRecorder_ToUser", str1);
      localIntent1.putExtra("VideoRecorder_FileName", str2);
      localIntent1.putExtra("VideoRecorder_VideoPath", com.tencent.mm.ai.m.DE().DV());
      localIntent1.putExtra("VideoRecorder_VideoFullPath", com.tencent.mm.ai.m.DE().gZ(str2));
      localIntent1.putExtra("VideoRecorder_VideoThumbPath", com.tencent.mm.ai.m.DE().ha(str2));
      bv.f(this.gMs).startActivityForResult(localIntent1, 216);
      return;
    }
    catch (Exception localException1)
    {
      aa.w("MicroMsg.ChattingFooterEventImpl", localException1.toString());
      c.b(bv.f(this.gMs), 215);
    }
  }

  public final void gZ(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    }
    do
    {
      return;
      if (bv.f(this.gMs).getSharedPreferences(al.azs(), 0).getString("gallery", "1").equalsIgnoreCase("0"))
        com.tencent.mm.pluginsdk.ui.tools.s.e(bv.f(this.gMs), 200);
      while (true)
      {
        bv.d(this.gMs).asK();
        return;
        com.tencent.mm.pluginsdk.ui.tools.s.q(bv.f(this.gMs));
      }
      File localFile = new File(h.cfG);
      if ((!localFile.exists()) && (!localFile.mkdir()))
      {
        Toast.makeText(bv.f(this.gMs), bv.f(this.gMs).getString(2131165677), 1).show();
        return;
      }
    }
    while (com.tencent.mm.pluginsdk.ui.tools.s.a(bv.f(this.gMs), h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 201));
    Toast.makeText(bv.f(this.gMs), bv.f(this.gMs).getString(2131165340), 1).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cd
 * JD-Core Version:    0.6.2
 */
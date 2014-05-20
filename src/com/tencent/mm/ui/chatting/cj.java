package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ah;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.tools.ShowImageUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class cj extends ce
{
  private ChattingUI gMB;

  public cj()
  {
    super(20);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof j)) || (((j)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903163);
      paramView.setTag(new j(this.dws).al(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    j localj = (j)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.bNl;
    boolean bool = w.cp(paramChattingUI.gMi.bNl);
    localj.gMy.setVisibility(8);
    String str2;
    if (bool)
    {
      str2 = bv.dy(paramak.getContent());
      if ((str1 != null) && (str2.length() > 0))
      {
        a(paramChattingUI);
        if (paramChattingUI.gOY)
        {
          localj.gMy.setText(paramChattingUI.cu(str2));
          localj.gMy.setVisibility(0);
        }
      }
    }
    while (true)
    {
      com.tencent.mm.pluginsdk.ui.c.a(localj.cMS, str2);
      localj.cMS.setVisibility(0);
      localj.cMS.setTag(new kk(str2));
      localj.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localj.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      String str3 = paramak.getContent();
      if (bool)
      {
        int k = paramak.getContent().indexOf(':');
        if (k != -1)
          str3 = paramak.getContent().substring(k + 1);
      }
      String str4 = com.tencent.mm.sdk.platformtools.cj.sT(str3);
      if (str4 != null);
      for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str4); ; localb = null)
      {
        String str5;
        int i;
        Object localObject;
        String str6;
        if (localb != null)
        {
          str5 = localb.appId;
          i = localb.cgH;
          if ((str5 != null) && (str5.length() != 0))
            break label588;
          aa.e("MicroMsg.AppInfoLogic", "getAppInfo, appId is null");
          localObject = null;
          if ((localObject != null) && (((k)localObject).apQ()))
            a(paramChattingUI, localb, paramak);
          if ((localObject != null) && (((k)localObject).field_appName != null) && (((k)localObject).field_appName.trim().length() > 0))
            break label666;
          str6 = localb.appName;
          label330: if ((localb.appId == null) || (localb.appId.length() <= 0) || (!l.aF(str6)))
            break label693;
          localj.dkS.setText(l.a(paramChattingUI, (k)localObject, str6));
          localj.dkS.setVisibility(0);
          if ((localObject == null) || (!((k)localObject).apQ()))
            break label676;
          a(paramChattingUI, localj.dkS, paramak, localb, ((k)localObject).field_packageName);
          label413: a(paramChattingUI, localj.dkS, localb.appId);
          label427: if ((localb.bXF != null) && (localb.bXF.length() != 0))
            break label706;
          localj.gKg.setVisibility(8);
          label456: switch (localb.type)
          {
          default:
          case 2:
          }
        }
        while (true)
        {
          if (l.i((k)localObject))
          {
            localj.gKh.setVisibility(0);
            localj.gKg.setVisibility(8);
            c(paramChattingUI, localj.gKh, kk.a(localb, paramak));
          }
          localj.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
          localj.gki.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            localj.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
          return;
          label588: if (h.app() == null)
          {
            aa.e("MicroMsg.AppInfoLogic", "getISubCorePluginBase() == null");
            localObject = null;
            break;
          }
          k localk = h.app().qf(str5);
          if ((localk == null) || (localk.field_appVersion < i));
          for (int j = 1; ; j = 0)
          {
            if (j != 0)
              h.app().qg(str5);
            localObject = localk;
            break;
          }
          label666: str6 = ((k)localObject).field_appName;
          break label330;
          label676: a(paramChattingUI, localj.dkS, localb.appId);
          break label413;
          label693: localj.dkS.setVisibility(8);
          break label427;
          label706: localj.gKg.setVisibility(0);
          b(paramChattingUI, localj.gKg, kk.wG(localb.bXF));
          break label456;
          localj.dmn.setVisibility(0);
          if (be.uz().isSDCardAvailable())
          {
            Bitmap localBitmap = ag.Ba().b(paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI));
            if (localBitmap != null)
              localj.dmn.setImageBitmap(localBitmap);
            else
              localj.dmn.setImageResource(2130837673);
          }
          else
          {
            localj.dmn.setImageBitmap(BitmapFactory.decodeResource(paramChattingUI.getResources(), 2130838942));
          }
        }
      }
      str2 = str1;
      break;
      str2 = str1;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    if (com.tencent.mm.ak.a.qc("favorite"))
      paramContextMenu.add(i, 116, 0, this.gMB.getString(2131167820));
    int j = s.qs(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.gMB.at(paramak.getContent(), paramak.rO()));
    if (((localb.cgC <= 0) || ((localb.cgC > 0) && (j >= 100))) && (l.j(l.F(localb.appId, false))))
      paramContextMenu.add(i, 111, 0, this.gMB.getString(2131165626));
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, this.gMB.getString(2131165658));
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 100:
      com.tencent.mm.j.b localb;
      k localk;
      do
      {
        return false;
        String str = com.tencent.mm.sdk.platformtools.cj.sT(paramak.getContent());
        localb = null;
        if (str != null)
          localb = com.tencent.mm.j.b.bR(str);
        if (localb != null)
          s.qr(localb.cgE);
        bv.q(paramak.Bo());
        localk = l.F(localb.appId, false);
      }
      while ((localk == null) || (!localk.apQ()));
      a(paramChattingUI, localb, paramak, localk);
      return false;
    case 111:
    }
    Intent localIntent = new Intent(paramChattingUI, MsgRetransmitUI.class);
    localIntent.putExtra("Retr_Msg_content", paramChattingUI.at(paramak.getContent(), paramak.rO()));
    localIntent.putExtra("Retr_Msg_Type", 2);
    localIntent.putExtra("Retr_Msg_Id", paramak.field_msgId);
    paramChattingUI.startActivity(localIntent);
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramChattingUI);
      return true;
    }
    String str1 = com.tencent.mm.sdk.platformtools.cj.sT(paramChattingUI.at(paramak.getContent(), paramak.rO()));
    if (str1 != null);
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str1); ; localb = null)
    {
      if (localb == null)
      {
        aa.e("MicroMsg.ChattingItemAppMsgFromImg", "content is null");
        return true;
      }
      k localk = l.F(localb.appId, true);
      if ((localk != null) && (localk.apQ()))
        a(paramChattingUI, localb, a(paramChattingUI, paramak), localk);
      if ((localb.cgE != null) && (localb.cgE.length() > 0))
      {
        com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(localb.cgE);
        if ((locala == null) || (!locala.vN()))
        {
          if (paramak.rO() != 0)
            break;
          long l = paramak.Bo();
          Intent localIntent1 = new Intent(this.gMB, AppAttachDownloadUI.class);
          localIntent1.putExtra("app_msg_id", l);
          this.gMB.startActivity(localIntent1);
          return true;
        }
        String str4 = locala.field_fileFullPath;
        if (!com.tencent.mm.a.c.as(str4))
        {
          Intent localIntent2 = new Intent(paramChattingUI, ResourcesExceedUI.class);
          localIntent2.putExtra("clean_view_type", 1);
          paramChattingUI.startActivity(localIntent2);
          return true;
        }
        int j = (int)paramak.Bo();
        paramak.AH();
        paramak.aCl();
        if ((str4 == null) || (str4.equals("")) || (!com.tencent.mm.a.c.as(str4)))
        {
          aa.d("MicroMsg.ChattingItemAppMsgFromImg", "showImg : imgPath is null");
          return true;
        }
        Intent localIntent3 = new Intent(this.gMB, ShowImageUI.class);
        localIntent3.putExtra("key_favorite", true);
        localIntent3.putExtra("key_image_path", str4);
        localIntent3.putExtra("key_message_id", j);
        this.gMB.startActivity(localIntent3);
        return true;
      }
      if ((localb.url == null) || (localb.url.length() <= 0))
        break;
      boolean bool = ao(paramChattingUI, localb.appId);
      String str2 = u.a(localb.url, "message", bool);
      PackageInfo localPackageInfo = ad(paramChattingUI, localb.appId);
      String str3 = null;
      if (localPackageInfo == null)
        if (localPackageInfo != null)
          break label452;
      label452: for (int i = 0; ; i = localPackageInfo.versionCode)
      {
        a(paramChattingUI, str2, str2, str3, i, false, paramak.Bo());
        return true;
        str3 = localPackageInfo.versionName;
        break;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cj
 * JD-Core Version:    0.6.2
 */
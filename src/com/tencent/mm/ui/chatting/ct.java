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
import com.tencent.mm.model.v;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.ShowImageUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class ct extends ce
{
  private ChattingUI gMB;

  public ct()
  {
    super(21);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof j)) || (((j)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903183);
      paramView.setTag(new j(this.dws).al(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    j localj = (j)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.clp;
    a(paramChattingUI);
    com.tencent.mm.pluginsdk.ui.c.a(localj.cMS, str1);
    localj.cMS.setVisibility(0);
    localj.cMS.setTag(new kk(str1));
    localj.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localj.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    String str2 = cj.sT(paramak.getContent());
    if (str2 != null);
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2); ; localb = null)
    {
      k localk;
      String str3;
      label245: int i;
      if (localb != null)
      {
        localk = l.F(localb.appId, true);
        if ((localk == null) || (localk.field_appName == null) || (localk.field_appName.trim().length() <= 0))
        {
          str3 = localb.appName;
          if ((localb.appId == null) || (localb.appId.length() <= 0) || (!l.aF(str3)))
            break label469;
          localj.dkS.setText(l.a(paramChattingUI, localk, str3));
          localj.dkS.setVisibility(0);
          if ((localk == null) || (!localk.apQ()))
            break label452;
          a(paramChattingUI, localj.dkS, paramak, localb, localk.field_packageName);
          a(paramChattingUI, localj.dkS, localb.appId);
        }
      }
      else
      {
        label259: switch (localb.type)
        {
        default:
          label284: localj.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
          localj.gki.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            localj.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
          i = s.qs(str2);
          if ((i == -1) || (i >= 100) || (localb.cgC <= 0) || (paramak.getStatus() == 5))
          {
            localj.djS.setVisibility(8);
            localj.dmn.setAlpha(255);
            localj.dmn.setBackgroundDrawable(null);
          }
          break;
        case 2:
        }
      }
      while (true)
      {
        a(paramInt, localj, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
        return;
        str3 = localk.field_appName;
        break;
        label452: a(paramChattingUI, localj.dkS, localb.appId);
        break label245;
        label469: localj.dkS.setVisibility(8);
        break label259;
        localj.dmn.setVisibility(0);
        if (be.uz().isSDCardAvailable())
        {
          Bitmap localBitmap = ag.Ba().b(paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI));
          if (localBitmap != null)
          {
            localj.dmn.setImageBitmap(localBitmap);
            break label284;
          }
          localj.dmn.setImageResource(2130837673);
          break label284;
        }
        localj.dmn.setImageBitmap(BitmapFactory.decodeResource(paramChattingUI.getResources(), 2130838942));
        break label284;
        localj.djS.setVisibility(0);
        localj.gKf.setText(i + "%");
        localj.dmn.setAlpha(64);
        localj.dmn.setBackgroundResource(2130839232);
      }
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    if (com.tencent.mm.ak.a.qc("favorite"))
      paramContextMenu.add(i, 116, 0, this.gMB.getString(2131167820));
    String str = paramak.getContent();
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.gMB.at(str, paramak.rO()));
    if ((localb != null) && (l.j(l.F(localb.appId, false))))
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
        String str = cj.sT(paramak.getContent());
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
    localIntent.putExtra("Retr_Msg_content", paramak.getContent());
    localIntent.putExtra("Retr_Msg_Type", 2);
    localIntent.putExtra("Retr_Msg_Id", paramak.field_msgId);
    paramChattingUI.startActivity(localIntent);
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    boolean bool1;
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramChattingUI);
      bool1 = true;
      return bool1;
    }
    if ((((kk)paramView.getTag()).dws == 5) && (paramak.rO() == 1))
    {
      if (paramak != null)
        h.a(this.gMB, this.gMB.getString(2131165776), "", new cu(this, paramak), new cv(this));
      return true;
    }
    String str1 = cj.sT(paramak.getContent());
    if (str1 != null);
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str1); ; localb = null)
    {
      if (localb == null)
      {
        aa.e("MicroMsg.ChattingItemAppMsgToImg", "content is null");
        return true;
      }
      k localk = l.F(localb.appId, false);
      if ((localk != null) && (localk.apQ()))
        a(paramChattingUI, localb, v.th(), localk);
      if ((localb.cgE != null) && (localb.cgE.length() > 0))
      {
        com.tencent.mm.pluginsdk.model.app.a locala = ba.HF().qk(localb.cgE);
        bool1 = false;
        if (locala == null)
          break;
        if (!be.uz().isSDCardAvailable())
          dn.bW(paramChattingUI);
        while (true)
        {
          return true;
          if (paramak.rO() == 1)
          {
            String str5 = locala.field_fileFullPath;
            if (!com.tencent.mm.a.c.as(str5))
              break;
            int k = (int)paramak.Bo();
            paramak.AH();
            paramak.aCl();
            if ((str5 == null) || (str5.equals("")) || (!com.tencent.mm.a.c.as(str5)))
            {
              aa.d("MicroMsg.ChattingItemAppMsgToImg", "showImg : imgPath is null");
            }
            else
            {
              Intent localIntent2 = new Intent(this.gMB, ShowImageUI.class);
              localIntent2.putExtra("key_favorite", true);
              localIntent2.putExtra("key_image_path", str5);
              localIntent2.putExtra("key_message_id", k);
              this.gMB.startActivity(localIntent2);
            }
          }
        }
        Intent localIntent1 = new Intent(paramChattingUI, ResourcesExceedUI.class);
        localIntent1.putExtra("clean_view_type", 1);
        paramChattingUI.startActivity(localIntent1);
        return true;
      }
      String str2 = localb.url;
      bool1 = false;
      if (str2 == null)
        break;
      int i = localb.url.length();
      bool1 = false;
      if (i <= 0)
        break;
      boolean bool2 = ao(paramChattingUI, localb.appId);
      String str3 = u.a(localb.url, "message", bool2);
      PackageInfo localPackageInfo = ad(paramChattingUI, localb.appId);
      String str4 = null;
      if (localPackageInfo == null)
        if (localPackageInfo != null)
          break label495;
      label495: for (int j = 0; ; j = localPackageInfo.versionCode)
      {
        a(paramChattingUI, str3, str3, str4, j, false, paramak.Bo());
        return false;
        str4 = localPackageInfo.versionName;
        break;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ct
 * JD-Core Version:    0.6.2
 */
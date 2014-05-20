package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.ShowImageUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class cq extends ce
{
  private ChattingUI gMB;
  private View gME;
  private int gMF;

  public cq(int paramInt)
  {
    super(paramInt);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof m)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903181);
      paramView.setTag(new m(this.dws).ao(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    m localm = (m)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.clp;
    a(paramChattingUI);
    c.a(localm.cMS, str1);
    localm.cMS.setVisibility(0);
    localm.cMS.setTag(new kk(str1));
    localm.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localm.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    String str2 = cj.sT(paramak.getContent());
    if (str2 != null);
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2); ; localb = null)
    {
      kk localkk = new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000');
      k localk;
      String str3;
      label298: label312: int i;
      if (localb != null)
      {
        localk = l.F(localb.appId, true);
        localm.daV.setText(localb.title);
        localm.dkR.setText(localb.description);
        if ((localk != null) && (localk.field_appName != null) && (localk.field_appName.trim().length() > 0))
          break label562;
        str3 = localb.appName;
        if ((localb.appId == null) || (localb.appId.length() <= 0) || (!l.aF(str3)))
          break label589;
        localm.dkS.setText(l.a(paramChattingUI, localk, str3));
        localm.dkS.setVisibility(0);
        if ((localk == null) || (!localk.apQ()))
          break label572;
        TextView localTextView2 = localm.dkS;
        String str4 = localk.field_packageName;
        a(paramChattingUI, localTextView2, paramak, localb, str4);
        a(paramChattingUI, localm.dkS, localb.appId);
        i = 0;
        if (!be.uz().isSDCardAvailable())
          break label684;
        Bitmap localBitmap10 = ag.Ba().c(paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI));
        if (localBitmap10 == null)
          break label678;
        localm.dmn.setImageBitmap(localBitmap10);
        label356: localm.gKn.setOnClickListener(null);
      }
      int j;
      switch (localb.type)
      {
      case 1:
      case 2:
      case 8:
      case 9:
      case 11:
      case 12:
      default:
      case 3:
      case 6:
      case 4:
      case 5:
      case 7:
      case 10:
      case 13:
      case 14:
      case 0:
        while (true)
        {
          j = s.qs(str2);
          if ((j != -1) && (j < 100) && (localb.cgC > 0))
            break label2319;
          localm.djS.setVisibility(8);
          localm.gki.setTag(localkk);
          localm.gki.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            localm.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
          a(paramInt, localm, paramak, paramChattingUI.gMi.clp, paramChattingUI.gJU, paramChattingUI.gMi.gNw);
          return;
          label562: str3 = localk.field_appName;
          break;
          label572: a(paramChattingUI, localm.dkS, localb.appId);
          break label298;
          label589: if (!cj.hX(localb.bQt))
          {
            localm.dkS.setText(localb.bQt);
            localm.dkS.setVisibility(0);
            com.tencent.mm.pluginsdk.ui.chat.ba localba = new com.tencent.mm.pluginsdk.ui.chat.ba();
            localba.username = localb.bQs;
            localba.fqZ = localb.bQt;
            a(paramChattingUI, localm.dkS, localba);
            break label312;
          }
          localm.dkS.setVisibility(8);
          break label312;
          label678: i = 1;
          break label356;
          label684: localm.dmn.setImageBitmap(BitmapFactory.decodeResource(paramChattingUI.getResources(), 2130838942));
          i = 0;
          break label356;
          if ((localb.title != null) && (localb.title.length() > 0))
          {
            localm.daV.setVisibility(0);
            label736: localm.dkR.setVisibility(0);
            localm.gKk.setVisibility(8);
            localm.gKl.setVisibility(4);
            localm.dkR.setMaxLines(2);
            localm.gKn.setVisibility(0);
            if (paramcf.gMA != paramak.Bo())
              break label930;
            localm.gKn.setImageResource(2130838899);
          }
          Bitmap localBitmap9;
          while (true)
          {
            ey localey = new ey();
            localey.bMS = paramak.Bo();
            localey.bRv = paramak.getContent();
            localey.clm = paramak.ot();
            localm.gKn.setTag(localey);
            localm.gKn.setOnClickListener(paramChattingUI.gMi.gNE);
            if (i == 0)
              break;
            localBitmap9 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
            if ((localBitmap9 != null) && (!localBitmap9.isRecycled()))
              break label944;
            localm.dmn.setImageResource(2130837623);
            break;
            localm.daV.setVisibility(8);
            break label736;
            label930: localm.gKn.setImageResource(2130838903);
          }
          label944: localm.dmn.setImageBitmap(localBitmap9);
          continue;
          if ((localb.title != null) && (localb.title.length() > 0))
            localm.daV.setVisibility(0);
          while (true)
          {
            localm.dkR.setVisibility(0);
            localm.gKk.setVisibility(8);
            localm.gKl.setVisibility(4);
            localm.dkR.setMaxLines(2);
            localm.gKn.setVisibility(8);
            if (i == 0)
              break;
            if (!cj.te(localb.cgD))
              break label1075;
            localm.dmn.setImageResource(2130837673);
            break;
            localm.daV.setVisibility(8);
          }
          label1075: localm.dmn.setImageResource(2130837624);
          continue;
          label1117: Bitmap localBitmap8;
          if ((localb.title != null) && (localb.title.length() > 0))
          {
            localm.daV.setVisibility(0);
            localm.dkR.setVisibility(0);
            localm.gKk.setVisibility(8);
            localm.dkR.setMaxLines(2);
            localm.gKl.setVisibility(4);
            localm.gKn.setVisibility(0);
            localm.gKn.setImageResource(2130839598);
            if (i != 0)
            {
              localBitmap8 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
              if ((localBitmap8 == null) || (localBitmap8.isRecycled()))
                localm.dmn.setImageResource(2130837626);
            }
          }
          else
          {
            while (true)
            {
              localm.gKn.setVisibility(8);
              break;
              localm.daV.setVisibility(8);
              break label1117;
              localm.dmn.setImageBitmap(localBitmap8);
            }
            localm.daV.setVisibility(8);
            if ((localb.title != null) && (localb.title.length() > 0))
            {
              localm.gKk.setVisibility(0);
              localm.gKk.setText(localb.title);
            }
            Bitmap localBitmap7;
            while (true)
            {
              localm.dkR.setMaxLines(4);
              localm.gKl.setVisibility(4);
              localm.gKn.setVisibility(8);
              if (i == 0)
                break;
              localBitmap7 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
              if ((localBitmap7 != null) && (!localBitmap7.isRecycled()))
                break label1396;
              localm.dmn.setImageResource(2130837624);
              break;
              localm.gKk.setVisibility(8);
            }
            label1396: localm.dmn.setImageBitmap(localBitmap7);
            continue;
            localm.daV.setVisibility(8);
            if ((localb.title != null) && (localb.title.length() > 0))
            {
              localm.gKk.setVisibility(0);
              localm.gKk.setText(localb.title);
            }
            Bitmap localBitmap6;
            while (true)
            {
              localm.dkR.setMaxLines(3);
              localm.gKl.setVisibility(0);
              localm.gKn.setVisibility(8);
              if (i == 0)
                break;
              localBitmap6 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
              if ((localBitmap6 != null) && (!localBitmap6.isRecycled()))
                break label1548;
              localm.dmn.setImageResource(2130837624);
              break;
              localm.gKk.setVisibility(8);
            }
            label1548: localm.dmn.setImageBitmap(localBitmap6);
            continue;
            if ((localb.title != null) && (localb.title.length() > 0))
            {
              localm.daV.setVisibility(0);
              localm.daV.setText(localb.title);
              localm.gKk.setVisibility(8);
            }
            localm.dkR.setMaxLines(4);
            localm.gKl.setVisibility(4);
            localm.gKn.setVisibility(8);
            if (i != 0)
            {
              Bitmap localBitmap5 = ag.Ba().a(paramak.ot(), true, com.tencent.mm.an.a.getDensity(paramChattingUI), false, true);
              if (localBitmap5 != null)
              {
                localm.dmn.setImageBitmap(localBitmap5);
              }
              else
              {
                localm.dmn.setImageResource(2130837624);
                continue;
                localm.daV.setVisibility(0);
                localm.daV.setText(localb.title);
                localm.gKk.setVisibility(0);
                localm.gKk.setText(2131168106);
                localm.dkR.setMaxLines(4);
                localm.gKl.setVisibility(4);
                localm.gKn.setVisibility(8);
                if (i != 0)
                {
                  Bitmap localBitmap4 = ag.Ba().a(paramak.ot(), true, com.tencent.mm.an.a.getDensity(paramChattingUI), false, true);
                  if (localBitmap4 != null)
                  {
                    localm.dmn.setImageBitmap(localBitmap4);
                  }
                  else
                  {
                    localm.dmn.setImageResource(2130837624);
                    continue;
                    if ((localb.title != null) && (localb.title.length() > 0))
                    {
                      localm.daV.setVisibility(0);
                      localm.daV.setText(localb.title);
                      localm.gKk.setVisibility(8);
                    }
                    localm.dkR.setMaxLines(4);
                    localm.gKl.setVisibility(4);
                    localm.gKn.setVisibility(8);
                    if (i != 0)
                    {
                      Bitmap localBitmap3 = ag.Ba().a(paramak.ot(), true, com.tencent.mm.an.a.getDensity(paramChattingUI), false, true);
                      if (localBitmap3 != null)
                      {
                        localm.dmn.setImageBitmap(localBitmap3);
                      }
                      else
                      {
                        localm.dmn.setImageResource(2130837624);
                        continue;
                        if ((localb.title != null) && (localb.title.length() > 0))
                          localm.daV.setVisibility(0);
                        Bitmap localBitmap2;
                        while (true)
                        {
                          localm.dkR.setVisibility(0);
                          localm.gKk.setVisibility(8);
                          localm.gKl.setVisibility(8);
                          localm.gKn.setVisibility(4);
                          localm.dkR.setMaxLines(2);
                          if (i == 0)
                            break;
                          localBitmap2 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
                          if ((localBitmap2 != null) && (!localBitmap2.isRecycled()))
                            break label2095;
                          localm.dmn.setImageResource(2130837624);
                          break;
                          localm.daV.setVisibility(8);
                        }
                        label2095: localm.dmn.setImageBitmap(localBitmap2);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      case 15:
      }
      label2136: Bitmap localBitmap1;
      if ((localb.title != null) && (localb.title.length() > 0))
      {
        localm.daV.setVisibility(0);
        localm.dkR.setVisibility(0);
        localm.gKk.setVisibility(8);
        localm.gKn.setVisibility(8);
        localm.gKl.setVisibility(4);
        localm.dkR.setMaxLines(2);
        if (i != 0)
        {
          localBitmap1 = ag.Ba().a(paramak.ot(), true, com.tencent.mm.an.a.getDensity(paramChattingUI), false, true);
          if ((localBitmap1 != null) && (!localBitmap1.isRecycled()))
            break label2306;
          localm.dmn.setImageResource(2130837624);
        }
      }
      while (true)
      {
        localkk = new kk(paramak, false, paramInt, "", 8, false, paramChattingUI.aJN(), localb.bQs, localb.bQt, localb.title, localb.chb, localb.url);
        localm.gki.setTag(localkk);
        break;
        localm.daV.setVisibility(8);
        break label2136;
        label2306: localm.dmn.setImageBitmap(localBitmap1);
      }
      label2319: localm.djS.setVisibility(0);
      this.gME = localm.djS;
      if (this.gME.getWidth() != 0)
        this.gMF = this.gME.getWidth();
      TextView localTextView1 = localm.gKm;
      int k = j * this.gMF / 100;
      int m = com.tencent.mm.platformtools.b.a(paramChattingUI, 15.0F);
      if (k < m);
      while (true)
      {
        localTextView1.setWidth(m);
        break;
        m = k;
      }
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    String str = paramak.getContent();
    if (str == null);
    com.tencent.mm.j.b localb;
    do
    {
      return true;
      localb = com.tencent.mm.j.b.bR(this.gMB.at(str, paramak.rO()));
    }
    while (localb == null);
    k localk = l.F(localb.appId, false);
    if (l.j(localk))
      paramContextMenu.add(i, 111, 0, this.gMB.getString(2131165626));
    boolean bool;
    switch (localb.type)
    {
    case 7:
    default:
      bool = false;
      label143: if ((bool) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if ((com.tencent.mm.ak.a.qc("favorite")) && ((localk == null) || (!localk.apQ())))
        switch (localb.type)
        {
        case 7:
        case 8:
        case 9:
        case 11:
        case 12:
        default:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 10:
        case 13:
        case 14:
        }
      break;
    case 3:
    case 8:
    case 6:
    case 2:
    case 1:
    case 5:
    case 4:
    }
    while (!this.gMB.aJJ())
    {
      paramContextMenu.add(i, 100, 0, this.gMB.getString(2131165658));
      return true;
      bool = p.xY();
      break label143;
      bool = p.xS();
      break label143;
      bool = p.xW();
      break label143;
      bool = p.xK();
      break label143;
      bool = p.xI();
      break label143;
      bool = p.xU();
      break label143;
      bool = p.xM();
      break label143;
      paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
    }
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 100:
    case 111:
    case 114:
    }
    com.tencent.mm.j.b localb1;
    do
    {
      String str1;
      do
      {
        com.tencent.mm.j.b localb2;
        k localk;
        do
        {
          return false;
          String str2 = cj.sT(paramak.getContent());
          localb2 = null;
          if (str2 != null)
            localb2 = com.tencent.mm.j.b.bR(str2);
          if (localb2 != null)
            s.qr(localb2.cgE);
          bv.q(paramak.Bo());
          localk = l.F(localb2.appId, false);
        }
        while ((localk == null) || (!localk.apQ()));
        a(paramChattingUI, localb2, paramak, localk);
        return false;
        Intent localIntent = new Intent(paramChattingUI, MsgRetransmitUI.class);
        localIntent.putExtra("Retr_Msg_content", paramak.getContent());
        localIntent.putExtra("Retr_Msg_Type", 2);
        localIntent.putExtra("Retr_Msg_Id", paramak.field_msgId);
        paramChattingUI.startActivity(localIntent);
        return false;
        str1 = cj.sT(paramak.getContent());
      }
      while (str1 == null);
      localb1 = com.tencent.mm.j.b.bR(str1);
    }
    while (localb1 == null);
    switch (localb1.type)
    {
    case 7:
    default:
      return false;
    case 1:
      kz.h(paramChattingUI.at(paramak.getContent(), paramak.rO()), paramChattingUI.aal());
      return false;
    case 3:
      kz.a(paramak, paramChattingUI.at(paramak.getContent(), paramak.rO()), paramChattingUI.aal());
      return false;
    case 8:
      kz.e(paramak, paramChattingUI.aal());
      return false;
    case 6:
      kz.b(paramak, paramChattingUI.at(paramak.getContent(), paramak.rO()), paramChattingUI.aal());
      return false;
    case 2:
      kz.c(paramak, paramChattingUI.aal());
      return false;
    case 5:
      kz.c(paramak, paramChattingUI.at(paramak.getContent(), paramak.rO()), paramChattingUI.aal());
      return false;
    case 4:
    }
    kz.d(paramak, paramChattingUI.aal());
    return false;
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    if ((((kk)paramView.getTag()).dws == 5) && (paramak.rO() == 1))
      if (paramak != null)
        h.a(this.gMB, this.gMB.getString(2131165776), "", new cr(this, paramak), new cs(this));
    com.tencent.mm.j.b localb;
    k localk;
    label329: label725: label733: label869: label879: 
    do
    {
      boolean bool1;
      do
      {
        return true;
        String str1 = paramak.getContent();
        if (str1 == null)
          return false;
        localb = com.tencent.mm.j.b.bR(str1);
        if (localb == null)
          return false;
        localk = l.F(localb.appId, true);
        if ((localk != null) && (!cj.hX(localk.field_appId)) && (localk.apQ()))
          a(paramChattingUI, localb, v.th(), localk);
        bool1 = ao(paramChattingUI, localb.appId);
        switch (localb.type)
        {
        case 8:
        case 9:
        case 11:
        case 12:
        default:
          return false;
        case 6:
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(paramChattingUI);
            return true;
          }
          long l;
          com.tencent.mm.pluginsdk.model.app.a locala;
          int k;
          if (cj.te(localb.cgD))
          {
            l = paramak.Bo();
            String str10 = localb.cgE;
            locala = com.tencent.mm.pluginsdk.model.app.ba.HF().qk(str10);
            k = 0;
            if (locala != null)
            {
              boolean bool2 = locala.vN();
              k = 0;
              if (bool2)
                break label329;
            }
          }
          while (k == 0)
          {
            Intent localIntent5 = new Intent(paramChattingUI, AppAttachDownloadUI.class);
            localIntent5.putExtra("app_msg_id", paramak.Bo());
            paramChattingUI.startActivity(localIntent5);
            return true;
            if (be.uz().sw().bU(l).aCq())
            {
              Intent localIntent6 = new Intent(this.gMB, ResourcesExceedUI.class);
              localIntent6.putExtra("clean_view_type", 1);
              this.gMB.startActivity(localIntent6);
              k = 1;
            }
            else
            {
              Intent localIntent7 = new Intent(this.gMB, ShowImageUI.class);
              localIntent7.putExtra("key_image_path", locala.field_fileFullPath);
              localIntent7.putExtra("key_message_id", l);
              localIntent7.putExtra("key_favorite", true);
              this.gMB.startActivity(localIntent7);
              k = 1;
            }
          }
        case 3:
        case 4:
          String str7 = u.a(localb.url, "message", bool1);
          String str8 = u.a(localb.cgB, "message", bool1);
          PackageInfo localPackageInfo2 = ad(paramChattingUI, localb.appId);
          String str9 = null;
          int j;
          if (localPackageInfo2 == null)
          {
            j = 0;
            if (localPackageInfo2 != null)
              break label539;
          }
          while (true)
          {
            a(paramChattingUI, str7, str8, str9, j, true, paramak.Bo());
            return true;
            str9 = localPackageInfo2.versionName;
            break;
            j = localPackageInfo2.versionCode;
          }
        case 5:
        case 7:
        case 10:
        case 14:
        case 13:
        }
      }
      while ((localb.url == null) || (localb.url.equals("")));
      String str2 = localb.url;
      String str3;
      PackageInfo localPackageInfo1;
      Intent localIntent4;
      String str6;
      int i;
      if (paramChattingUI.gMn)
      {
        str3 = "groupmessage";
        String str4 = u.a(str2, str3, bool1);
        String str5 = localb.cgB;
        localPackageInfo1 = ad(paramChattingUI, localb.appId);
        localIntent4 = new Intent();
        localIntent4.putExtra("rawUrl", str4);
        localIntent4.putExtra("webpageTitle", localb.title);
        if ((localb.appId != null) && ("wx751a1acca5688ba3".equals(localb.appId)))
        {
          Bundle localBundle = new Bundle();
          localBundle.putString("jsapi_args_appid", "wx751a1acca5688ba3");
          localIntent4.putExtra("jsapiargs", localBundle);
        }
        if (cj.hX(str5))
          break label852;
        localIntent4.putExtra("shortUrl", str5);
        if (localPackageInfo1 != null)
          break label869;
        str6 = null;
        localIntent4.putExtra("version_name", str6);
        i = 0;
        if (localPackageInfo1 != null)
          break label879;
      }
      while (true)
      {
        localIntent4.putExtra("version_code", i);
        if (!cj.hX("srcUsername"))
        {
          localIntent4.putExtra("srcUsername", localb.bQs);
          localIntent4.putExtra("srcDisplayname", localb.bQt);
        }
        localIntent4.putExtra("msg_id", paramak.field_msgId);
        localIntent4.putExtra("geta8key_username", paramChattingUI.aJe());
        localIntent4.setClass(paramChattingUI, WebViewUI.class);
        paramChattingUI.startActivity(localIntent4);
        return true;
        str3 = "singlemessage";
        break;
        localIntent4.putExtra("shortUrl", localb.url);
        break label725;
        str6 = localPackageInfo1.versionName;
        break label733;
        i = localPackageInfo1.versionCode;
      }
    }
    while ((localk != null) && (localk.apQ()) && (a(paramChattingUI, localk)));
    label539: label852: paramChattingUI.H(paramak);
    return true;
    if (cj.hX(localb.cgV))
      return false;
    Intent localIntent3 = new Intent();
    localIntent3.setFlags(65536);
    localIntent3.putExtra("key_Product_xml", localb.cgV);
    localIntent3.putExtra("key_ProductUI_getProductInfoScene", 1);
    if (paramak.ot() == null)
      localIntent3.putExtra("key_ProductUI_chatting_msgId", paramak.Bo());
    com.tencent.mm.ak.a.b(paramChattingUI, "scanner", ".ui.ProductUI", localIntent3);
    return true;
    if (cj.hX(localb.cgY))
      return false;
    Intent localIntent2 = new Intent();
    localIntent2.setFlags(65536);
    localIntent2.putExtra("key_TV_xml", localb.cgY);
    localIntent2.putExtra("key_TV_getProductInfoScene", 1);
    if (paramak.ot() == null)
      localIntent2.putExtra("key_TVInfoUI_chatting_msgId", paramak.Bo());
    com.tencent.mm.ak.a.b(paramChattingUI, "shake", ".ui.TVInfoUI", localIntent2);
    return true;
    if (cj.hX(localb.cha))
      return false;
    Intent localIntent1 = new Intent();
    localIntent1.setFlags(65536);
    localIntent1.putExtra("key_product_info", localb.cha);
    localIntent1.putExtra("key_product_scene", 1);
    com.tencent.mm.ak.a.b(paramChattingUI, "mall", ".product.ui.MallProductUI", localIntent1);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cq
 * JD-Core Version:    0.6.2
 */
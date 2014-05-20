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
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.p.p;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.r;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

final class ci extends ce
{
  private boolean dtw;
  private ChattingUI gMB;

  public ci(int paramInt)
  {
    super(paramInt);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof m)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903161);
      paramView.setTag(new m(this.dws).ao(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    m localm = (m)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.bNl;
    this.dtw = w.cp(paramChattingUI.gMi.bNl);
    localm.gMy.setVisibility(8);
    String str2;
    if (this.dtw)
    {
      str2 = bv.dy(paramak.getContent());
      if ((str1 != null) && (str2 != null) && (str2.length() > 0))
      {
        a(paramChattingUI);
        if (paramChattingUI.gOY)
        {
          localm.gMy.setText(paramChattingUI.cu(str2));
          localm.gMy.setVisibility(0);
        }
      }
    }
    while (true)
    {
      c.a(localm.cMS, str2);
      localm.cMS.setVisibility(0);
      localm.cMS.setTag(new kk(str2));
      localm.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      localm.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      com.tencent.mm.j.a locala = com.tencent.mm.pluginsdk.model.app.ba.HD().bt(paramak.Bo());
      String str3 = paramak.getContent();
      if (this.dtw)
      {
        int j = paramak.getContent().indexOf(':');
        if (j != -1)
          str3 = paramak.getContent().substring(j + 1);
      }
      String str4 = cj.sT(str3);
      com.tencent.mm.j.b localb;
      kk localkk;
      label344: k localk;
      String str5;
      label410: label501: int i;
      if ((locala != null) && (str4 != null))
      {
        localb = com.tencent.mm.j.b.bR(str4);
        localkk = new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000');
        if (localb != null)
        {
          localm.daV.setText(localb.title);
          localm.dkR.setText(localb.description);
          if (!localm.gKo.a(localb.cgS, paramak.aCl(), false))
            break label869;
          localm.gki.setBackgroundResource(2130837827);
          localk = l.F(localb.appId, true);
          if ((localk != null) && (localk.apQ()))
            a(paramChattingUI, localb, paramak);
          if ((localk != null) && (localk.field_appName != null) && (localk.field_appName.trim().length() > 0))
            break label883;
          str5 = localb.appName;
          if ((localb.appId == null) || (localb.appId.length() <= 0) || (!l.aF(str5)))
            break label910;
          localm.dkS.setText(l.a(paramChattingUI, localk, str5));
          localm.dkS.setVisibility(0);
          if ((localk == null) || (!localk.apQ()))
            break label893;
          TextView localTextView = localm.dkS;
          String str6 = localk.field_packageName;
          a(paramChattingUI, localTextView, paramak, localb, str6);
          a(paramChattingUI, localm.dkS, localb.appId);
          label515: i = 0;
          if (!be.uz().isSDCardAvailable())
            break label1005;
          Bitmap localBitmap10 = ag.Ba().c(paramak.ot(), com.tencent.mm.an.a.getDensity(paramChattingUI));
          if (localBitmap10 == null)
            break label999;
          localm.dmn.setImageBitmap(localBitmap10);
          label559: if ((localb.bXF != null) && (localb.bXF.length() != 0))
            break label1029;
          localm.gKg.setVisibility(8);
          label588: localm.gKn.setOnClickListener(null);
          localm.gKq.setVisibility(0);
          localm.gKl.setVisibility(0);
          localm.gKt.setVisibility(0);
          localm.gKr.setVisibility(8);
        }
      }
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
          if (l.i(localk))
          {
            localm.gKp.setVisibility(0);
            c(paramChattingUI, localm.gKp, kk.a(localb, paramak));
          }
          localm.gki.setTag(localkk);
          localm.gki.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            localm.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
          return;
          Object[] arrayOfObject = new Object[4];
          if (locala == null);
          for (boolean bool = true; ; bool = false)
          {
            arrayOfObject[0] = Boolean.valueOf(bool);
            arrayOfObject[1] = str4;
            arrayOfObject[2] = Long.valueOf(paramak.Bo());
            arrayOfObject[3] = str2;
            aa.b("MicroMsg.ChattingItemAppMsgFrom", "amessage:%b, %s, %s", arrayOfObject);
            localb = null;
            break;
          }
          label869: localm.gki.setBackgroundResource(2130837813);
          break label344;
          label883: str5 = localk.field_appName;
          break label410;
          label893: a(paramChattingUI, localm.dkS, localb.appId);
          break label501;
          label910: if (!cj.hX(localb.bQt))
          {
            localm.dkS.setText(localb.bQt);
            localm.dkS.setVisibility(0);
            com.tencent.mm.pluginsdk.ui.chat.ba localba = new com.tencent.mm.pluginsdk.ui.chat.ba();
            localba.username = localb.bQs;
            localba.fqZ = localb.bQt;
            a(paramChattingUI, localm.dkS, localba);
            break label515;
          }
          localm.dkS.setVisibility(8);
          break label515;
          label999: i = 1;
          break label559;
          label1005: localm.dmn.setImageBitmap(BitmapFactory.decodeResource(paramChattingUI.getResources(), 2130838942));
          i = 0;
          break label559;
          label1029: localm.gKg.setVisibility(0);
          b(paramChattingUI, localm.gKg, kk.wG(localb.bXF));
          break label588;
          label1086: label1147: Bitmap localBitmap9;
          if ((localb.title != null) && (localb.title.length() > 0))
          {
            localm.daV.setVisibility(0);
            localm.dkR.setVisibility(0);
            localm.gKk.setVisibility(8);
            localm.gKl.setVisibility(4);
            localm.gKn.setVisibility(0);
            if (paramcf.gMA != paramak.Bo())
              break label1280;
            localm.gKn.setImageResource(2130838899);
            localm.dkR.setMaxLines(2);
            if (i != 0)
            {
              localBitmap9 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
              if ((localBitmap9 != null) && (!localBitmap9.isRecycled()))
                break label1294;
              localm.dmn.setImageResource(2130837623);
            }
          }
          while (true)
          {
            ey localey = new ey();
            localey.bMS = paramak.Bo();
            localey.bRv = paramak.getContent();
            localey.clm = paramak.ot();
            localm.gKn.setTag(localey);
            localm.gKn.setOnClickListener(paramChattingUI.gMi.gNE);
            break;
            localm.daV.setVisibility(8);
            break label1086;
            label1280: localm.gKn.setImageResource(2130838903);
            break label1147;
            label1294: localm.dmn.setImageBitmap(localBitmap9);
          }
          if ((localb.title != null) && (localb.title.length() > 0))
            localm.daV.setVisibility(0);
          while (true)
          {
            localm.dkR.setVisibility(0);
            localm.gKk.setVisibility(8);
            localm.gKn.setVisibility(8);
            localm.gKl.setVisibility(4);
            localm.dkR.setMaxLines(2);
            if (i == 0)
              break;
            if (!cj.te(cj.hW(localb.cgD).toLowerCase()))
              break label1431;
            localm.dmn.setImageResource(2130837673);
            break;
            localm.daV.setVisibility(8);
          }
          label1431: localm.dmn.setImageResource(2130837624);
          continue;
          label1473: Bitmap localBitmap8;
          if ((localb.title != null) && (localb.title.length() > 0))
          {
            localm.daV.setVisibility(0);
            localm.dkR.setVisibility(0);
            localm.gKk.setVisibility(8);
            localm.gKn.setVisibility(0);
            localm.gKn.setImageResource(2130839598);
            localm.gKl.setVisibility(4);
            localm.dkR.setMaxLines(2);
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
              break label1473;
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
              localm.gKn.setVisibility(8);
              localm.gKl.setVisibility(4);
              if (i == 0)
                break;
              localBitmap7 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
              if ((localBitmap7 != null) && (!localBitmap7.isRecycled()))
                break label1752;
              localm.dmn.setImageResource(2130837624);
              break;
              localm.gKk.setVisibility(8);
            }
            label1752: localm.dmn.setImageBitmap(localBitmap7);
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
              localm.gKn.setVisibility(8);
              localm.gKl.setVisibility(0);
              if (i == 0)
                break;
              localBitmap6 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
              if ((localBitmap6 != null) && (!localBitmap6.isRecycled()))
                break label1904;
              localm.dmn.setImageResource(2130837624);
              break;
              localm.gKk.setVisibility(8);
            }
            label1904: localm.dmn.setImageBitmap(localBitmap6);
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
                          localm.gKn.setVisibility(8);
                          localm.gKl.setVisibility(4);
                          localm.dkR.setMaxLines(2);
                          if (i == 0)
                            break;
                          localBitmap2 = l.b(localb.appId, 1, com.tencent.mm.an.a.getDensity(paramChattingUI));
                          if ((localBitmap2 != null) && (!localBitmap2.isRecycled()))
                            break label2451;
                          localm.dmn.setImageResource(2130837624);
                          break;
                          localm.daV.setVisibility(8);
                        }
                        label2451: localm.dmn.setImageBitmap(localBitmap2);
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
      label2492: Bitmap localBitmap1;
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
            break label2662;
          localm.dmn.setImageResource(2130837624);
        }
      }
      while (true)
      {
        localkk = new kk(paramak, false, paramInt, "", 8, false, paramChattingUI.aJN(), localb.bQs, localb.bQt, localb.title, localb.chb, localb.url);
        localm.gki.setTag(localkk);
        break;
        localm.daV.setVisibility(8);
        break label2492;
        label2662: localm.dmn.setImageBitmap(localBitmap1);
      }
      str2 = str1;
      break;
      str2 = str1;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    int j = s.qs(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.gMB.at(paramak.getContent(), paramak.rO()));
    k localk = l.F(localb.appId, false);
    if ((localb.cgC <= 0) || ((localb.cgC > 0) && (j >= 100)))
      if (l.j(localk))
        paramContextMenu.add(i, 111, 0, this.gMB.getString(2131165626));
    boolean bool;
    switch (localb.type)
    {
    case 7:
    default:
      bool = false;
      if ((bool) && (!this.gMB.aJJ()))
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
    while (true)
    {
      if (!this.gMB.aJJ())
        paramContextMenu.add(i, 100, 0, this.gMB.getString(2131165658));
      return true;
      bool = p.xY();
      break;
      bool = p.xS();
      break;
      bool = p.xW();
      break;
      bool = p.xK();
      break;
      bool = p.xI();
      break;
      bool = p.xU();
      break;
      bool = p.xM();
      break;
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
        localIntent.putExtra("Retr_Msg_content", paramChattingUI.at(paramak.getContent(), paramak.rO()));
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
    int i = 1;
    String str1 = paramak.getContent();
    if (str1 == null)
      i = 0;
    com.tencent.mm.j.b localb;
    k localk;
    boolean bool;
    do
    {
      return i;
      localb = com.tencent.mm.j.b.bR(paramChattingUI.at(str1, paramak.rO()));
      if (localb == null)
        return false;
      localk = l.F(localb.appId, false);
      if ((localk != null) && (localk.apQ()))
        a(paramChattingUI, localb, a(paramChattingUI, paramak), localk);
      bool = ao(paramChattingUI, localb.appId);
      switch (localb.type)
      {
      case 5:
      case 8:
      case 9:
      case 11:
      case 12:
      default:
      case 3:
      case 4:
      case 6:
      case 7:
      case 10:
      case 14:
      case 13:
      }
    }
    while ((localb.url == null) || (localb.url.equals("")));
    String str5 = localb.url;
    String str6;
    label197: PackageInfo localPackageInfo2;
    Intent localIntent6;
    label332: String str9;
    label340: int k;
    if (paramChattingUI.gMn)
    {
      str6 = "groupmessage";
      String str7 = u.a(str5, str6, bool);
      String str8 = localb.url;
      localPackageInfo2 = ad(paramChattingUI, localb.appId);
      localIntent6 = new Intent();
      localIntent6.putExtra("rawUrl", str7);
      localIntent6.putExtra("webpageTitle", localb.title);
      if ((localb.appId != null) && ("wx751a1acca5688ba3".equals(localb.appId)))
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("jsapi_args_appid", "wx751a1acca5688ba3");
        localIntent6.putExtra("jsapiargs", localBundle);
      }
      if (cj.hX(str8))
        break label965;
      localIntent6.putExtra("shortUrl", str8);
      if (localPackageInfo2 != null)
        break label982;
      str9 = null;
      localIntent6.putExtra("version_name", str9);
      k = 0;
      if (localPackageInfo2 != null)
        break label992;
    }
    while (true)
    {
      localIntent6.putExtra("version_code", k);
      if (!cj.hX("srcUsername"))
      {
        localIntent6.putExtra("srcUsername", localb.bQs);
        localIntent6.putExtra("srcDisplayname", localb.bQt);
      }
      localIntent6.putExtra("msg_id", paramak.field_msgId);
      localIntent6.putExtra("geta8key_username", paramChattingUI.aJe());
      localIntent6.setClass(paramChattingUI, WebViewUI.class);
      paramChattingUI.startActivity(localIntent6);
      return i;
      String str2 = u.a(localb.url, "message", bool);
      String str3 = u.a(localb.cgB, "message", bool);
      PackageInfo localPackageInfo1 = ad(paramChattingUI, localb.appId);
      String str4 = null;
      int j;
      if (localPackageInfo1 == null)
      {
        j = 0;
        if (localPackageInfo1 != null)
          break label540;
      }
      while (true)
      {
        a(paramChattingUI, str2, str3, str4, j, i, paramak.Bo());
        return i;
        str4 = localPackageInfo1.versionName;
        break;
        label540: j = localPackageInfo1.versionCode;
      }
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(paramChattingUI);
        return i;
      }
      Intent localIntent5 = new Intent(paramChattingUI, AppAttachDownloadUI.class);
      localIntent5.putExtra("app_msg_id", paramak.Bo());
      paramChattingUI.startActivity(localIntent5);
      return i;
      if ((localk != null) && (localk.apQ()) && (a(paramChattingUI, localk)))
        break;
      if ((localb.cgE == null) || (localb.cgE.length() == 0))
      {
        paramChattingUI.H(paramak);
        return i;
      }
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(paramChattingUI);
        return i;
      }
      Intent localIntent4 = new Intent(paramChattingUI, AppAttachDownloadUI.class);
      localIntent4.putExtra("app_msg_id", paramak.Bo());
      paramChattingUI.startActivityForResult(localIntent4, 210);
      return i;
      if (cj.hX(localb.cgV))
        return false;
      Intent localIntent3 = new Intent();
      localIntent3.setFlags(65536);
      localIntent3.putExtra("key_Product_xml", localb.cgV);
      localIntent3.putExtra("key_ProductUI_getProductInfoScene", i);
      if (paramak.ot() == null)
        localIntent3.putExtra("key_ProductUI_chatting_msgId", paramak.Bo());
      com.tencent.mm.ak.a.b(paramChattingUI, "scanner", ".ui.ProductUI", localIntent3);
      return i;
      if (cj.hX(localb.cgY))
        return false;
      Intent localIntent2 = new Intent();
      localIntent2.setFlags(65536);
      localIntent2.putExtra("key_TV_xml", localb.cgY);
      localIntent2.putExtra("key_TV_getProductInfoScene", i);
      if (paramak.ot() == null)
        localIntent2.putExtra("key_TVInfoUI_chatting_msgId", paramak.Bo());
      com.tencent.mm.ak.a.b(paramChattingUI, "shake", ".ui.TVInfoUI", localIntent2);
      return i;
      if (cj.hX(localb.cha))
        return false;
      Intent localIntent1 = new Intent();
      localIntent1.setFlags(65536);
      localIntent1.putExtra("key_product_info", localb.cha);
      localIntent1.putExtra("key_product_scene", i);
      com.tencent.mm.ak.a.b(paramChattingUI, "mall", ".product.ui.MallProductUI", localIntent1);
      return i;
      str6 = "singlemessage";
      break label197;
      label965: localIntent6.putExtra("shortUrl", localb.url);
      break label332;
      label982: str9 = localPackageInfo2.versionName;
      break label340;
      label992: k = localPackageInfo2.versionCode;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ci
 * JD-Core Version:    0.6.2
 */
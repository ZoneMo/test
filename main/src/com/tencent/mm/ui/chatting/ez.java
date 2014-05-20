package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.ai.p;
import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.c.a.dd;
import com.tencent.mm.c.a.df;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.c.a.ic;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.am;
import com.tencent.mm.storage.an;
import com.tencent.mm.storage.ao;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.y;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.contact.bh;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.tools.ImageGalleryUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.video.VideoDownloadUI;
import com.tencent.mm.ui.video.VideoPlayerUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;
import java.util.Map;
import junit.framework.Assert;

final class ez
  implements View.OnClickListener
{
  public static boolean gOa = false;
  private ChattingUI gMB;
  private v gMj;

  public ez(ChattingUI paramChattingUI, String paramString, v paramv)
  {
    this.gMB = paramChattingUI;
    this.gMj = paramv;
    dd localdd = new dd();
    localdd.bOg.bOi = 0;
    localdd.bOg.bOj = com.tencent.mm.sdk.platformtools.z.azj();
    if (com.tencent.mm.model.w.cp(paramString));
    for (localdd.bOg.bOk = true; ; localdd.bOg.bOk = false)
    {
      com.tencent.mm.sdk.b.a.ayH().f(localdd);
      return;
    }
  }

  private void C(ak paramak)
  {
    q localq = com.tencent.mm.ai.v.hh(paramak.ot());
    boolean bool = p.gQ(com.tencent.mm.ai.m.DE().gZ(paramak.ot()));
    if ((localq.DQ() == 0) && (!bool))
      if (paramak.aCq())
      {
        Intent localIntent2 = new Intent(this.gMB, ResourcesExceedUI.class);
        localIntent2.putExtra("clean_view_type", 0);
        this.gMB.startActivity(localIntent2);
      }
    do
    {
      do
        return;
      while ((s.ceN.cen == 1) && (VideoPlayerUI.b(localq.getFileName(), this.gMB, bool)));
      Intent localIntent3 = new Intent(this.gMB, VideoPlayerUI.class);
      localIntent3.putExtra("VideoRecorder_MsgId", paramak.Bo());
      localIntent3.putExtra("VideoRecorder_VideoSize", localq.vR());
      localIntent3.putExtra("VideoRecorder_VideoLength", localq.DO());
      localIntent3.putExtra("VideoPlayer_File_nam", paramak.ot());
      this.gMB.startActivity(localIntent3);
      return;
      if (paramak.aCq())
      {
        Intent localIntent1 = new Intent(this.gMB, ResourcesExceedUI.class);
        localIntent1.putExtra("clean_view_type", 0);
        this.gMB.startActivity(localIntent1);
        return;
      }
    }
    while (VideoPlayerUI.b(localq.getFileName(), this.gMB, bool));
    Toast.makeText(this.gMB, this.gMB.getString(2131166715), 0).show();
  }

  private void a(long paramLong, int paramInt, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(this.gMB, ImageGalleryUI.class);
    localIntent.putExtra("img_gallery_msg_id", paramLong);
    localIntent.putExtra("img_gallery_msg_svr_id", paramInt);
    localIntent.putExtra("img_gallery_talker", paramString1);
    localIntent.putExtra("img_gallery_chatroom_name", paramString2);
    this.gMB.startActivity(localIntent);
  }

  private void c(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(this.gMB, ImageGalleryUI.class);
    localIntent.putExtra("img_gallery_msg_id", paramInt1);
    localIntent.putExtra("img_gallery_msg_svr_id", paramInt2);
    localIntent.putExtra("img_gallery_talker", paramString1);
    localIntent.putExtra("img_gallery_chatroom_name", paramString2);
    this.gMB.startActivity(localIntent);
  }

  private void wC(String paramString)
  {
    if ((!bm.ac(this.gMB)) && (!gOa))
    {
      gOa = true;
      com.tencent.mm.ui.base.h.a(this.gMB, 2131166718, 2131167675, new ff(this, paramString), null);
      return;
    }
    com.tencent.mm.ai.v.hg(paramString);
    Intent localIntent = new Intent(this.gMB, VideoDownloadUI.class);
    localIntent.putExtra("file_name", paramString);
    this.gMB.startActivity(localIntent);
  }

  public final void onClick(View paramView)
  {
    int i = 3;
    int j = 1;
    kk localkk = (kk)paramView.getTag();
    ak localak2;
    switch (localkk.dws)
    {
    case 2:
    case 3:
    case 4:
    case 5:
    default:
      localak2 = localkk.cad;
      if (localak2 != null)
        break;
    case 1:
    case 6:
    case 7:
    case 8:
    }
    label1018: an localan;
    do
    {
      do
      {
        String str2;
        String str3;
        String str4;
        do
        {
          String str5;
          do
          {
            return;
            str5 = localkk.bPx;
          }
          while ((str5 == null) || (str5.equals("")));
          Intent localIntent5 = new Intent();
          localIntent5.setClass(this.gMB, ContactInfoUI.class);
          localIntent5.putExtra("Contact_User", str5);
          com.tencent.mm.storage.i locali2 = be.uz().su().tO(str5);
          if ((locali2 != null) && (locali2.rj() > 0) && (locali2.rb()))
          {
            bh.b(localIntent5, str5);
            if (localkk.cad != null)
              switch (localkk.cad.field_type)
              {
              case 56:
              default:
              case 55:
              case 57:
              }
          }
          while (true)
          {
            this.gMB.startActivityForResult(localIntent5, 213);
            return;
            if (!this.gMB.gMo)
              break;
            ar.tZ().a(str5, new fa(this));
            break;
            localIntent5.putExtra("Contact_Scene", 34);
            localIntent5.putExtra("Contact_IsLBSFriend", j);
          }
          aa.d("MicroMsg.ChattingListClickListener", "edw timestamp, onClick = " + System.currentTimeMillis());
          str2 = localkk.bPx;
          str3 = localkk.bQt;
          str4 = localkk.gQL;
        }
        while ((str2 == null) || (str2.equals("")));
        Intent localIntent4 = new Intent();
        localIntent4.putExtra("rawUrl", str2);
        localIntent4.putExtra("shortUrl", str2);
        localIntent4.putExtra("webpageTitle", str4);
        if ((str3 != null) && (!"".equals(str3)))
          localIntent4.putExtra("title", str3);
        Bundle localBundle = new Bundle();
        ak localak1 = localkk.cad;
        int k = 0;
        if (localak1 != null)
        {
          com.tencent.mm.storage.i locali1 = be.uz().su().tO(localak1.aCl());
          k = 0;
          if (locali1 != null)
          {
            boolean bool1 = locali1.aAp();
            k = 0;
            if (bool1)
              k = 4;
          }
          localIntent4.putExtra("msg_id", localak1.field_msgId);
        }
        localBundle.putInt("snsWebSource", k);
        localIntent4.putExtra("jsapiargs", localBundle);
        localIntent4.putExtra("geta8key_username", this.gMB.aJe());
        if (!au.hX(localkk.bQs))
        {
          localIntent4.putExtra("srcUsername", localkk.bQs);
          localIntent4.putExtra("srcDisplayname", localkk.bQt);
          localIntent4.putExtra("mode", j);
        }
        localIntent4.putExtra("message_id", localkk.gQO);
        localIntent4.putExtra("message_index", localkk.gQP);
        localIntent4.setClass(this.gMB, WebViewUI.class);
        this.gMB.startActivity(localIntent4);
        return;
        Intent localIntent3 = new Intent(this.gMB, WebViewUI.class);
        localIntent3.putExtra("geta8key_username", this.gMB.aJe());
        localIntent3.putExtra("rawUrl", localkk.bXF);
        this.gMB.startActivity(localIntent3);
        return;
      }
      while (localkk.cad == null);
      String str1 = localkk.bPE;
      if (TextUtils.isEmpty(str1))
        str1 = com.tencent.mm.pluginsdk.h.apj().iZ(localkk.bXF);
      if (TextUtils.isEmpty(str1))
      {
        Intent localIntent1 = new Intent(this.gMB, WebViewUI.class);
        localIntent1.putExtra("geta8key_username", this.gMB.aJe());
        localIntent1.putExtra("rawUrl", localkk.bXF);
        this.gMB.startActivity(localIntent1);
        return;
      }
      aa.d("MicroMsg.ChattingListClickListener", "start emoji detail from brandcontact");
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("extra_id", str1);
      localIntent2.putExtra("preceding_scence", 9);
      localIntent2.putExtra("entrance_scence", 2);
      com.tencent.mm.ak.a.b(this.gMB, "emoji", ".ui.EmojiStoreDetailUI", localIntent2);
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(2);
      arrayOfObject1[j] = str1;
      localm1.d(10993, arrayOfObject1);
      return;
      es locales = this.gMB.gMi;
      int m = localak2.getType();
      if (localak2.rO() == j);
      int i1;
      for (int n = j; ; i1 = 0)
      {
        ce localce = locales.o(m, n);
        if ((localce != null) && (localce.a(paramView, this.gMB, localak2)))
          break;
        if ((localkk.dws != 5) || (localak2.rO() != j))
          break label1018;
        ak localak9 = localkk.cad;
        com.tencent.mm.ui.base.h.a(this.gMB, this.gMB.getString(2131165776), "", new fb(this, localak9), new fc(this));
        return;
      }
      aa.i("MicroMsg.ChattingListClickListener", "CreateTime:" + localak2.DL());
      if (localak2.aBV())
      {
        if (!be.uz().isSDCardAvailable())
        {
          dn.bW(this.gMB);
          return;
        }
        this.gMj.b(localkk.position, localkk.cad);
        return;
      }
      if (!localak2.aBZ())
        break;
      localan = be.uz().sw().vh(localkk.cad.getContent());
      if (au.hW(localan.aCJ()).length() > 0)
      {
        com.tencent.mm.ak.a.b(this.gMB, "qqmail", ".ui.ReadMailUI", new Intent().putExtra("msgid", localkk.cad.Bo()));
        return;
      }
    }
    while (au.hW(localan.aCH()).length() <= 0);
    Intent localIntent11 = new Intent("android.intent.action.VIEW", Uri.parse(localan.aCH()));
    localIntent11.setClass(this.gMB, WebViewUI.class);
    this.gMB.startActivity(localIntent11);
    return;
    ak localak8;
    e locale3;
    e locale1;
    if (localak2.aBY())
    {
      localak8 = localkk.cad;
      if (localak8.rO() == j)
      {
        locale3 = ag.Ba().dG((int)localak8.Bo());
        if ((locale3 != null) && (locale3.AG() != 0L))
          break label5604;
        locale1 = ag.Ba().dF(localak8.AH());
      }
    }
    while (true)
    {
      Map localMap = u.aL(localak8.getContent(), "msg");
      if (localMap != null)
        Long.valueOf(au.R((String)localMap.get(".msg.img.$hdlength"), "0")).longValue();
      if (locale1 == null)
        break;
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(this.gMB);
        return;
        locale1 = ag.Ba().dF(localak8.AH());
      }
      else
      {
        if (localak8.rO() == j)
        {
          String str23 = com.tencent.mm.w.f.c(locale1);
          String str24 = ag.Ba().j(str23, "", "");
          if ((str23 != null) && (str23.length() > 0) && (c.as(str24)))
          {
            locale1.AM();
            int i16 = locale1.AF();
            int i17 = locale1.AH();
            String str28 = localkk.bPx;
            locale1.AM();
            c(i16, i17, str28, localkk.cWi);
            return;
          }
          String str25 = locale1.AI();
          String str26 = ag.Ba().j(str25, "", "");
          if ((str25 != null) && (str25.length() > 0) && (c.as(str26)))
          {
            int i14 = locale1.AF();
            int i15 = locale1.AH();
            String str27 = localkk.bPx;
            locale1.AM();
            c(i14, i15, str27, localkk.cWi);
            return;
          }
          a(localak8.Bo(), localak8.AH(), localkk.bPx, localkk.cWi);
          return;
        }
        if (locale1.AL())
        {
          String str21 = locale1.AI();
          if (locale1.AM())
          {
            e locale2 = com.tencent.mm.w.f.a(locale1);
            if ((locale2 != null) && (locale2.AG() > 0L) && (locale2.AL()) && (c.as(ag.Ba().j(locale2.AI(), "", ""))))
              str21 = locale2.AI();
          }
          ag.Ba().j(str21, "", "");
          int i12 = locale1.AF();
          int i13 = locale1.AH();
          String str22 = localkk.bPx;
          locale1.AM();
          c(i12, i13, str22, localkk.cWi);
          return;
        }
        a(localak8.Bo(), localak8.AH(), localkk.bPx, localkk.cWi);
        return;
        if (localak2.aCa())
        {
          String str18 = localkk.bPx;
          String str19 = localak2.getContent();
          boolean bool3 = localkk.gJU;
          String str20;
          label1798: al localal2;
          Intent localIntent10;
          if (localak2.rO() == 0)
          {
            int i10 = j;
            if ((!bool3) || (i10 == 0))
              break label2228;
            str20 = bv.dz(str19);
            localal2 = be.uz().sw().vj(str20);
            if (localal2 == null)
              break;
            localIntent10 = new Intent(this.gMB, ContactInfoUI.class);
            localIntent10.putExtra("Contact_User", localal2.aCu());
            localIntent10.putExtra("Contact_Alias", localal2.rp());
            localIntent10.putExtra("Contact_Nick", localal2.kn());
            localIntent10.putExtra("Contact_QuanPin", localal2.ro());
            localIntent10.putExtra("Contact_PyInitial", localal2.rn());
            localIntent10.putExtra("Contact_Uin", localal2.aCx());
            localIntent10.putExtra("Contact_Mobile_MD5", localal2.aCw());
            localIntent10.putExtra("Contact_full_Mobile_MD5", localal2.aCz());
            localIntent10.putExtra("Contact_QQNick", localal2.aCy());
            localIntent10.putExtra("User_From_Fmessage", false);
            localIntent10.putExtra("Contact_Scene", localal2.Gf());
            localIntent10.putExtra("Contact_FMessageCard", j);
            localIntent10.putExtra("Contact_RemarkName", localal2.Ai());
            localIntent10.putExtra("Contact_VUser_Info_Flag", localal2.rJ());
            localIntent10.putExtra("Contact_VUser_Info", localal2.rK());
            localIntent10.putExtra("Contact_BrandIconURL", localal2.aCA());
            localIntent10.putExtra("Contact_Province", localal2.rC());
            localIntent10.putExtra("Contact_City", localal2.rD());
            localIntent10.putExtra("Contact_Sex", localal2.rk());
            localIntent10.putExtra("Contact_Signature", localal2.rB());
            localIntent10.putExtra("Contact_ShowUserName", false);
            localIntent10.putExtra("Contact_KSnsIFlag", 0);
            if ((0x8 & localal2.rJ()) > 0)
            {
              if ((!au.hX(str18)) && (be.uz().su().tO(str18).aAp()))
                break label2235;
              localIntent10.putExtra("Contact_Scene", 17);
              com.tencent.mm.plugin.d.c.m.dZN.j(10298, localal2.aCu() + ",17");
            }
          }
          while (true)
          {
            this.gMB.startActivity(localIntent10);
            com.tencent.mm.al.a.le(localal2.Gf());
            return;
            int i11 = 0;
            break;
            label2228: str20 = str19;
            break label1798;
            label2235: localIntent10.putExtra("Contact_Scene", 41);
            com.tencent.mm.plugin.d.c.m.dZN.j(10298, localal2.aCu() + ",41");
          }
        }
        if (localak2.getType() == 37)
        {
          String str16 = localak2.getContent();
          aa.w("MicroMsg.ChattingListClickListener", "dealClickVerifyMsgEvent : " + str16);
          if ((str16 == null) || (str16.length() <= 0))
            break;
          ao localao = be.uz().sw().vi(str16);
          if (localao == null)
            break;
          int i9 = localao.aCu().length();
          boolean bool2 = false;
          if (i9 > 0)
            bool2 = j;
          Assert.assertTrue(bool2);
          com.tencent.mm.storage.i locali4 = be.uz().su().tO(localao.aCu());
          Intent localIntent9 = new Intent(this.gMB, ContactInfoUI.class);
          if ((locali4 != null) && (locali4.rj() > 0) && (locali4.rb()))
          {
            localIntent9.putExtra("Contact_User", locali4.getUsername());
            bh.b(localIntent9, locali4.getUsername());
            str17 = localao.getContent();
            if (au.hW(str17).length() <= 0)
              switch (localao.Gf())
              {
              case 19:
              case 20:
              case 21:
              default:
              case 18:
              case 22:
              case 23:
              case 24:
              case 25:
              case 26:
              case 27:
              case 28:
              case 29:
              }
          }
          for (String str17 = this.gMB.getString(2131165746); ; str17 = this.gMB.getString(2131167817))
          {
            localIntent9.putExtra("Contact_Content", str17);
            localIntent9.putExtra("Contact_verify_Scene", localao.Gf());
            localIntent9.putExtra("Contact_Uin", localao.aCx());
            localIntent9.putExtra("Contact_QQNick", localao.Ah());
            localIntent9.putExtra("Contact_Mobile_MD5", localao.aCw());
            localIntent9.putExtra("User_From_Fmessage", j);
            localIntent9.putExtra("Contact_from_msgType", 37);
            localIntent9.putExtra("Contact_KSnsIFlag", localao.aCL());
            localIntent9.putExtra("Contact_KSnsBgUrl", localao.aCM());
            this.gMB.startActivity(localIntent9);
            com.tencent.mm.al.a.le(localao.Gf());
            return;
            localIntent9.putExtra("Verify_ticket", localao.aCK());
            localIntent9.putExtra("User_Verify", j);
            localIntent9.putExtra("Contact_User", localao.aCu());
            localIntent9.putExtra("Contact_Alias", localao.rp());
            localIntent9.putExtra("Contact_Nick", localao.kn());
            localIntent9.putExtra("Contact_QuanPin", localao.ro());
            localIntent9.putExtra("Contact_PyInitial", localao.rn());
            localIntent9.putExtra("Contact_Sex", localao.rk());
            localIntent9.putExtra("Contact_Signature", localao.rB());
            localIntent9.putExtra("Contact_Scene", localao.Gf());
            localIntent9.putExtra("Contact_FMessageCard", j);
            localIntent9.putExtra("Contact_City", localao.rD());
            localIntent9.putExtra("Contact_Province", localao.rC());
            localIntent9.putExtra("Contact_Mobile_MD5", localao.aCw());
            localIntent9.putExtra("Contact_full_Mobile_MD5", localao.aCz());
            localIntent9.putExtra("Contact_KSnsIFlag", localao.aCL());
            localIntent9.putExtra("Contact_KSnsBgUrl", localao.aCM());
            break;
          }
        }
        if (localak2.getType() == 40)
        {
          String str15 = localak2.getContent();
          al localal1 = be.uz().sw().vj(str15);
          if ((localal1 == null) || (localal1.aCu().length() <= 0))
            break;
          com.tencent.mm.al.a.le(localal1.Gf());
          com.tencent.mm.storage.i locali3 = be.uz().su().tO(localal1.aCu());
          if ((locali3 != null) && (locali3.rj() > 0) && (locali3.rb()))
          {
            bh.a(this.gMB, locali3, localal1);
            return;
          }
          if ((localal1.aCx() <= 0L) && ((!au.hX(localal1.aCw())) || (!au.hX(localal1.aCz()))))
          {
            com.tencent.mm.modelfriend.h localh = ax.Al().fs(localal1.aCw());
            if ((localh == null) || (localh.yK() == null) || (localh.yK().length() <= 0))
            {
              localh = ax.Al().fs(localal1.aCz());
              if ((localh == null) || (localh.yK() == null) || (localh.yK().length() <= 0))
              {
                if ((locali3 != null) && (locali3.rj() > 0))
                  bh.a(this.gMB, locali3, localal1);
                while (true)
                {
                  aa.e("MicroMsg.ChattingListClickListener", "error : this is not the mobile contact, MD5 = " + localal1.aCw() + " fullMD5:" + localal1.aCz());
                  return;
                  bh.a(this.gMB, localal1);
                }
              }
            }
            if ((localh.getUsername() == null) || (localh.getUsername().length() <= 0))
            {
              localh.setUsername(localal1.aCu());
              localh.cL(128);
              if (ax.Al().a(localh.yK(), localh) == -1)
              {
                aa.e("MicroMsg.ChattingListClickListener", "update mobile contact username failed");
                return;
              }
            }
            bh.a(this.gMB, localal1);
            return;
          }
          bh.a(this.gMB, localal1);
          return;
        }
        if (localak2.MP())
        {
          ak localak5 = localkk.cad;
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(this.gMB);
            return;
          }
          ak localak7;
          q localq4;
          if (localak5.rO() == 0)
          {
            localak7 = localkk.cad;
            localq4 = com.tencent.mm.ai.v.hh(localak7.ot());
            aa.v("MicroMsg.ChattingListClickListener", "video status:" + localq4.getStatus() + " is sender:" + localak7.rO());
            switch (localkk.dws)
            {
            default:
            case 4:
            case 3:
            case 2:
            }
          }
          ak localak6;
          q localq1;
          while (localak5.rO() == j)
          {
            localak6 = localkk.cad;
            localq1 = com.tencent.mm.ai.m.DE().gW(localak6.ot());
            switch (localkk.dws)
            {
            default:
              return;
            case 2:
              C(localak6);
              return;
              if (!be.uz().isSDCardAvailable())
              {
                dn.bW(this.gMB);
              }
              else
              {
                String str14 = localak7.ot();
                q localq6 = com.tencent.mm.ai.v.hh(str14);
                if (localq6 == null)
                {
                  aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " getinfo failed: " + str14);
                  j.qe();
                }
                else if (localq6.getStatus() != 112)
                {
                  aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " get status failed: " + str14 + " status:" + localq6.getStatus());
                  j.qe();
                }
                else
                {
                  localq6.setStatus(113);
                  localq6.H(cj.FC());
                  localq6.cL(1280);
                  if (!com.tencent.mm.ai.v.d(localq6))
                  {
                    aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " update failed: " + str14);
                    j.qe();
                    continue;
                    if (!be.uz().isSDCardAvailable())
                    {
                      dn.bW(this.gMB);
                    }
                    else if (localq4.getStatus() == 198)
                    {
                      String str13 = localq4.getFileName();
                      q localq5 = new q();
                      localq5.setStatus(112);
                      localq5.H(cj.FC());
                      localq5.I(cj.FC());
                      localq5.gR(str13);
                      localq5.cL(3328);
                      if (com.tencent.mm.ai.v.d(localq5))
                        com.tencent.mm.ai.m.DF().run();
                    }
                    else if ((!bm.ac(this.gMB)) && (!ChattingUI.gOa))
                    {
                      ChattingUI.gOa = j;
                      com.tencent.mm.ui.base.h.a(this.gMB, 2131166718, 2131167675, new fd(this, localq4), new fe(this));
                    }
                    else
                    {
                      com.tencent.mm.ai.v.hg(localq4.getFileName());
                      continue;
                      if ((localq4.getStatus() == 113) || (localq4.getStatus() == 198))
                      {
                        wC(localak7.ot());
                      }
                      else
                      {
                        if (localq4.getStatus() == 199)
                          C(localak7);
                        if (localq4.getStatus() == 111)
                          wC(localak7.ot());
                      }
                    }
                  }
                }
              }
              break;
            case 4:
            case 3:
            }
          }
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(this.gMB);
            return;
          }
          String str12 = localak6.ot();
          q localq3 = com.tencent.mm.ai.v.hh(str12);
          if (localq3 == null)
          {
            aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " getinfo failed: " + str12);
            j.qe();
            return;
          }
          if ((localq3.getStatus() != 104) && (localq3.getStatus() != 103))
          {
            aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " get status failed: " + str12 + " status:" + localq3.getStatus());
            j.qe();
            return;
          }
          localq3.setStatus(105);
          localq3.H(cj.FC());
          localq3.cL(1280);
          if (com.tencent.mm.ai.v.d(localq3))
            break;
          aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " update failed: " + str12);
          j.qe();
          return;
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(this.gMB);
            return;
          }
          if (localq1.getStatus() == 198)
          {
            q localq2 = com.tencent.mm.ai.v.hh(localak6.ot());
            if (localq2 == null)
              break;
            if (localq2.DJ() < localq2.DK())
              localq2.setStatus(103);
            while (true)
            {
              localq2.G(cj.FC());
              localq2.H(cj.FC());
              localq2.I(cj.FC());
              localq2.cL(3840);
              if (!com.tencent.mm.ai.v.d(localq2))
                break;
              com.tencent.mm.ai.m.DF().run();
              return;
              localq2.setStatus(104);
            }
          }
          com.tencent.mm.ai.v.hf(localak6.ot());
          return;
        }
        if (localak2.aCd())
        {
          if (!be.uz().isSDCardAvailable())
            break;
          y localy = com.tencent.mm.pluginsdk.h.apj().ja(localkk.cad.ot());
          if ((localy == null) || (localy.apQ()))
            break;
          Intent localIntent8 = new Intent();
          localIntent8.putExtra("custom_smiley_preview_md5", localkk.cad.ot());
          if ((localy.aBG() != com.tencent.mm.storage.w.ggY) && (localy.aBG() != com.tencent.mm.storage.w.ggX) && (localy.aBG() != com.tencent.mm.storage.w.ggW))
            localIntent8.putExtra("custom_smiley_preview_productid", localy.aBK());
          com.tencent.mm.ak.a.b(this.gMB, "emoji", ".ui.CustomSmileyPreviewUI", localIntent8);
          return;
        }
        ak localak4;
        String str8;
        label4494: String str9;
        int i8;
        if (localak2.getType() == 48)
        {
          localak4 = localkk.cad;
          str8 = localak4.getContent();
          if (localak4.rO() == 0)
          {
            int i6 = j;
            str9 = "";
            if (i6 != 0)
              str9 = localak4.aCl();
            if ((!com.tencent.mm.model.w.cp(localak4.aCl())) || (i6 == 0))
              break label5597;
            i8 = bv.dw(str8);
            if (i8 == -1)
              break label5597;
            str9 = str8.substring(0, i8).trim();
          }
        }
        label5175: label5180: label5597: for (String str10 = str8.substring(i8 + 1).trim(); ; str10 = str8)
        {
          am localam = be.uz().sw().vk(str10);
          if ((!au.hX(str9)) && (com.tencent.mm.model.w.cp(str9)))
            str9 = "";
          dd localdd = new dd();
          localdd.bOg.bOi = j;
          localdd.bOg.bLP = localak4;
          com.tencent.mm.sdk.b.a.ayH().f(localdd);
          String str11 = localdd.bOh.bOl;
          if ((str11 == null) || ("".equals(str11)) || ("err_not_started".equals(str11)))
          {
            aa.e("MicroMsg.ChattingListClickListener", "location not valid or subcore not started");
            return;
            int i7 = 0;
            break label4494;
          }
          Intent localIntent7 = new Intent();
          localIntent7.putExtra("kMsgId", localak4.Bo());
          localIntent7.putExtra("map_view_type", j);
          localIntent7.putExtra("kwebmap_slat", localam.aCE());
          localIntent7.putExtra("kwebmap_lng", localam.aCF());
          localIntent7.putExtra("kwebmap_scale", localam.axF());
          localIntent7.putExtra("kPoiName", localam.aCC());
          localIntent7.putExtra("kisUsername", com.tencent.mm.model.w.cu(str9));
          localIntent7.putExtra("Kwebmap_locaion", str11);
          localIntent7.putExtra("kimg_path", be.uz().sB());
          localIntent7.putExtra("map_talker_name", localak4.aCl());
          localIntent7.putExtra("view_type_key", 0);
          localIntent7.putExtra("kwebmap_from_to", j);
          localIntent7.putExtra("kPoi_url", localam.aCG());
          localIntent7.putExtra("soso_street_view_url", au.R(localak4.aCo(), ""));
          com.tencent.mm.ak.a.b(this.gMB.aal(), "location", ".ui.RedirectUI", localIntent7);
          return;
          if (localak2.aBX())
          {
            String str6 = localak2.getContent();
            ia localia1 = new ia();
            localia1.bRw.bNk = j;
            localia1.bRw.content = str6;
            com.tencent.mm.sdk.b.a.ayH().f(localia1);
            com.tencent.mm.plugin.d.c.m localm2;
            Object[] arrayOfObject2;
            if (localia1.bRx.type == 2)
            {
              int i2 = j;
              if ((i2 == 0) && (!localak2.getContent().equals(ak.ghI)))
                break label5180;
              localkk.cad.setStatus(6);
              be.uz().sw().a(localkk.cad.Bo(), localkk.cad);
              this.gMB.aJU();
              ia localia2 = new ia();
              localia2.bRw.bNk = 5;
              localia2.bRw.bNl = localkk.cad.aCl();
              localia2.bRw.context = this.gMB;
              localia2.bRw.bRz = 2;
              com.tencent.mm.sdk.b.a.ayH().f(localia2);
              localm2 = com.tencent.mm.plugin.d.c.m.dZN;
              arrayOfObject2 = new Object[i];
              arrayOfObject2[0] = Integer.valueOf(i);
              arrayOfObject2[j] = Integer.valueOf(j);
              if ((localkk.cad.aCn() != null) && (localkk.cad.aCn().length() > 0))
                break label5175;
            }
            while (true)
            {
              arrayOfObject2[2] = Integer.valueOf(j);
              localm2.d(11033, arrayOfObject2);
              return;
              int i3 = 0;
              break;
              j = i;
            }
            String str7 = localak2.getContent();
            ia localia3 = new ia();
            localia3.bRw.bNk = j;
            localia3.bRw.content = str7;
            com.tencent.mm.sdk.b.a.ayH().f(localia3);
            if (localia3.bRx.type == i);
            int i5;
            for (int i4 = j; (i4 != 0) || (localak2.getContent().equals(ak.ghH)); i5 = 0)
            {
              localkk.cad.setStatus(6);
              be.uz().sw().a(localkk.cad.Bo(), localkk.cad);
              this.gMB.aJU();
              ia localia4 = new ia();
              localia4.bRw.bNk = 5;
              localia4.bRw.bNl = localkk.cad.aCl();
              localia4.bRw.context = this.gMB;
              localia4.bRw.bRz = i;
              com.tencent.mm.sdk.b.a.ayH().f(localia4);
              com.tencent.mm.plugin.d.c.m localm3 = com.tencent.mm.plugin.d.c.m.dZN;
              Object[] arrayOfObject3 = new Object[i];
              arrayOfObject3[0] = Integer.valueOf(i);
              arrayOfObject3[j] = Integer.valueOf(2);
              if ((localkk.cad.aCn() == null) || (localkk.cad.aCn().length() <= 0))
                i = j;
              arrayOfObject3[2] = Integer.valueOf(i);
              localm3.d(11033, arrayOfObject3);
              return;
            }
            break;
          }
          if (localak2.aCe())
          {
            if (!be.uz().isSDCardAvailable())
              break;
            ak localak3 = localkk.cad;
            com.tencent.mm.pluginsdk.h.apj().b(this.gMB, localak3);
            return;
          }
          if (localak2.aBW())
          {
            if (this.gMB == null)
              break;
            com.tencent.mm.plugin.d.c.m.dZN.j(10221, "1");
            Intent localIntent6 = new Intent();
            localIntent6.addFlags(67108864);
            com.tencent.mm.ak.a.b(this.gMB, "shake", ".ui.ShakeReportUI", localIntent6);
            return;
          }
          if (localak2.aCh())
          {
            if (!be.uz().isSDCardAvailable())
            {
              dn.bW(this.gMB);
              return;
            }
            this.gMj.c(localkk.position, localkk.cad);
            return;
          }
          aa.e("MicroMsg.ChattingListClickListener", "uknown msg type");
          return;
        }
        label5604: locale1 = locale3;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ez
 * JD-Core Version:    0.6.2
 */
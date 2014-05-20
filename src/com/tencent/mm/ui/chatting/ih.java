package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.text.ClipboardManager;
import android.view.MenuItem;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.ai.m;
import com.tencent.mm.ai.q;
import com.tencent.mm.ai.r;
import com.tencent.mm.c.a.x;
import com.tencent.mm.c.a.y;
import com.tencent.mm.c.a.z;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.bd;
import com.tencent.mm.storage.u;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.tools.ImageGalleryUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;

final class ih
  implements cd
{
  ih(ChattingUI paramChattingUI)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    int i = 1;
    ak localak = (ak)this.gPG.gMi.getItem(paramMenuItem.getGroupId());
    if (localak == null)
      aa.e("MicroMsg.ChattingUI", "context item select failed, null msg");
    label64: String str2;
    do
    {
      do
      {
        do
        {
          return;
          es locales = this.gPG.gMi;
          int j = localak.getType();
          if (localak.rO() == i)
          {
            int k = i;
            ce localce = locales.o(j, k);
            if (localce != null)
              localce.a(paramMenuItem, this.gPG, localak);
          }
          switch (paramMenuItem.getItemId())
          {
          case 105:
          case 101:
          case 111:
          case 118:
          case 119:
          case 120:
          case 121:
          default:
            return;
          case 100:
            if (localak.aBV())
              if (localak.Bo() == ChattingUI.B(this.gPG).aIO())
                ChattingUI.B(this.gPG).dI(i);
            while (true)
            {
              bv.q(localak.Bo());
              if (ChattingUI.l(this.gPG).getUsername().equals("medianote"))
                break;
              be.uz().st().a(new bd(localak.aCl(), localak.AH()));
              return;
              int m = 0;
              break label64;
              if (localak.aBT())
                ChattingUI.b(this.gPG, localak);
            }
          case 104:
          case 115:
          case 102:
          case 103:
          case 106:
          case 107:
          case 108:
          case 113:
          case 117:
          case 110:
          case 109:
          case 112:
          case 114:
          case 116:
          case 122:
          }
        }
        while (((!localak.aCd()) && (!localak.aCe())) || (!com.tencent.mm.pluginsdk.h.apj().n(localak)));
        this.gPG.dKO.asI();
        return;
        com.tencent.mm.ui.base.h.a(this.gPG, this.gPG.getString(2131165790), "", new ii(this, paramMenuItem), null);
        return;
        aa.d("MicroMsg.ChattingUI", "groupId = " + paramMenuItem.getGroupId() + "content: " + ((ak)this.gPG.gMi.getItem(paramMenuItem.getGroupId())).getContent());
        ChattingUI.C(this.gPG).setText(this.gPG.at(((ak)this.gPG.gMi.getItem(paramMenuItem.getGroupId())).getContent(), localak.rO()));
        Toast.makeText(this.gPG, this.gPG.getString(2131167781), 0).show();
        return;
        if (localak.aBV())
        {
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(this.gPG);
            return;
          }
          this.gPG.J(localak);
          return;
        }
        if (localak.aBY())
        {
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(this.gPG);
            return;
          }
          this.gPG.K(localak);
          return;
        }
        if (localak.aCd())
        {
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(this.gPG);
            return;
          }
          this.gPG.L(localak);
          return;
        }
        if (localak.aCc())
        {
          this.gPG.M(localak);
          return;
        }
        if (localak.aCb())
        {
          this.gPG.P(localak);
          return;
        }
      }
      while (!localak.aCe());
      this.gPG.O(localak);
      return;
      String str3 = com.tencent.mm.ai.v.hi(m.DE().gZ(localak.ot()));
      if (com.tencent.mm.platformtools.au.hX(str3))
      {
        Toast.makeText(this.gPG, this.gPG.getString(2131166720), i).show();
        return;
      }
      ChattingUI localChattingUI1 = this.gPG;
      ChattingUI localChattingUI2 = this.gPG;
      Object[] arrayOfObject2 = new Object[i];
      arrayOfObject2[0] = str3;
      Toast.makeText(localChattingUI1, localChattingUI2.getString(2131166721, arrayOfObject2), i).show();
      s.d(str3, this.gPG);
      return;
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(this.gPG);
        return;
      }
      q localq = com.tencent.mm.ai.v.hh(localak.ot());
      Intent localIntent6 = new Intent(this.gPG, MsgRetransmitUI.class);
      localIntent6.putExtra("Retr_length", localq.DO());
      localIntent6.putExtra("Retr_File_Name", localak.ot());
      localIntent6.putExtra("Retr_video_isexport", localq.DQ());
      aa.d("MicroMsg.ChattingUI", "dkvideo msg.getType():" + localak.getType());
      localIntent6.putExtra("Retr_Msg_Type", i);
      this.gPG.startActivity(localIntent6);
      return;
      Intent localIntent5 = new Intent(this.gPG, MsgRetransmitUI.class);
      if (localak.aBW())
      {
        localIntent5.putExtra("Retr_Msg_content", this.gPG.at(localak.field_content, localak.rO()));
        localIntent5.putExtra("Retr_Msg_Type", 6);
      }
      while (true)
      {
        this.gPG.startActivity(localIntent5);
        return;
        localIntent5.putExtra("Retr_Msg_content", this.gPG.at(localak.field_content, localak.rO()));
        localIntent5.putExtra("Retr_Msg_Type", 4);
      }
      str2 = u.uk(localak.getContent()).yK();
      if ((str2 == null) || (str2.endsWith("-1")))
        str2 = localak.ot();
    }
    while (str2 == null);
    Intent localIntent4 = new Intent(this.gPG, MsgRetransmitUI.class);
    localIntent4.putExtra("Retr_File_Name", str2);
    localIntent4.putExtra("Retr_Msg_Id", localak.Bo());
    localIntent4.putExtra("Retr_Msg_Type", 5);
    this.gPG.startActivity(localIntent4);
    return;
    com.tencent.mm.pluginsdk.h.apj().a(this.gPG, localak);
    return;
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(this.gPG);
      return;
    }
    if (localak.field_msgId > 0L);
    for (e locale3 = ag.Ba().dG((int)localak.field_msgId); ; locale3 = null)
    {
      if (((locale3 == null) || (locale3.AG() <= 0L)) && (localak.field_msgSvrId > 0))
        locale3 = ag.Ba().dF(localak.field_msgSvrId);
      if (locale3 == null)
        break;
      boolean bool;
      if ((locale3.getOffset() >= locale3.vR()) && (locale3.vR() != 0))
      {
        Intent localIntent3 = new Intent(this.gPG, MsgRetransmitUI.class);
        localIntent3.putExtra("Retr_File_Name", ag.Ba().j(com.tencent.mm.w.f.c(locale3), "", ""));
        localIntent3.putExtra("Retr_Msg_Id", localak.field_msgId);
        localIntent3.putExtra("Retr_Msg_Type", 0);
        if (localak.rO() == i)
          if (!locale3.AM());
        while (true)
        {
          localIntent3.putExtra("Retr_Compress_Type", i);
          this.gPG.startActivity(localIntent3);
          return;
          bool = false;
          continue;
          if (!locale3.AM())
            bool = false;
          else if (!c.as(com.tencent.mm.w.f.a(locale3).AI()))
            bool = false;
        }
      }
      Intent localIntent2 = new Intent(this.gPG, ImageGalleryUI.class);
      localIntent2.putExtra("img_gallery_msg_id", localak.field_msgId);
      localIntent2.putExtra("img_gallery_msg_svr_id", localak.field_msgSvrId);
      localIntent2.putExtra("img_gallery_talker", localak.field_talker);
      localIntent2.putExtra("img_gallery_chatroom_name", localak.field_talker);
      localIntent2.putExtra("img_gallery_is_restransmit_after_download", bool);
      this.gPG.startActivity(localIntent2);
      return;
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(this.gPG);
        return;
      }
      bf localbf = new bf(localak.getContent());
      Intent localIntent1 = new Intent(this.gPG, MsgRetransmitUI.class);
      localIntent1.putExtra("Retr_File_Name", localak.ot());
      localIntent1.putExtra("Retr_length", (int)localbf.getTime());
      aa.d("MicroMsg.ChattingUI", "voice msg.getType():" + localak.getType());
      localIntent1.putExtra("Retr_Msg_Type", 7);
      this.gPG.startActivity(localIntent1);
      return;
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(this.gPG);
        return;
      }
      if (localak.field_msgId > 0L);
      for (e locale1 = ag.Ba().dG((int)localak.field_msgId); ; locale1 = null)
      {
        if (((locale1 == null) || (locale1.AG() <= 0L)) && (localak.field_msgSvrId > 0));
        for (e locale2 = ag.Ba().dF(localak.field_msgSvrId); locale2 != null; locale2 = locale1)
        {
          String str1 = ag.Ba().j(locale2.AI(), "", "");
          if ((locale2 == null) || (!c.as(str1)))
            break;
          com.tencent.mm.pluginsdk.e.a.a(this.gPG.aal(), this.gPG.getString(2131167710), str1);
          return;
          if (localak.aCc())
            kz.h(this.gPG.at(localak.field_content, localak.rO()), this.gPG.aal());
          while (true)
          {
            Object[] arrayOfObject1 = new Object[bool];
            arrayOfObject1[0] = Integer.valueOf(localak.getType());
            aa.d("MicroMsg.ChattingUI", "type is %d", arrayOfObject1);
            return;
            if (localak.aBV())
              kz.b(localak, this.gPG.aal());
            else if (localak.aBY())
              kz.c(localak, this.gPG.aal());
            else if (localak.MP())
              kz.d(localak, this.gPG.aal());
            else if (localak.aCb())
              kz.i(localak.getContent(), this.gPG.aal());
            else if (localak.aCa())
              kz.j(localak.getContent(), this.gPG.aal());
            else if ((localak.aCd()) || (localak.aCe()))
              kz.e(localak, this.gPG.aal());
          }
          x localx = new x();
          if ((com.tencent.mm.pluginsdk.model.b.a(localx, localak)) && (localx.bMm.ret == 0))
          {
            com.tencent.mm.sdk.b.a.ayH().f(localx);
            com.tencent.mm.ui.base.h.an(this.gPG.aal(), this.gPG.getString(2131167821));
            return;
          }
          com.tencent.mm.ui.base.h.c(this.gPG.aal(), localx.bMl.type, 2131167946);
          return;
          this.gPG.I(localak);
          return;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ih
 * JD-Core Version:    0.6.2
 */
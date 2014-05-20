package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.voicereminder.a.k;
import com.tencent.mm.plugin.voicereminder.a.n;
import com.tencent.mm.plugin.voicereminder.a.y;
import com.tencent.mm.pluginsdk.e.e;
import com.tencent.mm.pluginsdk.model.app.ab;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.r;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class ee extends ce
{
  private com.tencent.mm.n.m cyn;
  private ChattingUI gMB;

  public ee()
  {
    super(35);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof kx)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903196);
      paramView.setTag(new kx(this.dws).av(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    kx localkx = (kx)paramcf;
    this.gMB = paramChattingUI;
    String str1 = paramChattingUI.gMi.bNl;
    c.a(localkx.cMS, str1);
    localkx.cMS.setVisibility(0);
    localkx.cMS.setTag(new kk(str1));
    localkx.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
    localkx.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
    com.tencent.mm.j.a locala = ba.HD().bt(paramak.Bo());
    String str2 = cj.sT(paramak.getContent());
    if ((locala != null) && (str2 != null));
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str2); ; localb = null)
    {
      k localk = k.pl(str2);
      if ((localk != null) && (localk.ePe != 0));
      try
      {
        String str7 = e.e(paramChattingUI, localk.ePe);
        String str8 = "";
        if ((str7 != null) && (str7.length() > 0))
        {
          String[] arrayOfString = str7.split(";");
          str8 = str8 + arrayOfString[0].replace(" ", "");
          if (arrayOfString.length > 1)
            str8 = str8 + arrayOfString[1];
        }
        if ((localb != null) && (localb.description != null))
          str8 = str8 + " " + localb.description;
        localkx.dkR.setText(str8);
        label298: aa.d("MicroMsg.ChattingItemVoiceRemindRemind", "content remind " + paramak.getContent());
        if ((au.hX(paramak.ot())) && (localk.ePk > 0))
        {
          ak localak = be.uz().sw().ae(paramak.aCl(), localk.ePk);
          if ((localak != null) && (!au.hX(localak.ot())))
          {
            String str5 = y.gY(com.tencent.mm.model.v.th());
            String str6 = n.B(str5, false);
            if (com.tencent.mm.sdk.platformtools.m.f(n.B(localak.ot(), false), str6, false))
            {
              paramak.uN(str5);
              be.uz().sw().a(paramak.Bo(), paramak);
            }
          }
        }
        if ((au.hX(paramak.ot())) && (localk != null) && (localk.cgE != null) && (localk.cgE.length() > 0) && (localk.cgC > 0) && (this.cyn == null))
        {
          String str3 = y.gY(com.tencent.mm.model.v.th());
          String str4 = n.B(str3, false);
          if (au.hX(paramak.ot()))
          {
            paramak.uN(str3);
            be.uz().sw().a(paramak.Bo(), paramak);
            aa.d("MicroMsg.ChattingItemVoiceRemindRemind", "content.attachid " + localb.cgE);
            com.tencent.mm.pluginsdk.model.app.a locala1 = s.b(str4, paramak.Bo(), localb.sdkVer, localb.appId, localb.cgE, localb.cgC);
            aa.d("MicroMsg.ChattingItemVoiceRemindRemind", "ainfo.field_mediaSvrId " + locala1.field_mediaSvrId);
            if (locala1.field_mediaSvrId != null)
            {
              ac localac = be.uA();
              ef localef = new ef(this);
              this.cyn = localef;
              localac.a(221, localef);
              aa.d("MicroMsg.ChattingItemVoiceRemindRemind", "doscene");
              ab localab = new ab(locala1);
              be.uA().d(localab);
            }
          }
        }
        localkx.gRe.setOnClickListener(new eg(this, paramak, paramInt));
        long l = paramak.Bo();
        int i;
        if ((this.gMB.gMi.gMj.isPlaying()) && (this.gMB.gMi.gMj.aIO() == l))
        {
          i = 1;
          if (i == 0)
            break label838;
          localkx.gRe.setImageResource(2130838899);
        }
        while (true)
        {
          localkx.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
          localkx.gki.setOnClickListener(paramChattingUI.gMi.gNw);
          if (be.uz().isSDCardAvailable())
            localkx.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
          return;
          i = 0;
          break;
          label838: localkx.gRe.setImageResource(2130838903);
        }
      }
      catch (Exception localException)
      {
        break label298;
      }
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    int i = ((kk)paramView.getTag()).position;
    int j = s.qs(this.gMB.at(paramak.getContent(), paramak.rO()));
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(this.gMB.at(paramak.getContent(), paramak.rO()));
    if ((localb.cgC <= 0) || ((localb.cgC > 0) && (j >= 100)))
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
      return false;
    case 100:
      String str = cj.sT(paramak.getContent());
      com.tencent.mm.j.b localb = null;
      if (str != null)
        localb = com.tencent.mm.j.b.bR(str);
      if (localb != null)
        s.qr(localb.cgE);
      bv.q(paramak.Bo());
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
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ee
 * JD-Core Version:    0.6.2
 */
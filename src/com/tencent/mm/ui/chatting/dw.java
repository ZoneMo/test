package com.tencent.mm.ui.chatting;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
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
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;

final class dw extends ce
{
  private com.tencent.mm.n.m cyn;
  private ProgressDialog ffa;
  private ChattingUI gMB;

  public dw()
  {
    super(34);
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    if ((paramView == null) || (paramView.getTag() == null) || (!(paramView.getTag() instanceof jy)) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = new cz(paramLayoutInflater, 2130903195);
      paramView.setTag(new jy(this.dws).at(paramView));
    }
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    jy localjy = (jy)paramcf;
    this.gMB = paramChattingUI;
    com.tencent.mm.j.a locala = ba.HD().bt(paramak.Bo());
    String str1 = cj.sT(paramak.getContent());
    if ((locala != null) && (str1 != null));
    for (com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(str1); ; localb = null)
    {
      k localk = k.pl(str1);
      if ((localk != null) && (localk.ePe != 0));
      while (true)
      {
        try
        {
          String str9 = e.e(this.gMB, localk.ePe);
          if ((localb != null) && (localb.description != null))
          {
            int j = localb.description.indexOf('|');
            if ((j > 0) && (localb.description.length() > j + 1))
            {
              String str10 = localb.description.substring(j + 1);
              localjy.dkR.setText(str10);
            }
          }
          else
          {
            if ((str9 != null) && (str9.length() > 0))
            {
              String[] arrayOfString = str9.split(";");
              localjy.gQo.setText(arrayOfString[0]);
              if (arrayOfString.length > 1)
                localjy.gQp.setText(arrayOfString[1]);
            }
            bool = au.eR(localk.ePe);
            if (!bool)
              continue;
            localjy.gQs.setVisibility(0);
            localjy.dkR.setTextColor(this.gMB.getResources().getColor(2131493091));
            localjy.gQp.setTextColor(this.gMB.getResources().getColor(2131493091));
            localjy.gQo.setTextColor(this.gMB.getResources().getColor(2131493091));
            localjy.gQq.setOnClickListener(new dx(this, paramak, paramInt));
            long l = paramak.Bo();
            if ((!this.gMB.gMi.gMj.isPlaying()) || (this.gMB.gMi.gMj.aIO() != l))
              continue;
            i = 1;
            if (i == 0)
              continue;
            localjy.gQq.setBackgroundResource(2130839624);
            if ((localk != null) && (!au.hX(localk.ePg)) && (localk.ePh > 0) && (au.hX(paramak.aCo())))
            {
              String str6 = y.gY(com.tencent.mm.model.v.th());
              String str7 = n.B(str6, false);
              paramak.uO(str6);
              be.uz().sw().a(paramak.Bo(), paramak);
              String str8 = s.a(str7, paramak.Bo(), localb.sdkVer, localb.appId, localk.ePg, localk.ePh);
              if (str8 != null)
              {
                ac localac2 = be.uA();
                dy localdy = new dy(this, paramak, str8, paramInt);
                this.cyn = localdy;
                localac2.a(221, localdy);
                ab localab2 = new ab(str8);
                localab2.apY();
                be.uA().d(localab2);
              }
            }
            if ((au.hX(paramak.ot())) && (localk.ePk > 0))
            {
              ak localak = be.uz().sw().ae(paramak.aCl(), localk.ePk);
              if ((localak != null) && (!au.hX(localak.ot())))
              {
                String str4 = y.gY(com.tencent.mm.model.v.th());
                String str5 = n.B(str4, false);
                if (com.tencent.mm.sdk.platformtools.m.f(n.B(localak.ot(), false), str5, false))
                {
                  paramak.uN(str4);
                  be.uz().sw().a(paramak.Bo(), paramak);
                }
              }
            }
            if ((au.hX(paramak.ot())) && (localk != null) && (!au.hX(localk.cgE)) && (localk.cgC > 0) && (this.cyn == null))
            {
              String str2 = y.gY(com.tencent.mm.model.v.th());
              String str3 = n.B(str2, false);
              paramak.uN(str2);
              be.uz().sw().a(paramak.Bo(), paramak);
              com.tencent.mm.pluginsdk.model.app.a locala1 = s.b(str3, paramak.Bo(), localb.sdkVer, localb.appId, localb.cgE, localb.cgC);
              aa.d("MicroMsg.ChattingItemVoiceRemindConfirm", "mediaId  " + locala1.field_mediaSvrId);
              if (locala1.field_mediaSvrId != null)
              {
                ac localac1 = be.uA();
                dz localdz = new dz(this, locala1);
                this.cyn = localdz;
                localac1.a(221, localdz);
                ab localab1 = new ab(locala1);
                be.uA().d(localab1);
              }
            }
            localjy.gQr.setOnClickListener(new ea(this, paramak, localk));
            localjy.gki.setTag(new kk(paramak, this.gMB.gJU, paramInt, null, 0, '\000'));
            localjy.gki.setOnClickListener(this.gMB.gMi.gNw);
            if (be.uz().isSDCardAvailable())
              localjy.gki.setOnLongClickListener(this.gMB.gMi.gNy);
            return;
          }
          localjy.dkR.setText("");
          continue;
        }
        catch (Exception localException)
        {
          continue;
          localjy.gQs.setVisibility(8);
          localjy.dkR.setTextColor(this.gMB.getResources().getColor(2131493090));
          localjy.gQp.setTextColor(this.gMB.getResources().getColor(2131493090));
          localjy.gQo.setTextColor(this.gMB.getResources().getColor(2131493090));
          continue;
          int i = 0;
          continue;
          localjy.gQq.setBackgroundResource(2130839625);
          continue;
        }
        boolean bool = false;
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
 * Qualified Name:     com.tencent.mm.ui.chatting.dw
 * JD-Core Version:    0.6.2
 */
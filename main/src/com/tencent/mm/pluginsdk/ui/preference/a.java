package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.ah.d;
import com.tencent.mm.ah.e;
import com.tencent.mm.ah.f;
import com.tencent.mm.ah.h;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ao;
import com.tencent.mm.ui.base.ch;

public final class a extends LinearLayout
  implements m
{
  private static g frq;
  private ch cHU;
  private Context context;
  private TextView ezT;
  private Button frr;

  public a(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    View localView = View.inflate(this.context, com.tencent.mm.k.aUq, this);
    this.ezT = ((TextView)localView.findViewById(com.tencent.mm.i.atG));
    this.frr = ((Button)localView.findViewById(com.tencent.mm.i.atH));
    this.frr.setOnClickListener(new b(this));
  }

  public static void a(g paramg)
  {
    frq = paramg;
  }

  private static int qQ(String paramString)
  {
    if (paramString == null)
    {
      aa.d("MicroMsg.FMessageItemView", "getOpCodeFromVerify fail, xml is null");
      return 6;
    }
    ao localao = ao.uU(paramString);
    if (localao == null)
    {
      aa.e("MicroMsg.FMessageItemView", "getOpCodeFromVerify fail, verify is null");
      return 6;
    }
    switch (localao.aCN())
    {
    case 2:
    case 5:
    case 3:
    case 4:
    default:
      return 6;
    case 6:
    }
    return 5;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 30)
      return;
    aa.d("MicroMsg.FMessageItemView", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
    if (this.cHU != null)
      this.cHU.dismiss();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      int i = ((com.tencent.mm.pluginsdk.model.j)paramx).apI();
      String str2 = ((com.tencent.mm.pluginsdk.model.j)paramx).apJ();
      aa.d("MicroMsg.FMessageItemView", "onSceneEnd, pre insert fmsg, opcode = " + i + ", verifyContent = " + str2);
      aa.d("MicroMsg.FMessageItemView", "onSceneEnd, type = " + frq.type);
      e locale;
      switch (frq.type)
      {
      default:
        locale = new e();
        locale.field_createTime = d.b(frq.bNl, 0L);
        locale.field_isSend = 1;
        locale.field_msgContent = str2;
        locale.field_talker = frq.bNl;
        if (i != 5)
          break;
      case 1:
      case 2:
      }
      for (int j = 2; ; j = 3)
      {
        locale.field_type = j;
        boolean bool2 = com.tencent.mm.ah.k.Dx().a(locale);
        aa.d("MicroMsg.FMessageItemView", "onSceneEnd, insert fmsg, ret = " + bool2);
        while (true)
        {
          be.uA().b(30, this);
          return;
          com.tencent.mm.ah.g localg = new com.tencent.mm.ah.g();
          localg.field_createtime = h.gN(frq.bNl);
          localg.field_isSend = 1;
          localg.field_content = str2;
          localg.field_talker = "fmessage";
          localg.field_sayhiuser = frq.bNl;
          localg.field_svrid = System.currentTimeMillis();
          localg.field_status = 4;
          com.tencent.mm.ah.k.Dz().a(localg);
          continue;
          com.tencent.mm.ah.i locali = new com.tencent.mm.ah.i();
          locali.field_createtime = com.tencent.mm.ah.j.gN(frq.bNl);
          locali.field_isSend = 1;
          locali.field_content = str2;
          locali.field_talker = "fmessage";
          locali.field_sayhiuser = frq.bNl;
          locali.field_svrid = System.currentTimeMillis();
          locali.field_status = 4;
          boolean bool1 = com.tencent.mm.ah.k.DA().a(locali);
          aa.d("MicroMsg.FMessageItemView", "onSceneEnd, insert shake, ret = " + bool1);
        }
      }
    }
    String str1;
    if ((paramInt1 == 4) && (paramInt2 == -34))
      str1 = this.context.getString(n.bmv);
    while (true)
    {
      Toast.makeText(this.context, str1, 1).show();
      break;
      if ((paramInt1 == 4) && (paramInt2 == -94))
        str1 = this.context.getString(n.bmw);
      else
        str1 = this.context.getString(n.bxY);
    }
  }

  public final void detach()
  {
    be.uA().b(30, this);
    if ((this.cHU != null) && (this.cHU.isShowing()))
      this.cHU.dismiss();
  }

  public final void kG(int paramInt)
  {
    if (this.frr != null)
      this.frr.setVisibility(paramInt);
  }

  public final void qR(String paramString)
  {
    this.ezT.setText(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.a
 * JD-Core Version:    0.6.2
 */
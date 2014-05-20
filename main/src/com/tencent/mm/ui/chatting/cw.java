package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.j.c;
import com.tencent.mm.j.d;
import com.tencent.mm.model.be;
import com.tencent.mm.p.p;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.platformtools.v;
import com.tencent.mm.pluginsdk.e.e;
import com.tencent.mm.pluginsdk.model.m;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.tools.CustomFitTextView;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class cw extends ce
{
  private LayoutInflater dLe;
  private int dYw = 0;
  private int dYx = 0;
  private ChattingUI gMB;
  private boolean gMI = false;

  public cw()
  {
    super(26);
  }

  private static String a(ak paramak, Context paramContext)
  {
    if (paramContext == null)
    {
      com.tencent.mm.sdk.platformtools.aa.w("ChattingItemBizFrom", "getReaderAppMsgContent: context is null");
      return null;
    }
    if (paramak == null)
    {
      com.tencent.mm.sdk.platformtools.aa.w("ChattingItemBizFrom", "getReaderAppMsgContent: msg is null");
      return null;
    }
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramContext);
      return null;
    }
    try
    {
      c localc = com.tencent.mm.j.b.bU(paramak.getContent());
      LinkedList localLinkedList = localc.che;
      if ((localLinkedList != null) && (localLinkedList.size() > 0))
      {
        d locald = (d)localLinkedList.get(0);
        com.tencent.mm.j.b localb = new com.tencent.mm.j.b();
        localb.title = locald.title;
        localb.description = locald.chj;
        localb.caw = "view";
        localb.type = 5;
        localb.url = locald.url;
        localb.bQs = localc.bQs;
        localb.bQt = localc.bQt;
        localb.bXF = localc.bXF;
        String str = com.tencent.mm.j.b.b(localb);
        return str;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getLocalizedMessage();
      com.tencent.mm.sdk.platformtools.aa.b("ChattingItemBizFrom", "retransmit app msg error : %s", arrayOfObject);
    }
    return null;
  }

  public final View a(LayoutInflater paramLayoutInflater, View paramView)
  {
    this.dLe = paramLayoutInflater;
    if ((paramView == null) || (paramView.getTag() == null) || (((cf)paramView.getTag()).type != this.dws))
    {
      paramView = paramLayoutInflater.inflate(2130903155, null);
      aa localaa = new aa(this.dws);
      localaa.dkq = ((TextView)paramView.findViewById(2131361841));
      localaa.dUe = ((LinearLayout)paramView.findViewById(2131362253));
      localaa.gKP.dYA = paramView.findViewById(2131362254);
      localaa.gKP.dYB = ((TextView)localaa.gKP.dYA.findViewById(2131361861));
      localaa.gKP.dLo = ((TextView)localaa.gKP.dYA.findViewById(2131362255));
      localaa.gKP.dYD = ((ImageView)localaa.gKP.dYA.findViewById(2131362257));
      localaa.gKP.gKQ = localaa.gKP.dYA.findViewById(2131362256);
      localaa.gKP.dYK = ((ViewGroup)localaa.gKP.dYA.findViewById(2131362258));
      localaa.gKP.dYK.setBackgroundColor(2130706432);
      localaa.gKP.dYM = ((CustomFitTextView)localaa.gKP.dYA.findViewById(2131362259));
      localaa.gKP.dYY = ((TextView)localaa.gKP.dYA.findViewById(2131362262));
      localaa.gKP.gKR = ((TextView)localaa.dUe.findViewById(2131362263));
      localaa.gKP.dYF = ((ProgressBar)paramView.findViewById(2131362260));
      localaa.gKP.dYG = paramView.findViewById(2131362261);
      localaa.gKg = ((TextView)paramView.findViewById(2131362265));
      localaa.gKo = ((ChattingItemFooter)paramView.findViewById(2131362264));
      paramView.setTag(localaa);
    }
    this.dYw = paramLayoutInflater.getContext().getResources().getDimensionPixelSize(2131558428);
    this.dYx = paramLayoutInflater.getContext().getResources().getDimensionPixelSize(2131558431);
    return paramView;
  }

  public final void a(cf paramcf, int paramInt, ChattingUI paramChattingUI, ak paramak)
  {
    this.gMB = paramChattingUI;
    aa localaa = (aa)paramcf;
    Iterator localIterator = localaa.dYO.iterator();
    while (localIterator.hasNext())
    {
      z localz2 = (z)localIterator.next();
      localaa.dUe.removeView(localz2.dYA);
    }
    localaa.dYO.clear();
    c localc = com.tencent.mm.j.b.bU(paramak.getContent());
    String str1 = localc.bXF;
    if ((str1 == null) || (str1.length() == 0))
      localaa.gKg.setVisibility(8);
    LinkedList localLinkedList;
    int i;
    while (true)
    {
      localLinkedList = localc.che;
      i = localLinkedList.size();
      if (i != 0)
        break;
      localaa.dUe.setVisibility(8);
      localaa.gKP.dYA.setVisibility(8);
      return;
      localaa.gKg.setVisibility(0);
      b(paramChattingUI, localaa.gKg, kk.wG(str1));
    }
    localaa.dUe.setVisibility(0);
    localaa.gKP.dYA.setVisibility(0);
    boolean bool = localaa.gKo.a(localc.cgS, paramak.aCl(), true);
    for (int j = 2 + localaa.dYO.size(); j < i; j++)
      localaa.ap(this.dLe.inflate(2130903156, null));
    if (i > 1)
    {
      if (bool)
        localaa.ap(this.dLe.inflate(2130903156, null));
      while (true)
      {
        localaa.gKP.dYA.setBackgroundResource(2130839161);
        localaa.gKP.dYA.setPadding(this.dYw, this.dYw, this.dYw, this.dYw);
        this.gMI = true;
        for (int k = 0; k < localaa.dYO.size(); k++)
          ((z)localaa.dYO.get(k)).dYA.setVisibility(8);
        localaa.ap(this.dLe.inflate(2130903157, null));
      }
    }
    if (bool)
    {
      localaa.gKP.dYA.setBackgroundResource(2130839161);
      localaa.gKP.dYA.setPadding(this.dYw, this.dYw, this.dYw, this.dYw);
    }
    while (true)
    {
      this.gMI = false;
      break;
      localaa.gKP.dYA.setBackgroundResource(2130839163);
      localaa.gKP.dYA.setPadding(this.dYx, this.dYx, this.dYx, 0);
    }
    int m = 0;
    label507: d locald;
    int n;
    label553: int i1;
    label580: int i2;
    label607: int i3;
    label634: int i4;
    label660: label767: String str3;
    if (m < i)
    {
      locald = (d)localLinkedList.get(m);
      if (m != 0)
        break label1171;
      TextView localTextView1 = localaa.gKP.dYY;
      if (i <= 1)
        break label996;
      n = 8;
      localTextView1.setVisibility(n);
      TextView localTextView2 = localaa.gKP.gKR;
      if (i <= 1)
        break label1002;
      i1 = 8;
      localTextView2.setVisibility(i1);
      TextView localTextView3 = localaa.gKP.dYB;
      if (i <= 1)
        break label1025;
      i2 = 8;
      localTextView3.setVisibility(i2);
      TextView localTextView4 = localaa.gKP.dLo;
      if (i <= 1)
        break label1031;
      i3 = 8;
      localTextView4.setVisibility(i3);
      ViewGroup localViewGroup = localaa.gKP.dYK;
      if (i <= 1)
        break label1037;
      i4 = 0;
      localViewGroup.setVisibility(i4);
      localaa.gKP.dYF.setVisibility(8);
      localaa.gKP.dYG.setVisibility(8);
      if (au.hX(locald.chh))
        break label1044;
      localaa.gKP.gKQ.setVisibility(0);
      localaa.gKP.dYD.setVisibility(0);
      Bitmap localBitmap2 = v.a(new m(locald.chh, paramak.getType(), "@T", false));
      localaa.gKP.dYD.setImageBitmap(localBitmap2);
      localaa.gKP.dYY.setText(locald.chj);
      localaa.gKP.dYB.setText(locald.title);
      localaa.gKP.dLo.setText(e.f(paramChattingUI.getString(2131168210), locald.time));
      localaa.gKP.dYM.d(locald.title, false, -1);
      str3 = paramChattingUI.wE(locald.url);
      if (TextUtils.isEmpty(str3))
        break label1125;
      com.tencent.mm.sdk.platformtools.aa.e("ChattingItemBizFrom", "productId:%s", new Object[] { str3 });
    }
    label996: label1125: for (kk localkk2 = new kk(paramak, false, paramInt, locald.url, 8, this.gMI, paramChattingUI.aJN(), localc.bQs, localc.bQt, locald.title, str3, null); ; localkk2 = new kk(paramak, false, paramInt, locald.url, 6, this.gMI, paramChattingUI.aJN(), localc.bQs, localc.bQt, locald.title))
    {
      localkk2.gQO = paramak.AH();
      localkk2.gQP = 0;
      localaa.gKP.dYA.setTag(localkk2);
      localaa.gKP.dYA.setOnClickListener(paramChattingUI.gMi.gNw);
      localaa.gKP.dYA.setOnLongClickListener(paramChattingUI.gMi.gNy);
      m++;
      break label507;
      break;
      n = 0;
      break label553;
      label1002: if (au.hX(locald.url))
      {
        i1 = 4;
        break label580;
      }
      i1 = 0;
      break label580;
      i2 = 0;
      break label607;
      i3 = 0;
      break label634;
      i4 = 8;
      break label660;
      localaa.gKP.gKQ.setVisibility(8);
      localaa.gKP.dYD.setVisibility(8);
      localaa.gKP.dLo.setVisibility(8);
      localaa.gKP.dYK.setVisibility(8);
      localaa.gKP.dYB.setVisibility(0);
      localaa.gKP.dYB.setTextSize(20.0F);
      break label767;
    }
    label1025: label1031: label1037: label1044: z localz1 = (z)localaa.dYO.get(m - 1);
    label1171: localz1.dYB.setText(locald.title);
    localz1.dYF.setVisibility(8);
    localz1.dYG.setVisibility(8);
    label1279: String str2;
    if (!au.hX(locald.chh))
    {
      Bitmap localBitmap1 = v.a(new m(locald.chh, paramak.getType(), "@S", false));
      localz1.dYD.setImageBitmap(localBitmap1);
      localz1.dYD.setVisibility(0);
      if ((!au.hX(locald.chj)) && (locald.type == 3))
      {
        localz1.gKO.setText(locald.chj);
        localz1.gKO.setVisibility(0);
      }
      localz1.dYA.setVisibility(0);
      str2 = paramChattingUI.wE(locald.url);
      if (TextUtils.isEmpty(str2))
        break label1485;
      com.tencent.mm.sdk.platformtools.aa.e("ChattingItemBizFrom", "productId:%s", new Object[] { str2 });
    }
    label1485: for (kk localkk1 = new kk(paramak, false, paramInt, locald.url, 8, this.gMI, paramChattingUI.aJN(), localc.bQs, localc.bQt, locald.title, str2, null); ; localkk1 = new kk(paramak, false, paramInt, locald.url, 6, this.gMI, paramChattingUI.aJN(), localc.bQs, localc.bQt))
    {
      localkk1.gQO = paramak.AH();
      localkk1.gQP = m;
      localz1.dYA.setTag(localkk1);
      localz1.dYA.setOnClickListener(paramChattingUI.gMi.gNw);
      localz1.dYA.setOnLongClickListener(paramChattingUI.gMi.gNy);
      break;
      localz1.dYC.setVisibility(8);
      break label1279;
    }
  }

  public final boolean a(ContextMenu paramContextMenu, View paramView, ak paramak)
  {
    kk localkk = (kk)paramView.getTag();
    if (localkk == null)
      return false;
    int i = localkk.position;
    if (!localkk.gQK)
    {
      paramContextMenu.add(i, 111, 0, paramView.getContext().getString(2131167063));
      if ((p.xU()) && (!this.gMB.aJJ()))
        paramContextMenu.add(i, 114, 0, paramView.getContext().getString(2131165798));
      if (a.qc("favorite"))
        paramContextMenu.add(i, 116, 0, paramView.getContext().getString(2131167820));
    }
    if (!this.gMB.aJJ())
      paramContextMenu.add(i, 100, 0, paramView.getContext().getString(2131165658));
    return true;
  }

  public final boolean a(MenuItem paramMenuItem, ChattingUI paramChattingUI, ak paramak)
  {
    switch (paramMenuItem.getItemId())
    {
    case 112:
    case 113:
    default:
    case 111:
    case 114:
    }
    while (true)
    {
      return false;
      String str2 = a(paramak, paramChattingUI.aal());
      if (!au.hX(str2))
      {
        Intent localIntent = new Intent(paramChattingUI, MsgRetransmitUI.class);
        localIntent.putExtra("Retr_Msg_content", str2);
        localIntent.putExtra("Retr_Msg_Type", 2);
        localIntent.putExtra("Retr_Msg_Id", paramak.field_msgId);
        paramChattingUI.startActivity(localIntent);
        continue;
        String str1 = a(paramak, paramChattingUI.aal());
        if (!au.hX(str1))
          kz.c(paramak, str1, paramChattingUI.aal());
      }
    }
  }

  public final boolean a(View paramView, ChattingUI paramChattingUI, ak paramak)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cw
 * JD-Core Version:    0.6.2
 */
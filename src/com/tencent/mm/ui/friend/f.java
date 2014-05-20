package com.tencent.mm.ui.friend;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.mm.c.a.bo;
import com.tencent.mm.c.a.bq;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ao;
import com.tencent.mm.ui.base.MaskLayout;
import java.util.List;

public final class f extends RelativeLayout
{
  private Context context = null;
  private boolean dBt = true;
  private View fng = null;
  private View haL = null;
  private final ay haM = new ay(new g(this), true);
  private com.tencent.mm.sdk.e.al haN = new h(this);

  public f(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    com.tencent.mm.ah.k.Dy().e(this.haN);
    aLN();
    init();
  }

  private static void aLN()
  {
    int i = com.tencent.mm.ah.k.Dy().Dp();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    aa.f("MicroMsg.FMessageContactView", "updateAddressTabUnread, newCount update to = %d", arrayOfObject);
    if (i > 0)
      be.uz().sr().set(143618, Integer.valueOf(i));
  }

  private void init()
  {
    List localList = com.tencent.mm.ah.k.Dy().Dn();
    int i = localList.size();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    aa.e("MicroMsg.FMessageContactView", "init new fconv size = %d (max is 4)", arrayOfObject1);
    removeAllViews();
    View localView;
    if (i <= 0)
    {
      this.fng = View.inflate(this.context, 2130903310, this);
      this.haL = this.fng.findViewById(2131362681);
      this.haL.setOnClickListener(new j(this));
      MaskLayout localMaskLayout5 = (MaskLayout)this.fng.findViewById(2131362682);
      af.vJ();
      Bitmap localBitmap = m.eh("fmessage");
      ((ImageView)localMaskLayout5.getContentView()).setImageBitmap(localBitmap);
      localView = this.fng.findViewById(2131362680);
      if (localView != null)
        if (!this.dBt)
          break label1087;
    }
    int k;
    TextView localTextView1;
    label791: label1087: for (int m = 0; ; m = 8)
    {
      localView.setVisibility(m);
      this.haL.setOnTouchListener(new i(this));
      k = com.tencent.mm.ah.k.Dy().Dp();
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(k);
      aa.e("MicroMsg.FMessageContactView", "init totalNewSize = %d", arrayOfObject3);
      localTextView1 = (TextView)this.fng.findViewById(2131362683);
      if (k > 0)
        break label1094;
      localTextView1.setVisibility(8);
      return;
      if (i == 1)
      {
        com.tencent.mm.ah.a locala5 = (com.tencent.mm.ah.a)localList.get(0);
        this.fng = View.inflate(this.context, 2130903312, this);
        ((TextView)this.fng.findViewById(2131362687)).setText(com.tencent.mm.ao.b.e(this.context, locala5.field_displayName, -1));
        TextView localTextView2 = (TextView)this.fng.findViewById(2131362688);
        com.tencent.mm.ah.e locale = com.tencent.mm.ah.k.Dx().gH(locala5.field_talker);
        Context localContext = this.context;
        int n = locale.field_type;
        int i1 = locala5.field_addScene;
        String str = locale.field_msgContent;
        int i2 = locale.field_isSend;
        Object[] arrayOfObject4 = new Object[4];
        arrayOfObject4[0] = Integer.valueOf(n);
        arrayOfObject4[1] = Integer.valueOf(i1);
        arrayOfObject4[2] = str;
        arrayOfObject4[3] = Integer.valueOf(i2);
        aa.e("MicroMsg.FMessageProvider", "getDigest, fmsgType = %d, fmsgScene = %d, fmsgContent = %s, isSend = %d", arrayOfObject4);
        if (n == 0)
          if (str == null)
          {
            aa.e("MicroMsg.FMessageProvider", "getDigest fail, fmsgContent is null");
            str = null;
            if (!au.hX(str))
              break label791;
            localTextView2.setVisibility(8);
          }
        while (true)
        {
          this.haL = this.fng.findViewById(2131362680);
          this.haL.setOnClickListener(new k(this));
          c.a((ImageView)((MaskLayout)this.fng.findViewById(2131362682)).getContentView(), locala5.field_talker);
          break;
          com.tencent.mm.storage.al localal = com.tencent.mm.storage.al.uQ(str);
          switch (localal.Gf())
          {
          default:
            str = localContext.getString(n.bgO);
            break;
          case 4:
            str = localContext.getString(n.bgL);
            break;
          case 10:
          case 11:
            bo localbo = new bo();
            localbo.bNr.bNo = localal.aCw();
            localbo.bNr.bNp = localal.aCz();
            com.tencent.mm.sdk.b.a.ayH().f(localbo);
            int i3 = n.bgN;
            Object[] arrayOfObject5 = new Object[1];
            arrayOfObject5[0] = cj.R(localbo.bNs.bNt, "");
            str = localContext.getString(i3, arrayOfObject5);
            break;
          case 31:
            str = localContext.getString(n.bgQ);
            break;
          case 32:
            str = localContext.getString(n.bgP);
            break;
          case 58:
          case 59:
          case 60:
            str = localContext.getString(n.bgM);
            break;
            if (i2 == 1)
              break;
            ao localao = ao.uU(str);
            if ((localao.getContent() != null) && (!localao.getContent().trim().equals("")))
            {
              str = localao.getContent();
              break;
            }
            str = localContext.getString(n.bmt);
            break;
            localTextView2.setText(str);
          }
        }
      }
      this.fng = View.inflate(this.context, 2130903311, this);
      int j = localList.size();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      aa.e("MicroMsg.FMessageContactView", "initMultiNew, newList size = %d", arrayOfObject2);
      com.tencent.mm.ah.a locala1 = (com.tencent.mm.ah.a)localList.get(0);
      MaskLayout localMaskLayout1 = (MaskLayout)this.fng.findViewById(2131362682);
      c.a((ImageView)localMaskLayout1.getContentView(), locala1.field_talker);
      localMaskLayout1.setVisibility(0);
      com.tencent.mm.ah.a locala2 = (com.tencent.mm.ah.a)localList.get(1);
      MaskLayout localMaskLayout2 = (MaskLayout)this.fng.findViewById(2131362684);
      c.a((ImageView)localMaskLayout2.getContentView(), locala2.field_talker);
      localMaskLayout2.setVisibility(0);
      if (j > 2)
      {
        com.tencent.mm.ah.a locala4 = (com.tencent.mm.ah.a)localList.get(2);
        MaskLayout localMaskLayout4 = (MaskLayout)this.fng.findViewById(2131362685);
        c.a((ImageView)localMaskLayout4.getContentView(), locala4.field_talker);
        localMaskLayout4.setVisibility(0);
      }
      if (j > 3)
      {
        com.tencent.mm.ah.a locala3 = (com.tencent.mm.ah.a)localList.get(3);
        MaskLayout localMaskLayout3 = (MaskLayout)this.fng.findViewById(2131362686);
        c.a((ImageView)localMaskLayout3.getContentView(), locala3.field_talker);
        localMaskLayout3.setVisibility(0);
      }
      this.haL = this.fng.findViewById(2131362680);
      this.haL.setOnClickListener(new l(this));
      break;
    }
    label1094: localTextView1.setVisibility(0);
    if (k > 99)
    {
      localTextView1.setText(getContext().getString(2131167869));
      return;
    }
    localTextView1.setText(String.valueOf(k));
  }

  public final void detach()
  {
    if (be.se())
      com.tencent.mm.ah.k.Dy().f(this.haN);
  }

  public final void setVisible(boolean paramBoolean)
  {
    aa.d("MicroMsg.FMessageContactView", "setVisible visible = " + paramBoolean);
    View localView = this.fng.findViewById(2131362680);
    if (localView != null)
      if (!paramBoolean)
        break label53;
    label53: for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      this.dBt = paramBoolean;
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.f
 * JD-Core Version:    0.6.2
 */
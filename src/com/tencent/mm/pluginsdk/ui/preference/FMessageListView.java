package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.ah.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;

public class FMessageListView extends LinearLayout
{
  private Context context;
  private al frA = new j(this);
  private final LinearLayout.LayoutParams frB = new LinearLayout.LayoutParams(-1, -2);
  private m frC;
  private a frD;
  private g frq;
  private com.tencent.mm.pluginsdk.c.a fry = new h(this);
  private al frz = new i(this);

  public FMessageListView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public FMessageListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public FMessageListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    com.tencent.mm.ah.k.Dx().e(this.frz);
    com.tencent.mm.pluginsdk.c.a.a("LBSVerifyStorageNotify", this.fry);
    com.tencent.mm.ah.k.DA().e(this.frA);
  }

  public final void a(g paramg)
  {
    this.frq = paramg;
    a.a(paramg);
  }

  public final void a(n paramn)
  {
    int i = 0;
    if (paramn == null)
    {
      aa.e("MicroMsg.FMessageListView", "addItem fail, provider is null");
      return;
    }
    if (paramn.id <= 0L)
    {
      aa.e("MicroMsg.FMessageListView", "addItem fail, systemRowId invalid = " + paramn.id);
      return;
    }
    int j = getChildCount();
    for (int k = 0; k < j; k++)
    {
      View localView = getChildAt(k);
      if (((localView instanceof a)) && (localView.getTag() != null) && (localView.getTag().equals(Long.valueOf(paramn.id))))
      {
        aa.w("MicroMsg.FMessageListView", "addItem, item repeated, sysRowId = " + paramn.id);
        return;
      }
    }
    aa.d("MicroMsg.FMessageListView", "addItem, current child count = " + getChildCount());
    if (getChildCount() == 5)
    {
      aa.i("MicroMsg.FMessageListView", "addItem, most 3 FMessageItemView, remove earliest");
      removeViewAt(0);
    }
    if (getChildCount() == 0)
    {
      aa.d("MicroMsg.FMessageListView", "addItem, current child count is 0, add two child view");
      this.frC = new m(this.context);
      addView(this.frC);
      this.frD = new a(this.context);
      this.frD.qR("");
      this.frD.kG(0);
      addView(this.frD, this.frB);
      com.tencent.mm.storage.i locali2 = be.uz().su().tO(paramn.username);
      if ((locali2 != null) && (locali2.rb()))
        break label452;
      aa.d("MicroMsg.FMessageListView", "addItem, reply btn visible, talker = " + paramn.username);
      this.frC.setVisibility(0);
      this.frD.setVisibility(0);
    }
    String str2;
    while (paramn.cpI)
    {
      Context localContext = this.context;
      int m = com.tencent.mm.n.bmu;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramn.chj;
      str2 = localContext.getString(m, arrayOfObject);
      a locala = new a(this.context);
      locala.setTag(Long.valueOf(paramn.id));
      locala.qR(str2);
      locala.kG(8);
      if (i != 0)
        locala.setOnLongClickListener(new k(this, paramn));
      addView(locala, -2 + getChildCount(), this.frB);
      return;
      label452: aa.d("MicroMsg.FMessageListView", "addItem, reply btn gone, talker = " + paramn.username);
      this.frC.setVisibility(8);
      this.frD.setVisibility(8);
    }
    if ((paramn.crH != null) && (paramn.crH.length() > 0));
    com.tencent.mm.storage.i locali1;
    for (String str1 = paramn.crH; ; str1 = locali1.rr())
      do
      {
        str2 = str1 + ": " + paramn.chj;
        i = 1;
        break;
        str1 = paramn.username;
        locali1 = be.uz().su().tO(paramn.username);
      }
      while ((locali1 == null) || (locali1.rj() <= 0));
  }

  public final void cG(boolean paramBoolean)
  {
    int i = getChildCount();
    aa.d("MicroMsg.FMessageListView", "setReplyBtnVisible, visible = " + paramBoolean + ", current child count = " + i);
    if (i <= 2)
      aa.e("MicroMsg.FMessageListView", "setReplyBtnVisible fail, childCount invalid = " + i);
    int k;
    do
    {
      return;
      if (this.frC != null)
      {
        m localm = this.frC;
        if (!paramBoolean)
          break;
        k = 0;
        localm.setVisibility(k);
      }
    }
    while (this.frD == null);
    a locala = this.frD;
    int j = 0;
    if (paramBoolean);
    while (true)
    {
      locala.setVisibility(j);
      return;
      k = 8;
      break;
      j = 8;
    }
  }

  public final void detach()
  {
    com.tencent.mm.ah.k.Dx().f(this.frz);
    com.tencent.mm.pluginsdk.c.a.b("LBSVerifyStorageNotify", this.fry);
    com.tencent.mm.ah.k.DA().f(this.frA);
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((localView instanceof a))
        ((a)localView).detach();
    }
    this.frC = null;
    this.frD = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.FMessageListView
 * JD-Core Version:    0.6.2
 */
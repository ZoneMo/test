package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import com.tencent.mm.an.a;
import com.tencent.mm.g;
import com.tencent.mm.k;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.y;
import com.tencent.mm.ui.base.ce;

public final class bd
{
  private View dey;
  private View fep;
  private EmojiView fkl;
  private bi fqk;
  private y frc;
  private ce frd;
  private View fre;
  private View frf;
  private View frg;
  private aw frh;
  private String fri;
  private Context mContext;

  public bd(Context paramContext, View paramView1, View paramView2, View paramView3)
  {
    this.mContext = paramContext;
    this.dey = paramView1;
    this.fre = paramView2;
    this.frf = paramView3;
    this.fep = View.inflate(this.mContext, k.aTa, null);
    this.fkl = ((EmojiView)this.fep.findViewById(com.tencent.mm.i.aMy));
    int i = a.l(this.mContext, g.abt);
    this.frd = new ce(this.fep, i, i, (byte)0);
    this.frd.setBackgroundDrawable(new ColorDrawable(0));
    this.frd.setOutsideTouchable(true);
    this.frd.setFocusable(false);
    this.fep.setOnClickListener(new be(this));
  }

  private void atf()
  {
    if (this.frg != null)
    {
      int[] arrayOfInt = new int[2];
      this.frg.getLocationOnScreen(arrayOfInt);
      int i = arrayOfInt[0] - (this.frd.getWidth() - this.frg.getWidth()) / 2;
      int j = arrayOfInt[1] - this.frd.getHeight();
      this.frd.showAtLocation(this.frg, 0, i, j);
    }
  }

  public final void a(bi parambi)
  {
    this.fqk = parambi;
  }

  public final void ab(View paramView)
  {
    this.frg = paramView;
  }

  public final boolean ay(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      this.fri = paramString;
      String str = h.apj().ji(paramString);
      this.frc = h.apj().ja(str);
    }
    return this.frc != null;
  }

  public final void c(aw paramaw)
  {
    this.frh = paramaw;
  }

  public final void hide()
  {
    if (this.frd == null)
      return;
    this.frd.dismiss();
  }

  public final void qP(String paramString)
  {
    new bh(this, paramString, new bg(this, this.mContext.getMainLooper())).start();
  }

  public final void show()
  {
    if ((this.frc == null) || (this.fkl == null) || (this.frd == null) || (this.dey == null) || (this.fre == null))
    {
      aa.w("MicroMsg.SuggestEmoticonBubble", "some thing is null.");
      return;
    }
    this.fkl.j(this.frc);
    atf();
    new ay(new bf(this), false).bO(3000L);
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(0);
    arrayOfObject[1] = this.fri;
    localm.d(10994, arrayOfObject);
  }

  public final void update()
  {
    if (this.frd.isShowing())
    {
      this.frd.dismiss();
      atf();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.bd
 * JD-Core Version:    0.6.2
 */
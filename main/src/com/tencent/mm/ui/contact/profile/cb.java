package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.Button;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.av;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.n;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.bb;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.contact.ContactRemarkInfoModUI;
import com.tencent.mm.ui.contact.ModRemarkNameUI;

abstract class cb
  implements m
{
  private boolean cQb = false;

  public cb(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
  }

  private void wY(String paramString)
  {
    if (com.tencent.mm.platformtools.au.hX(paramString))
    {
      aa.w("MicroMsg.NormalUserFooterPreference", "mod stranger remark, username is null");
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setClass(this.gXk.getContext(), ModRemarkNameUI.class);
    localIntent.putExtra("Contact_Scene", NormalUserFooterPreference.i(this.gXk));
    localIntent.putExtra("Contact_mode_name_type", 0);
    localIntent.putExtra("Contact_ModStrangerRemark", true);
    localIntent.putExtra("Contact_User", NormalUserFooterPreference.a(this.gXk).getUsername());
    localIntent.putExtra("Contact_Nick", NormalUserFooterPreference.a(this.gXk).kn());
    localIntent.putExtra("Contact_RemarkName", NormalUserFooterPreference.a(this.gXk).ru());
    ((Activity)this.gXk.getContext()).startActivity(localIntent);
  }

  public void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.NormalUserFooterPreference", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString + " " + paramx.getType());
  }

  protected abstract void aLg();

  protected final void aLh()
  {
    NormalUserFooterPreference.b(this.gXk).a(0, 2130838841, new cc(this));
  }

  protected void aLi()
  {
    if (NormalUserFooterPreference.c(this.gXk))
      NormalUserFooterPreference.b(this.gXk).dh(false);
    do
    {
      do
        return;
      while (v.th().equals(NormalUserFooterPreference.a(this.gXk).getUsername()));
      if ((NormalUserFooterPreference.a(this.gXk) == null) || (!NormalUserFooterPreference.a(this.gXk).rb()))
        break;
    }
    while (w.cX(NormalUserFooterPreference.a(this.gXk).getUsername()));
    aLh();
    return;
    dY(false);
  }

  protected final void aLj()
  {
    String str = NormalUserFooterPreference.a(this.gXk).getUsername();
    NormalUserFooterPreference.a(this.gXk).qJ();
    be.uz().st().a(new bb(str));
    if (w.cr(str))
    {
      be.uz().su().tU(str);
      be.uz().sA().tx(str);
    }
    label566: 
    while (true)
    {
      be.uA().d(new com.tencent.mm.z.i(5));
      if (NormalUserFooterPreference.l(this.gXk) != 0)
        break;
      Intent localIntent = new Intent(this.gXk.getContext(), LauncherUI.class);
      localIntent.addFlags(67108864);
      ((Activity)this.gXk.getContext()).startActivity(localIntent);
      return;
      this.cQb = false;
      Context localContext = this.gXk.getContext();
      this.gXk.getContext().getString(2131167675);
      bv.a(str, new cj(this, com.tencent.mm.ui.base.h.a(localContext, this.gXk.getContext().getString(2131167726), true, new ci(this))));
      be.uz().su().a(str, NormalUserFooterPreference.a(this.gXk));
      be.uz().sx().tX(str);
      switch (NormalUserFooterPreference.i(this.gXk))
      {
      default:
      case 12:
      case 13:
      case 10:
      case 31:
      case 58:
      case 59:
      case 60:
      }
      while (true)
      {
        if (NormalUserFooterPreference.i(this.gXk) != 9)
          break label566;
        aa.i("MicroMsg.NormalUserFooterPreference", "add scene unkown, check the contact getsource: " + NormalUserFooterPreference.a(this.gXk).getSource());
        switch (NormalUserFooterPreference.a(this.gXk).getSource())
        {
        case 11:
        case 12:
        default:
          break;
        case 10:
        case 13:
          aa.i("MicroMsg.NormalUserFooterPreference", "delete the system contact info added by wechat");
          f.s(this.gXk.getContext(), str);
          break;
          av localav = ax.Aq().fM(str);
          if (localav != null)
          {
            localav.ds(1);
            ax.Aq().a(localav.Af(), localav);
            continue;
            com.tencent.mm.modelfriend.h localh = ax.Al().fq(str);
            if ((localh != null) && (!com.tencent.mm.platformtools.au.hX(localh.yX())))
            {
              localh.setStatus(1);
              ax.Al().a(localh.yK(), localh);
            }
            f.s(this.gXk.getContext(), str);
            continue;
            f.s(this.gXk.getContext(), str);
            continue;
            n localn = ax.Am().fx(str);
            if (localn != null)
            {
              localn.setStatus(100);
              ax.Am().a(localn);
              continue;
              ax.At().t(str, 2);
            }
          }
          break;
        }
      }
    }
    NormalUserFooterPreference.b(this.gXk).setResult(-1, NormalUserFooterPreference.b(this.gXk).getIntent().putExtra("_delete_ok_", true));
    ((Activity)this.gXk.getContext()).finish();
  }

  protected void agI()
  {
    aLg();
    aLi();
    NormalUserFooterPreference.e(this.gXk).setOnClickListener(new cp(this));
    NormalUserFooterPreference.f(this.gXk).setOnClickListener(new cq(this));
    NormalUserFooterPreference.g(this.gXk).setOnClickListener(new cr(this));
    NormalUserFooterPreference.h(this.gXk).setOnClickListener(new cs(this));
  }

  public final void atl()
  {
    NormalUserFooterPreference.a(this.gXk, be.uz().su().tO(NormalUserFooterPreference.a(this.gXk).getUsername()));
    if (!NormalUserFooterPreference.a(this.gXk).rb())
    {
      wY(NormalUserFooterPreference.a(this.gXk).getUsername());
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setClass(this.gXk.getContext(), ContactRemarkInfoModUI.class);
    localIntent.putExtra("Contact_Scene", NormalUserFooterPreference.i(this.gXk));
    localIntent.putExtra("Contact_User", NormalUserFooterPreference.a(this.gXk).getUsername());
    ((Activity)this.gXk.getContext()).startActivity(localIntent);
  }

  protected final void dY(boolean paramBoolean)
  {
    NormalUserFooterPreference.b(this.gXk).a(0, 2130838841, new cl(this, paramBoolean));
  }

  protected void onDetach()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cb
 * JD-Core Version:    0.6.2
 */
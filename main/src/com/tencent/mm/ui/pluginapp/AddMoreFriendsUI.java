package com.tencent.mm.ui.pluginapp;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pluginsdk.ui.tools.c;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.FacebookFriendUI;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.InputPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindgooglecontact.BindGoogleContactUI;
import com.tencent.mm.ui.bindgooglecontact.GoogleFriendUI;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindmobile.MobileFriendUI;
import com.tencent.mm.ui.bindqq.QQGroupUI;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.cx;
import java.io.IOException;

public class AddMoreFriendsUI extends MMPreference
  implements com.tencent.mm.n.m
{
  private n cIG;
  private ProgressDialog cIr = null;
  private String hdd;

  protected final void FR()
  {
    mn(2131166430);
    this.cIG = aIj();
    a(new a(this));
  }

  public final int Gc()
  {
    return 2131034113;
  }

  public final int IX()
  {
    return 1;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    int i = 1;
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.AddMoreFriendsUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (cx.a(aal(), paramInt1, paramInt2, 7))
      return;
    if ((paramInt1 == 4) && (paramInt2 == -4))
    {
      h.c(aal(), 2131166179, 2131167675);
      return;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      Toast.makeText(this, getString(2131165283), 0).show();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[i] = Integer.valueOf(paramInt2);
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.AddMoreFriendsUI", getString(2131165282, arrayOfObject));
      return;
    }
    sj localsj = ((aj)paramx).CB();
    if (localsj.fKH > 0)
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(aal(), ContactSearchResultUI.class);
      try
      {
        localIntent1.putExtra("result", localsj.toByteArray());
        startActivity(localIntent1);
        return;
      }
      catch (IOException localIOException)
      {
        return;
      }
    }
    String str1 = an.a(localsj.fEI);
    String str2 = this.hdd;
    if (cj.hS(str2));
    while (true)
    {
      Intent localIntent2 = new Intent();
      c.a(localIntent2, localsj, i);
      localIntent2.setClass(aal(), ContactInfoUI.class);
      if (cj.hW(str1).length() <= 0)
        break;
      if ((0x8 & localsj.fNp) > 0)
        com.tencent.mm.plugin.d.c.m.dZN.j(10298, str1 + "," + i);
      startActivity(localIntent2);
      return;
      if (cj.hT(str2))
      {
        i = 2;
      }
      else
      {
        cj.hU(str2);
        i = 3;
      }
    }
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    if ("find_friends_by_qrcode".equals(paramPreference.getKey()))
    {
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("BaseScanUI_select_scan_mode", 1);
      localIntent1.putExtra("GetFriendQRCodeUI.INTENT_FROM_ACTIVITY", 0);
      localIntent1.setFlags(65536);
      com.tencent.mm.ak.a.b(this, "scanner", ".ui.BaseScanUI", localIntent1);
      return true;
    }
    if ("find_friends_by_micromsg".equals(paramPreference.getKey()))
    {
      startActivity(new Intent(this, ContactSearchUI.class));
      return true;
    }
    if ("find_friends_by_qq".equals(paramPreference.getKey()))
    {
      startActivity(new Intent(this, QQGroupUI.class));
      return true;
    }
    if ("find_friends_by_mobile".equals(paramPreference.getKey()))
    {
      if (z.zp() != com.tencent.mm.modelfriend.aa.crc)
      {
        MMWizardActivity.j(this, new Intent(this, BindMContactIntroUI.class));
        return true;
      }
      startActivity(new Intent(this, MobileFriendUI.class));
      return true;
    }
    if ("find_friends_by_facebook".equals(paramPreference.getKey()))
    {
      startActivity(new Intent(this, FacebookFriendUI.class));
      return true;
    }
    if ("find_friends_by_google_account".equals(paramPreference.getKey()))
    {
      if (!ab.zy())
      {
        Intent localIntent3 = new Intent(this, BindGoogleContactUI.class);
        localIntent3.putExtra("enter_scene", 1);
        MMWizardActivity.j(this, localIntent3);
        return true;
      }
      Intent localIntent4 = new Intent(this, GoogleFriendUI.class);
      localIntent4.putExtra("enter_scene", 1);
      startActivity(localIntent4);
      return true;
    }
    if ("find_friends_by_web".equals(paramPreference.getKey()))
    {
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("Contact_Scene", 39);
      com.tencent.mm.ak.a.b(this, "brandservice", ".ui.SearchOrRecommendBizUI", localIntent2);
      return true;
    }
    if ("find_friends_by_radar".equals(paramPreference.getKey()))
    {
      com.tencent.mm.ak.a.l(this, "radar", ".ui.RadarSearchUI");
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    be.uA().b(106, this);
  }

  public void onResume()
  {
    boolean bool1 = true;
    super.onResume();
    be.uA().a(106, this);
    boolean bool2;
    label59: boolean bool3;
    if (!com.tencent.mm.ak.a.qc("brandservice"))
    {
      this.cIG.O("find_friends_by_web", bool1);
      if (cj.c((Integer)be.uz().sr().get(9)) == 0)
        break label252;
      bool2 = bool1;
      if ((bool2) && ((0x1000 & v.tq()) == 0))
        break label257;
      bool3 = bool1;
      label75: this.cIG.O("find_friends_by_qq", bool3);
      IconPreference localIconPreference = (IconPreference)this.cIG.wn("find_friends_by_facebook");
      if (localIconPreference != null)
      {
        com.tencent.mm.x.b.Bg();
        this.cIG.c(localIconPreference);
      }
      if ((IconPreference)this.cIG.wn("find_friends_by_google_account") != null)
        if ((0x800000 & v.tq()) != 0)
          break label262;
    }
    while (true)
    {
      if ((!bool1) || (!cj.Bj()))
        this.cIG.wo("find_friends_by_google_account");
      this.cIG.notifyDataSetChanged();
      InputPreference localInputPreference = (InputPreference)this.cIG.wn("find_friends_by_input");
      localInputPreference.bc(getString(2131166425), getString(2131167698));
      localInputPreference.a(new b(this));
      return;
      this.cIG.O("find_friends_by_web", false);
      break;
      label252: bool2 = false;
      break label59;
      label257: bool3 = false;
      break label75;
      label262: bool1 = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.AddMoreFriendsUI
 * JD-Core Version:    0.6.2
 */
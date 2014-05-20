package com.tencent.mm.plugin.accountsync.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.q;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.friend.RecommendFriendUI;

public class InviteRecommendChoiceUI extends MMPreference
{
  private com.tencent.mm.ui.base.preference.n cIG;

  protected final void FR()
  {
    mn(com.tencent.mm.n.bxU);
    this.cIG = aIj();
    IconPreference localIconPreference1 = (IconPreference)this.cIG.wn("settings_invite_facebook_friends");
    com.tencent.mm.x.b.Bg();
    this.cIG.c(localIconPreference1);
    IconPreference localIconPreference2 = (IconPreference)this.cIG.wn("settings_invite_qq_friends");
    if (v.tg() == 0)
      this.cIG.c(localIconPreference2);
    IconPreference localIconPreference3 = (IconPreference)this.cIG.wn("settings_recommend_by_mail");
    if (v.tg() == 0)
      this.cIG.c(localIconPreference3);
    IconPreference localIconPreference4 = (IconPreference)this.cIG.wn("settings_recommend_by_mb");
    if (be.uz().sz().vB("@t.qq.com") == null)
      this.cIG.c(localIconPreference4);
    a(new t(this));
  }

  protected final boolean Gb()
  {
    return false;
  }

  public final int Gc()
  {
    return q.bJR;
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("settings_invite_qq_friends"))
    {
      Intent localIntent1 = new Intent(this, RecommendFriendUI.class);
      localIntent1.putExtra("recommend_type", Integer.toString(0));
      startActivity(localIntent1);
    }
    do
    {
      return false;
      if (str.equals("settings_recommend_by_mail"))
      {
        Intent localIntent2 = new Intent(this, RecommendFriendUI.class);
        localIntent2.putExtra("recommend_type", Integer.toString(2));
        startActivity(localIntent2);
        return false;
      }
      if (str.equals("settings_recommend_by_mb"))
      {
        Intent localIntent3 = new Intent(this, RecommendFriendUI.class);
        localIntent3.putExtra("recommend_type", Integer.toString(1));
        startActivity(localIntent3);
        return false;
      }
      if (str.equals("settings_invite_mobile_friends"))
      {
        Intent localIntent4 = new Intent("android.intent.action.VIEW");
        int i = com.tencent.mm.n.bpj;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = be.uz().sr().get(2);
        localIntent4.putExtra("sms_body", getString(i, arrayOfObject));
        localIntent4.setType("vnd.android-dir/mms-sms");
        if (cj.i(this, localIntent4))
        {
          startActivity(localIntent4);
          return false;
        }
        Toast.makeText(this, com.tencent.mm.n.bxS, 1).show();
        return false;
      }
    }
    while (!str.equals("settings_invite_facebook_friends"));
    startActivity(new Intent(this, InviteFacebookFriendsUI.class));
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.InviteRecommendChoiceUI
 * JD-Core Version:    0.6.2
 */
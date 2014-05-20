package com.tencent.mm.ui;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.f.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.contact.SelectContactUI;
import com.tencent.mm.ui.setting.RoomGrantPreference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public class RoomRightUI extends MMPreference
  implements m
{
  private n cIG;
  private ProgressDialog cIr = null;
  private String gls = "";
  private int glt = 0;

  private void W(LinkedList paramLinkedList)
  {
    if ((paramLinkedList != null) && (paramLinkedList.size() > 0));
    String str;
    Object[] arrayOfObject;
    LinkedList localLinkedList;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      str = al.getContext().getString(2131166738);
      paramLinkedList.size();
      arrayOfObject = new Object[1];
      localLinkedList = new LinkedList();
      if ((!be.se()) || (paramLinkedList == null))
        break;
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
        localLinkedList.add(w.cu((String)localIterator.next()));
    }
    arrayOfObject[0] = au.a(localLinkedList, str);
    h.a(this, getString(2131167630, arrayOfObject), getString(2131167675), new ex(this, paramLinkedList));
  }

  private void aFB()
  {
    int i = au.a((Integer)be.uz().sr().get(135175), 0);
    Preference localPreference1 = this.cIG.wn("settings_room_size");
    if ((localPreference1 != null) && (i > 0))
    {
      Resources localResources = getResources();
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf(i);
      localPreference1.setSummary(localResources.getQuantityString(2131230737, i, arrayOfObject5));
      localPreference1.setEnabled(false);
    }
    Preference localPreference4;
    label288: label366: String str2;
    do
    {
      break label288;
      Preference localPreference2 = this.cIG.wn("room_right_max_tip");
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      localPreference2.setTitle(getString(2131167627, arrayOfObject1));
      int j = au.a((Integer)be.uz().sr().get(135176), 0);
      RoomGrantPreference localRoomGrantPreference = (RoomGrantPreference)this.cIG.wn("settings_room_grant");
      if ((localRoomGrantPreference != null) && (j <= 0))
        this.cIG.c(localRoomGrantPreference);
      Preference localPreference3;
      while (true)
      {
        localPreference3 = this.cIG.wn("room_right_tip");
        localPreference4 = this.cIG.wn("room_right_grant_tip");
        if (j > 0)
          break label366;
        if (localPreference3 != null)
          this.cIG.c(localPreference3);
        if (localPreference4 != null)
          this.cIG.c(localPreference4);
        Preference localPreference5 = this.cIG.wn("room_grant_to_friend");
        if (localPreference5 != null)
          this.cIG.c(localPreference5);
        if (localRoomGrantPreference != null)
          this.cIG.c(localRoomGrantPreference);
        return;
        if (localPreference1 == null)
          break;
        this.cIG.c(localPreference1);
        break;
        if (localRoomGrantPreference != null)
        {
          localRoomGrantPreference.setEnabled(false);
          StringBuilder localStringBuilder = new StringBuilder();
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(j);
          localRoomGrantPreference.setText(getString(2131167631, arrayOfObject2));
        }
      }
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(j);
      arrayOfObject3[1] = Integer.valueOf(i);
      String str1 = getString(2131167626, arrayOfObject3);
      if (localPreference3 != null)
        localPreference3.setTitle(str1);
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(this.glt);
      str2 = getString(2131167628, arrayOfObject4);
    }
    while (localPreference4 == null);
    localPreference4.setTitle(str2);
  }

  protected final void FR()
  {
    this.cIG = aIj();
    mn(2131165945);
    a(new eu(this));
  }

  public final int Gc()
  {
    return 2131034161;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RoomRightUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
      this.cIr.dismiss();
    if (paramx.getType() != 339)
      return;
    i locali = be.uz().su().tO(this.gls);
    if ((locali == null) || (locali.rj() == 0));
    for (String str = this.gls; ; str = locali.rr())
    {
      if ((paramInt1 != 0) || (paramInt2 != 0))
        break label165;
      h.p(this, getString(2131167636, new Object[] { str }), getString(2131167675));
      if (this.cIG == null)
        break;
      aFB();
      this.cIG.notifyDataSetChanged();
      return;
    }
    label165: if (paramInt2 == -251)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str;
      arrayOfObject[1] = Integer.valueOf(this.glt);
      h.p(this, getString(2131167638, arrayOfObject), getString(2131167675));
      return;
    }
    if (paramInt2 == -44)
    {
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(this.gls);
      W(localLinkedList);
      return;
    }
    if (paramInt2 == -22)
    {
      h.p(this, getString(2131167637, new Object[] { str }), getString(2131167675));
      return;
    }
    Toast.makeText(this, "err :" + paramInt1 + " ," + paramInt2, 0).show();
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    if (paramPreference.getKey().equals("room_grant_to_friend"))
    {
      Intent localIntent = new Intent(aal(), SelectContactUI.class);
      localIntent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
      localIntent.putExtra("List_Type", 4);
      localIntent.putExtra("select_contact_pick_result", true);
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add("officialaccounts");
      localIntent.putExtra("Block_list", au.a(localLinkedList, ","));
      localIntent.putExtra("Add_SendCard", true);
      startActivityForResult(localIntent, 1);
    }
    return false;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    aa.d("MicroMsg.RoomRightUI", "onAcvityResult requestCode: %d", arrayOfObject1);
    if ((paramInt2 != -1) || (paramIntent == null));
    String str1;
    do
    {
      return;
      switch (paramInt1)
      {
      default:
        return;
      case 1:
      }
      str1 = paramIntent.getStringExtra("Select_Conv_User");
      aa.e("MicroMsg.RoomRightUI", "pick user %s", new Object[] { str1 });
    }
    while (au.hX(str1));
    this.gls = str1;
    String str2 = this.gls;
    i locali = be.uz().su().tO(str2);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = locali.rr();
    arrayOfObject2[1] = Integer.valueOf(this.glt);
    String str3 = getString(2131167639, arrayOfObject2);
    h.a(aal(), str3, "", new ev(this, str2), null);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.glt = au.a((Integer)be.uz().sr().get(135177), 0);
    be.uA().a(339, this);
    be.uA().a(30, this);
    be.uz().sr().set(135184, Boolean.valueOf(false));
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(339, this);
    be.uA().b(30, this);
  }

  public void onResume()
  {
    super.onResume();
    aFB();
    this.cIG.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.RoomRightUI
 * JD-Core Version:    0.6.2
 */
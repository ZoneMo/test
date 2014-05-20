package com.tencent.mm.ui.bindgooglecontact;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.protocal.a.ly;
import com.tencent.mm.protocal.a.mw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.InviteFriendUI;
import com.tencent.mm.ui.tools.eo;
import com.tencent.mm.v.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;

public class GoogleFriendUI extends MMActivity
  implements AdapterView.OnItemClickListener, com.tencent.mm.m.p, com.tencent.mm.n.m, p
{
  private HashMap csT = new HashMap();
  private String csU;
  private ProgressDialog dbm;
  private TextView drn;
  private String gHI;
  private ListView gHS;
  private o gHT;
  private String gHU;
  private boolean gHV = false;
  private com.tencent.mm.v.e gHW;
  private ArrayList gHX = new ArrayList();
  private boolean gHn = false;
  private String gHp;
  private int gHr;

  private void LL()
  {
    if ((this.dbm != null) && (this.dbm.isShowing()))
      this.dbm.dismiss();
  }

  private void a(Cursor paramCursor, com.tencent.mm.modelfriend.ac paramac)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    if (paramCursor != null)
    {
      paramCursor.moveToFirst();
      int i = paramCursor.getCount();
      for (int j = 0; j < i; j++)
      {
        com.tencent.mm.modelfriend.ac localac = new com.tencent.mm.modelfriend.ac();
        localac.convertFrom(paramCursor);
        localArrayList1.add(localac.field_googlegmail);
        localArrayList2.add(Integer.valueOf(j));
        localArrayList3.add(localac);
        paramCursor.moveToNext();
      }
      localArrayList2.add(Integer.valueOf(-1));
    }
    Activity localActivity = aal();
    String str = getResources().getString(n.boH);
    getResources().getString(n.bds);
    h.a(localActivity, str, localArrayList1, localArrayList2, new v(this, localArrayList3, paramac));
  }

  private void a(com.tencent.mm.modelfriend.ac paramac1, com.tencent.mm.modelfriend.ac paramac2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramac1.field_googlegmail);
    d locald = new d(localArrayList);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramac1.field_googleitemid;
    aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "gmailItem:%s", arrayOfObject);
    be.uA().d(locald);
    if (paramac2 == null)
    {
      locald.fO(paramac1.field_googleitemid);
      paramac1.field_googlecgistatus = 0;
      ax.At().b(paramac1);
    }
    while (true)
    {
      this.gHT.FZ();
      return;
      locald.fO(paramac2.field_googleitemid);
      paramac2.field_googlecgistatus = 0;
      ax.At().b(paramac2);
    }
  }

  private void a(mw parammw)
  {
    try
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(parammw.fAC);
      aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "handleListGoogleContactCGIResponse Count:%d", arrayOfObject);
      if (this.gHT != null)
        this.gHT.FZ();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void aIv()
  {
    if ((this.dbm == null) || (!this.dbm.isShowing()))
    {
      getString(n.ber);
      this.dbm = h.a(this, getString(n.beu), true, new w(this));
    }
  }

  private void aIw()
  {
    aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "updateToken");
    if (this.gHn)
      this.csU = ((String)be.uz().sr().get(208901));
    while ((TextUtils.isEmpty(this.csU)) || ((!this.gHn) && (TextUtils.isEmpty(this.gHI))))
    {
      e(BindGoogleContactUI.class);
      finish();
      return;
      this.csU = ((String)be.uz().sr().get(208902));
      this.gHI = ((String)be.uz().sr().get(208904));
    }
    if (this.gHn)
    {
      aIx();
      return;
    }
    aIv();
    new z(this, this.gHI).execute(new Void[0]);
  }

  private void aIx()
  {
    this.gHV = false;
    aIv();
    new y(this, this, this.csU, (byte)0).execute(new Void[0]);
  }

  private void dE(boolean paramBoolean)
  {
    this.drn.setVisibility(0);
    String str;
    if (!ba.bk(this))
      str = getString(n.boG);
    while (true)
    {
      this.drn.setText(str);
      return;
      if (paramBoolean)
        str = getString(n.boA);
      else
        str = getString(n.boz);
    }
  }

  protected final void FR()
  {
    mn(n.boB);
    a(new s(this));
    this.drn = ((TextView)findViewById(com.tencent.mm.i.empty));
    this.gHS = ((ListView)findViewById(com.tencent.mm.i.avy));
    this.gHS.setAdapter(this.gHT);
    this.gHS.setOnItemClickListener(this);
    eo localeo = new eo();
    localeo.a(new t(this));
    a(true, localeo);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    if (TextUtils.isEmpty(paramString))
      paramString = "";
    arrayOfObject1[2] = paramString;
    aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "[onSceneEnd] errType:%d,errCode:%d,errMsg:%s", arrayOfObject1);
    int i = paramx.getType();
    if ((paramInt1 == 0) && (paramInt2 == 0))
      switch (i)
      {
      default:
        aa.w("MicroMsg.GoogleContact.GoogleFriendUI", "Unknow scene type.");
      case 489:
      case 30:
      case 137:
      case 488:
      }
    while (true)
    {
      LL();
      return;
      if (this.gHT != null)
      {
        d locald2 = (d)paramx;
        int k = locald2.Az().fAC;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(k);
        aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "count:%d", arrayOfObject3);
        locald2.AA();
        String str4 = locald2.Ay();
        aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "gmailItem:%s", new Object[] { str4 });
        ax.At().s(str4, 1);
        this.gHT.FZ();
        continue;
        if (this.gHT != null)
        {
          j localj2 = (j)paramx;
          localj2.apK();
          String str3 = localj2.Ay();
          aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "gmailItem:%s", new Object[] { str3 });
          ax.At().s(str3, 1);
          this.gHT.FZ();
          continue;
          a(((com.tencent.mm.v.e)paramx).AB());
          continue;
          switch (i)
          {
          default:
            aa.w("MicroMsg.GoogleContact.GoogleFriendUI", "Unknow scene type.");
            break;
          case 489:
            if (this.gHT != null)
            {
              d locald1 = (d)paramx;
              int j = locald1.Az().fAC;
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Integer.valueOf(j);
              aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "count:%d", arrayOfObject2);
              locald1.AA();
              String str2 = locald1.Ay();
              aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "gmailItem:%s", new Object[] { str2 });
              ax.At().s(str2, 1);
              this.gHT.FZ();
            }
            break;
          case 30:
          case 137:
            if (paramInt2 == -87)
              h.p(this, getString(n.bhB), "");
            if (this.gHT != null)
            {
              j localj1 = (j)paramx;
              localj1.apK();
              String str1 = localj1.Ay();
              aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "gmailItem:%s", new Object[] { str1 });
              ax.At().s(str1, 2);
              this.gHT.FZ();
            }
            break;
          case 488:
            dE(false);
          }
        }
      }
    }
  }

  public final void ei(String paramString)
  {
    if (this.gHT != null)
      this.gHT.notifyDataSetChanged();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aUS;
  }

  public final void nv(int paramInt)
  {
    if (this.gHT == null);
    while (true)
    {
      return;
      com.tencent.mm.modelfriend.ac localac = (com.tencent.mm.modelfriend.ac)this.gHT.getItem(paramInt);
      if (localac != null)
      {
        switch (localac.field_status)
        {
        default:
          return;
        case 0:
          com.tencent.mm.pluginsdk.ui.applet.a locala = new com.tencent.mm.pluginsdk.ui.applet.a(this, new u(this), localac.field_googleitemid);
          LinkedList localLinkedList = new LinkedList();
          localLinkedList.add(Integer.valueOf(58));
          locala.e(localac.field_username, localLinkedList);
          localac.field_googlecgistatus = 0;
          ax.At().b(localac);
          this.gHT.FZ();
          return;
        case 1:
        }
        String str = localac.field_googleid;
        Cursor localCursor = ax.At().fC(str);
        if (localCursor.getCount() <= 1)
          a(localac, null);
        while (localCursor != null)
        {
          localCursor.close();
          return;
          a(localCursor, localac);
        }
      }
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "requestCode:%d, resultCode:%d", arrayOfObject);
    if (paramInt1 == 2005)
    {
      if (paramInt2 == -1)
      {
        this.gHn = paramIntent.getBooleanExtra("gpservices", false);
        aIw();
      }
    }
    else
      return;
    this.gHn = paramIntent.getBooleanExtra("gpservices", false);
    finish();
  }

  public void onBackPressed()
  {
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gHp = ((String)be.uz().sr().get(208903));
    if (TextUtils.isEmpty(this.gHp))
      finish();
    this.gHr = getIntent().getIntExtra("enter_scene", 0);
    this.gHT = new o(this, this.gHp);
    this.gHT.a(this);
    FR();
    this.gHn = ab.O(this);
    if (this.gHn)
    {
      aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "startActivityCheckGooglePlayServices");
      startActivityForResult(new Intent("com.tencent.mm.gms.CHECK_GP_SERVICES"), 2005);
    }
    while (true)
    {
      ax.At().clear();
      return;
      aIw();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    ax.At().clear();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "onItemClick position:%d,", arrayOfObject1);
    com.tencent.mm.modelfriend.ac localac;
    String str;
    if (this.gHT != null)
    {
      int i = paramInt - this.gHS.getHeaderViewsCount();
      localac = (com.tencent.mm.modelfriend.ac)this.gHT.getItem(i);
      if (localac != null)
      {
        str = localac.field_username;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = localac.field_googlegmail;
        arrayOfObject2[1] = str;
        aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "jumpToProfile email:%s, username:%s", arrayOfObject2);
        com.tencent.mm.storage.i locali = be.uz().su().tO(str);
        if (((locali == null) || (!locali.rb())) && (TextUtils.isEmpty(localac.field_nickname)))
          break label258;
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("Contact_User", str);
        localIntent2.putExtra("Contact_Nick", localac.field_nickname);
        localIntent2.putExtra("Contact_ShowFMessageList", true);
        localIntent2.putExtra("verify_gmail", localac.field_googlegmail);
        localIntent2.putExtra("profileName", localac.field_googlename);
        localIntent2.putExtra("Contact_Source_FMessage", 58);
        localIntent2.putExtra("Contact_Scene", 58);
        if ((str != null) && (str.length() > 0))
          com.tencent.mm.plugin.a.a.cHS.c(localIntent2, aal());
      }
    }
    return;
    label258: Intent localIntent1 = new Intent(this, InviteFriendUI.class);
    localIntent1.putExtra("friend_type", 2);
    localIntent1.putExtra("friend_user_name", str);
    localIntent1.putExtra("friend_num", localac.field_googlegmail);
    localIntent1.putExtra("friend_nick", localac.field_googlename);
    localIntent1.putExtra("friend_weixin_nick", localac.field_nickname);
    localIntent1.putExtra("friend_googleID", localac.field_googleid);
    localIntent1.putExtra("friend_googleItemID", localac.field_googleitemid);
    localIntent1.putExtra("friend_scene", 58);
    localIntent1.putExtra("Contact_Scene", 58);
    startActivity(localIntent1);
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(488, this);
    be.uA().a(489, this);
    af.vJ().d(this);
    if (this.gHT != null)
      this.gHT.FZ();
  }

  protected void onStop()
  {
    super.onStop();
    be.uA().b(488, this);
    be.uA().b(489, this);
    af.vJ().e(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.GoogleFriendUI
 * JD-Core Version:    0.6.2
 */
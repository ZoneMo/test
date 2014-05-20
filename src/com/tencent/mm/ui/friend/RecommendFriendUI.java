package com.tencent.mm.ui.friend;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.z;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.protocal.a.gd;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;
import junit.framework.Assert;

public class RecommendFriendUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private int cIt = -1;
  private ListView dMt;
  private TextView dSx;
  private bc hbS;
  private LinkedList hbT = new LinkedList();
  private boolean hbU = false;
  private LinkedList hbr = new LinkedList();
  private boolean hbs;

  private void aLQ()
  {
    this.dSx.setVisibility(0);
    this.dMt.setVisibility(8);
  }

  private void aLR()
  {
    if (this.cIt == 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("dealGetInviteFriendGroupSuccess just only qq", bool);
      aa.i("MicroMsg.RecommendFriendUI", "dealGetInviteFriendGroupSuccess  respList.size:" + this.hbr.size());
      this.hbS.X(this.hbr);
      this.dMt.setAdapter(this.hbS);
      dh(false);
      this.hbs = true;
      mn(n.byq);
      this.hbS.dZ(this.hbs);
      this.hbS.notifyDataSetChanged();
      return;
    }
  }

  private void goBack()
  {
    if (this.cIt != 0)
    {
      finish();
      return;
    }
    if ((this.hbs) || (this.hbU))
    {
      finish();
      return;
    }
    aLR();
  }

  private void nQ(int paramInt)
  {
    aa.i("MicroMsg.RecommendFriendUI", "dealGetInviteFriendSuccess  respList.size:" + this.hbT.size());
    this.hbS.a(this.hbT, paramInt);
    this.dMt.setAdapter(this.hbS);
    this.hbs = false;
    Object localObject1;
    int i;
    if (this.cIt == 0)
    {
      localObject1 = "";
      i = 0;
      if (i < this.hbr.size())
        if (paramInt != ((gd)this.hbr.get(i)).fIE)
          break label145;
    }
    label145: for (Object localObject2 = ((gd)this.hbr.get(i)).fIF; ; localObject2 = localObject1)
    {
      i++;
      localObject1 = localObject2;
      break;
      vT((String)localObject1);
      this.hbS.dZ(this.hbs);
      this.hbS.notifyDataSetChanged();
      return;
    }
  }

  protected final void FR()
  {
    this.dSx = ((TextView)findViewById(i.asP));
    if (this.cIt == 1)
    {
      mn(n.byF);
      this.dSx.setText(n.byH);
    }
    while (true)
    {
      this.hbS = new bc(getLayoutInflater());
      this.dMt = ((ListView)findViewById(i.axf));
      this.dMt.setOnItemClickListener(new cc(this));
      this.dMt.setAdapter(this.hbS);
      a(0, getString(n.bpk), new cd(this));
      dh(false);
      this.hbU = true;
      z localz = new z(this.cIt);
      be.uA().d(localz);
      Activity localActivity = aal();
      getString(n.ber);
      this.cIr = h.a(localActivity, getString(n.bpn), true, new ci(this, localz));
      a(new cg(this));
      new ch(this);
      return;
      if (this.cIt == 2)
      {
        mn(n.byE);
        this.dSx.setText(n.byG);
      }
      else
      {
        mn(n.byq);
        this.dSx.setText(n.byI);
      }
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RecommendFriendUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0) || (paramx.getType() != 135))
    {
      aLQ();
      return;
    }
    this.hbT = ((z)paramx).Cs();
    this.hbr = ((z)paramx).Ct();
    this.hbU = false;
    if (this.hbT.size() <= 0)
    {
      aLQ();
      return;
    }
    if ((this.cIt == 0) && (this.hbr.size() <= 0))
    {
      aLQ();
      return;
    }
    if (this.cIt != 0)
    {
      nQ(-1);
      return;
    }
    aLR();
  }

  protected final int getLayoutId()
  {
    return k.aVf;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIt = Integer.parseInt(getIntent().getStringExtra("recommend_type"));
    this.hbs = false;
    be.uA().a(135, this);
    FR();
  }

  protected void onDestroy()
  {
    be.uA().b(135, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.RecommendFriendUI
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.ui.friend;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ah.a;
import com.tencent.mm.ah.e;
import com.tencent.mm.ah.f;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.cy;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;
import com.tencent.mm.ui.base.dc;
import com.tencent.mm.ui.bc;

public final class m extends bc
{
  protected dc cPK;
  protected cy cPL;
  protected db cPM;
  protected cz cPN = new n(this);
  private Context context;
  private View.OnClickListener haP = new q(this);
  private View.OnClickListener haQ = new s(this);

  public m(Context paramContext)
  {
    super(paramContext, new a());
    this.context = paramContext;
  }

  public final void FZ()
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      setCursor(com.tencent.mm.ah.k.Dy().BD());
      notifyDataSetChanged();
      return;
    }
    an.i(new p(this));
  }

  protected final void Ga()
  {
    closeCursor();
    FZ();
  }

  public final void a(cy paramcy)
  {
    this.cPL = paramcy;
  }

  public final void a(db paramdb)
  {
    this.cPM = paramdb;
  }

  public final void a(dc paramdc)
  {
    this.cPK = paramdc;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    v localv;
    if (paramView == null)
    {
      MMSlideDelView localMMSlideDelView = (MMSlideDelView)View.inflate(this.context, 2130903109, null);
      View localView2 = View.inflate(this.context, 2130903313, null);
      localv = new v();
      localv.haW = ((MaskLayout)localView2.findViewById(2131362690));
      localv.eDL = ((TextView)localView2.findViewById(2131362696));
      localv.hbb = ((TextView)localView2.findViewById(2131362697));
      localv.haX = ((Button)localView2.findViewById(2131362692));
      localv.haX.setOnClickListener(this.haP);
      localv.haY = ((Button)localView2.findViewById(2131362693));
      localv.haY.setOnClickListener(this.haQ);
      localv.haZ = ((TextView)localView2.findViewById(2131362694));
      localv.hba = ((TextView)localView2.findViewById(2131362695));
      localv.cPU = localMMSlideDelView.findViewById(2131362062);
      localv.cPV = ((TextView)localMMSlideDelView.findViewById(2131361926));
      localMMSlideDelView.setView(localView2);
      localMMSlideDelView.a(this.cPK);
      localMMSlideDelView.a(this.cPL);
      localMMSlideDelView.a(this.cPN);
      localMMSlideDelView.aHq();
      localMMSlideDelView.setTag(localv);
      paramView = localMMSlideDelView;
    }
    a locala;
    e locale2;
    while (true)
    {
      locala = (a)getItem(paramInt);
      c.a((ImageView)localv.haW.getContentView(), locala.field_talker);
      localv.eDL.setText(com.tencent.mm.ao.b.e(this.context, locala.field_displayName, -1));
      if (locala.field_fmsgSysRowId > 0L)
        break label611;
      aa.w("MicroMsg.FMessageConversationUI", "getView, fconv fmsgSysRowId is invalid, try getLastFmsg");
      locale2 = com.tencent.mm.ah.k.Dx().gH(locala.field_talker);
      if (locale2 != null)
        break;
      aa.e("MicroMsg.FMessageConversationUI", "getView, lastFmsg is null, talker = " + locala.field_talker);
      localv.haX.setVisibility(8);
      localv.haY.setVisibility(8);
      localv.haZ.setVisibility(8);
      localv.hba.setVisibility(8);
      localv.hbb.setVisibility(8);
      return paramView;
      localv = (v)paramView.getTag();
    }
    com.tencent.mm.pluginsdk.ui.preference.n localn = com.tencent.mm.pluginsdk.ui.preference.n.a(this.context, locale2);
    aa.i("MicroMsg.FMessageConversationUI", "getView, lastFmsg talker = " + locala.field_talker);
    while (true)
    {
      if (locala.field_state == 1)
      {
        i locali = be.uz().su().tO(locala.field_talker);
        if ((locali != null) && (locali.rj() != 0) && (!locali.rb()))
          com.tencent.mm.ah.k.Dy().v(locala.field_talker, 0);
      }
      if (localn != null)
        break;
      aa.e("MicroMsg.FMessageConversationUI", "getView, fProvider is null, talker = " + locala.field_talker);
      localv.haX.setVisibility(8);
      localv.haY.setVisibility(8);
      localv.haZ.setVisibility(8);
      localv.hba.setVisibility(8);
      localv.hbb.setVisibility(8);
      return paramView;
      label611: localn = com.tencent.mm.pluginsdk.ui.preference.n.a(this.context, locala);
      aa.i("MicroMsg.FMessageConversationUI", "getView, lastFmsg sysrowid = " + locala.field_fmsgSysRowId + ", talker = " + locala.field_talker);
    }
    localv.cPU.setTag(locala.field_talker);
    localv.cPU.setOnClickListener(new o(this));
    localn.elN = locala.field_addScene;
    localv.hbb.setText(localn.chj);
    View localView1;
    switch (locala.field_state)
    {
    default:
      localv.haX.setVisibility(8);
      localv.haY.setVisibility(8);
      localv.haZ.setVisibility(8);
      localv.hba.setVisibility(8);
      localView1 = paramView.findViewById(2131362689);
      if (locala.field_isNew != 0)
        break;
    case 0:
    case 2:
    case 1:
    }
    for (int i = 2130838826; ; i = 2130837909)
    {
      localView1.setBackgroundResource(i);
      return paramView;
      e locale1;
      int j;
      if (locala.field_fmsgSysRowId <= 0L)
      {
        aa.w("MicroMsg.FMessageConversationUI", "getView, fmsgSysRowId invalid, try use lastRecvFmsg");
        locale1 = com.tencent.mm.ah.k.Dx().gI(localn.username);
        if (locale1 == null)
        {
          j = 0;
          label859: if ((j != 0) && (j != 3))
            break label942;
          localv.haX.setVisibility(0);
          localv.haX.setTag(localn);
          localv.haY.setVisibility(8);
        }
      }
      while (true)
      {
        localv.haZ.setVisibility(8);
        localv.hba.setVisibility(8);
        break;
        j = locale1.field_type;
        break label859;
        j = locala.field_recvFmsgType;
        break label859;
        label942: localv.haY.setVisibility(0);
        localv.haY.setTag(localn);
        localv.haX.setVisibility(8);
      }
      localv.haZ.setVisibility(0);
      localv.haX.setVisibility(8);
      localv.haY.setVisibility(8);
      localv.hba.setVisibility(8);
      break;
      localv.hba.setVisibility(0);
      localv.haX.setVisibility(8);
      localv.haY.setVisibility(8);
      localv.haZ.setVisibility(8);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.m
 * JD-Core Version:    0.6.2
 */
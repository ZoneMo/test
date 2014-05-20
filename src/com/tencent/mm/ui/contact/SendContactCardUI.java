package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.m.af;
import com.tencent.mm.m.x;
import com.tencent.mm.m.y;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.p.a;
import com.tencent.mm.p.p;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bt;
import com.tencent.mm.z.f;
import java.util.Iterator;
import java.util.List;

public class SendContactCardUI extends MMActivity
{
  private View fnS;
  private ListView gSA;
  private cs gVp;
  private List gVq;
  private String gVr;
  private String gVs;
  private boolean gVt;
  private boolean gVu;

  public static void a(Activity paramActivity, String paramString, List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      f localf = new f(paramString, wT((String)localIterator.next()), 42);
      be.uA().d(localf);
    }
    h.an(paramActivity, paramActivity.getString(2131166714));
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(3);
    arrayOfObject[1] = Integer.valueOf(paramList.size());
    localm.d(11003, arrayOfObject);
    paramActivity.setResult(-1);
    paramActivity.finish();
  }

  private static String wT(String paramString)
  {
    x localx = af.wm().eq(paramString);
    i locali = be.uz().su().tO(paramString);
    int i = locali.rz();
    if (localx != null)
      i = localx.rz();
    a locala;
    Object[] arrayOfObject;
    if (locali.aAp())
    {
      locala = p.eI(locali.getUsername());
      arrayOfObject = new Object[15];
      arrayOfObject[0] = cj.sS(locali.getUsername());
      arrayOfObject[1] = cj.sS(locali.rq());
      arrayOfObject[2] = cj.sS(locali.rp());
      arrayOfObject[3] = cj.sS(locali.rq());
      arrayOfObject[4] = cj.sS(locali.rn());
      arrayOfObject[5] = Integer.valueOf(i);
      arrayOfObject[6] = cj.sS(locali.rC());
      arrayOfObject[7] = cj.sS(locali.rD());
      arrayOfObject[8] = cj.sS(locali.rB());
      arrayOfObject[9] = Integer.valueOf(locali.rA());
      arrayOfObject[10] = Integer.valueOf(locali.rk());
      arrayOfObject[11] = Integer.valueOf(locali.rJ());
      arrayOfObject[12] = cj.sS(locali.rK());
      if (locala != null)
        break label245;
    }
    label245: for (String str = ""; ; str = cj.sS(locala.field_brandIconURL))
    {
      arrayOfObject[13] = str;
      arrayOfObject[14] = cj.sS(locali.rL());
      return String.format("<msg username=\"%s\" nickname=\"%s\" alias=\"%s\" fullpy=\"%s\" shortpy=\"%s\" imagestatus=\"%d\" scene=\"17\" province=\"%s\" city=\"%s\" sign=\"%s\" percard=\"%d\" sex=\"%d\" certflag=\"%d\" certinfo=\"%s\" certinfoext=\"\" brandIconUrl=\"%s\" brandHomeUrl=\"\" brandSubscriptConfigUrl=\"\" brandFlags=\"\" regionCode=\"%s\"/>", arrayOfObject);
      locala = null;
      break;
    }
  }

  protected final void FR()
  {
    mn(2131166712);
    this.fnS = getLayoutInflater().inflate(2130903677, null);
    i locali = be.uz().su().tO(this.gVs);
    TextView localTextView1 = (TextView)this.fnS.findViewById(2131363644);
    TextView localTextView2 = (TextView)this.fnS.findViewById(2131363642);
    TextView localTextView3 = (TextView)this.fnS.findViewById(2131363643);
    ImageView localImageView = (ImageView)this.fnS.findViewById(2131363641);
    localTextView3.setText(getString(2131167766));
    String str1 = locali.rq();
    if (this.gVu)
      str1 = be.uz().sA().tt(this.gVs).cu(v.th());
    localTextView2.setText(com.tencent.mm.ao.b.e(this, str1, (int)localTextView2.getTextSize()));
    com.tencent.mm.pluginsdk.ui.c.a(localImageView, locali.getUsername());
    if (locali.aAp())
    {
      localTextView3.setVisibility(8);
      localTextView1.setVisibility(8);
      a(new ek(this));
      new el(this);
      a(getString(2131167684), new em(this), bt.gnO);
      this.gSA = ((ListView)findViewById(2131363647));
      if (this.gVt)
        break label355;
    }
    label355: for (List localList = this.gVq; ; localList = r.cg(this.gVr))
    {
      this.gVp = new cs(this, localList);
      this.gSA.addHeaderView(this.fnS);
      this.gSA.setAdapter(this.gVp);
      this.gVp.ca(null);
      return;
      String str2 = locali.getUsername();
      String str3 = locali.rs();
      if (((i.tD(str2)) && (str2.equals(str3))) || (this.gVu))
      {
        localTextView3.setVisibility(8);
        localTextView1.setVisibility(8);
      }
      localTextView1.setText(str3);
      break;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903678;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gVs = getIntent().getStringExtra("be_send_card_name");
    this.gVu = w.cp(this.gVs);
    this.gVt = getIntent().getBooleanExtra("Is_Chatroom", false);
    if (this.gVt)
      this.gVr = cj.R(getIntent().getStringExtra("received_card_name"), "");
    while (true)
    {
      FR();
      return;
      this.gVq = cj.c(cj.R(getIntent().getStringExtra("received_card_name"), "").split(","));
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
    this.gVp.ca(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.SendContactCardUI
 * JD-Core Version:    0.6.2
 */
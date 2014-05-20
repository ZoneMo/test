package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Bundle;
import android.widget.CheckedTextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.bind.model.f;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MaxListView;
import com.tencent.mm.ui.bt;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class WalletCardSelectUI extends WalletBaseUI
{
  private List eZo = new LinkedList();
  private List eZp = new LinkedList();
  private CheckedTextView eZq;
  private CheckedTextView eZr;
  private String eZs;
  private int eZt = 3;
  private int eZu;
  private Set eZv = null;
  private int eZw = -1;
  private int eZx = -1;
  private ax eZy;
  private MaxListView eZz;

  private void bX(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.eZq.setChecked(true);
      this.eZr.setChecked(false);
      this.eZy.ai(this.eZo);
      this.eZy.notifyDataSetChanged();
      this.eZz.clearChoices();
      if (this.eZw >= 0)
      {
        this.eZz.setItemChecked(this.eZw, true);
        dg(true);
        return;
      }
      dg(false);
      return;
    }
    this.eZq.setChecked(false);
    this.eZr.setChecked(true);
    this.eZy.ai(this.eZp);
    this.eZy.notifyDataSetChanged();
    this.eZz.clearChoices();
    if (this.eZx >= 0)
    {
      this.eZz.setItemChecked(this.eZx, true);
      dg(true);
      return;
    }
    dg(false);
  }

  public final void FR()
  {
    this.eZs = aoJ().getString("key_bank_type");
    this.eZu = aoJ().getInt("key_bankcard_type", 1);
    this.eZt = aoJ().getInt("key_support_bankcard", 1);
    Orders localOrders = (Orders)aoJ().getParcelable("key_orders");
    if (localOrders != null)
      this.eZv = localOrders.faZ;
    k(new f(this.eZt, aoK()));
    this.eZz = ((MaxListView)findViewById(i.aJG));
    this.eZq = ((CheckedTextView)findViewById(i.apv));
    this.eZr = ((CheckedTextView)findViewById(i.apw));
    this.eZy = new ax(this, this);
    this.eZz.setAdapter(this.eZy);
    this.eZz.setOnItemClickListener(new aq(this));
    a(new ar(this));
    a(getString(n.bdY), new as(this), bt.gnO);
    dg(false);
    this.eZq.setOnClickListener(new at(this));
    this.eZr.setOnClickListener(new au(this));
  }

  public final boolean Vi()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0) && ((parama instanceof f)))
    {
      this.eZp.clear();
      this.eZo.clear();
      Iterator localIterator = ((f)parama).anm().iterator();
      while (localIterator.hasNext())
      {
        ElementQuery localElementQuery = (ElementQuery)localIterator.next();
        if ((this.eZv == null) || (this.eZv.isEmpty()) || (this.eZv.contains(localElementQuery.eXo)))
        {
          if (localElementQuery.anh())
            this.eZp.add(localElementQuery);
          else if (localElementQuery.ani())
            this.eZo.add(localElementQuery);
        }
        else
          aa.w("MicroMsg.WalletCardSelectUI", "This order not support bankcard_type : " + localElementQuery.eXo);
      }
      int n;
      if ((this.eZt == 3) && (!this.eZp.isEmpty()))
      {
        if (c.anX().aoe())
          Collections.sort(this.eZp, new av(this));
      }
      else
      {
        if (this.eZo.isEmpty())
          break label444;
        if (this.eZu != 2)
          break label354;
        n = this.eZp.size();
      }
      for (int i1 = 0; ; i1++)
        if (i1 < n)
        {
          if (((ElementQuery)this.eZp.get(i1)).eXo.equals(this.eZs))
          {
            this.eZx = i1;
            bX(false);
            dg(true);
          }
        }
        else
        {
          if (this.eZx < 0)
          {
            bX(false);
            dg(false);
          }
          return true;
          Collections.sort(this.eZp, new aw(this));
          break;
        }
      label354: int k = this.eZo.size();
      for (int m = 0; ; m++)
        if (m < k)
        {
          if (((ElementQuery)this.eZo.get(m)).eXo.equals(this.eZs))
          {
            this.eZw = m;
            bX(true);
            dg(true);
          }
        }
        else
        {
          if (this.eZw >= 0)
            break;
          bX(false);
          dg(false);
          break;
        }
      label444: int i = this.eZp.size();
      for (int j = 0; ; j++)
        if (j < i)
        {
          if (((ElementQuery)this.eZp.get(j)).eXo.equals(this.eZs))
          {
            this.eZx = j;
            bX(false);
            dg(true);
          }
        }
        else
        {
          if (this.eZx < 0)
          {
            bX(false);
            dg(false);
          }
          this.eZq.setVisibility(8);
          this.eZr.setBackgroundResource(h.ady);
          this.eZr.setCheckMarkDrawable(h.aiK);
          break;
        }
    }
    return false;
  }

  protected final int getLayoutId()
  {
    return k.bbz;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bFW);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletCardSelectUI
 * JD-Core Version:    0.6.2
 */
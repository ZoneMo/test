package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.List;

public final class ax extends BaseAdapter
{
  private Context context;
  private List eEO = new ArrayList();

  public ax(WalletCardSelectUI paramWalletCardSelectUI, Context paramContext)
  {
    this.context = paramContext;
  }

  public final void ai(List paramList)
  {
    this.eEO = paramList;
  }

  public final int getCount()
  {
    return this.eEO.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ay localay = new ay(this);
    View localView = View.inflate(this.context, k.bbr, null);
    localay.eZB = ((CheckedTextView)localView.findViewById(i.apu));
    String str = cj.R(((ElementQuery)this.eEO.get(paramInt)).eXe, "");
    localay.eZB.setText(str);
    if (paramInt != 0)
      this.eEO.size();
    localay.eZB.setBackgroundResource(h.ady);
    if (getCount() == 1)
      localay.eZB.setBackgroundResource(h.ady);
    localay.eZB.setCheckMarkDrawable(h.aiK);
    return localView;
  }

  public final ElementQuery jG(int paramInt)
  {
    return (ElementQuery)this.eEO.get(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ax
 * JD-Core Version:    0.6.2
 */
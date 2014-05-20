package com.tencent.mm.plugin.backup.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.model.w;
import com.tencent.mm.plugin.backup.model.aa;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.base.ct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

public final class x extends BaseAdapter
{
  private HashSet cME = new HashSet();
  private aa cMF;
  private ArrayList cMG = new ArrayList();
  private ArrayList cMH = new ArrayList();
  private ad cMI;
  private ct cMJ = null;
  private boolean cMK = false;
  ArrayList cML = new ArrayList();
  Map cMM = new HashMap();
  private Context context = null;
  Handler handler = new Handler(Looper.getMainLooper());

  public x(Context paramContext)
  {
    this.context = paramContext;
  }

  public final HashSet HZ()
  {
    return this.cME;
  }

  public final ArrayList Ia()
  {
    return this.cMG;
  }

  public final ArrayList Ib()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.cME.iterator();
    while (localIterator.hasNext())
      localArrayList.add(localIterator.next());
    return localArrayList;
  }

  public final void Ic()
  {
    ((BakChatUploadSelectUI)this.context).Ih().setText("0B");
    ((BakChatUploadSelectUI)this.context).Ij();
    ((BakChatUploadSelectUI)this.context).ad(false);
    this.cME.clear();
    notifyDataSetChanged();
  }

  public final void Id()
  {
    this.cMG.clear();
    this.cMF = d.Gm();
    if (this.cMF != null)
      this.cMF.init(hashCode());
    new ab(this).c(new String[] { "" });
  }

  public final void Ie()
  {
    if (this.cMF != null)
      this.cMF.fd(hashCode());
  }

  public final void If()
  {
    if (this.cME.size() == 0)
      ((BakChatUploadSelectUI)this.context).ad(false);
    while (true)
    {
      ((BakChatUploadSelectUI)this.context).Ii();
      return;
      ((BakChatUploadSelectUI)this.context).Im();
    }
  }

  public final void Ig()
  {
    this.cMK = true;
    if ((this.cMJ != null) && (this.cMJ.isShowing()))
      this.cMJ.dismiss();
    this.cMJ = null;
  }

  public final void a(ad paramad)
  {
    this.cMI = paramad;
  }

  public final int getCount()
  {
    return this.cMG.size();
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    n localn = (n)this.cMG.get(paramInt);
    String str1 = localn.getUsername();
    ae localae2;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903103, null);
      localae2 = new ae();
      localae2.cMT = ((TextView)paramView.findViewById(2131362031));
      localae2.cMS = ((ImageView)paramView.findViewById(2131362033));
      localae2.cMU = ((TextView)paramView.findViewById(2131362034));
      localae2.cMW = ((CheckBox)paramView.findViewById(2131362036));
      localae2.cMV = ((TextView)paramView.findViewById(2131362035));
      localae2.cMX = ((LinearLayout)paramView.findViewById(2131362032));
      localae2.cMX.setTag(localae2.cMW);
    }
    for (ae localae1 = localae2; ; localae1 = (ae)paramView.getTag())
    {
      localae1.cMT.setVisibility(8);
      localae1.cMX.setOnClickListener(new y(this, str1));
      String str2 = w.cu(localn.getUsername());
      TextView localTextView = localae1.cMU;
      Context localContext = this.context;
      if (cj.hX(str2))
        str2 = localn.getUsername();
      localTextView.setText(b.e(localContext, str2, (int)localae1.cMU.getTextSize()));
      if ((this.cMF != null) && (!this.cMF.a(localn.getUsername(), localae1.cMV)))
        localae1.cMV.setText(2131166022);
      c.a(localae1.cMS, localn.getUsername());
      paramView.setTag(localae1);
      if (!this.cME.contains(str1))
        break;
      localae1.cMW.setChecked(true);
      return paramView;
    }
    localae1.cMW.setChecked(false);
    return paramView;
  }

  public final void iD(String paramString)
  {
    this.cMG.clear();
    Iterator localIterator = this.cMH.iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      if (w.cu(localn.getUsername()).contains(paramString))
        this.cMG.add(localn);
    }
    if (this.cMI != null)
    {
      if (this.cMG.size() != 0)
        break label92;
      this.cMI.ac(true);
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      label92: this.cMI.ac(false);
    }
  }

  public final void selectAll()
  {
    this.cME.clear();
    for (int i = 0; i < this.cMG.size(); i++)
    {
      n localn = (n)this.cMG.get(i);
      this.cME.add(localn.getUsername());
    }
    ((BakChatUploadSelectUI)this.context).Ih().setText(cj.K(this.cMF.a(this.cME)));
    ((BakChatUploadSelectUI)this.context).Ik();
    notifyDataSetChanged();
  }

  public final void showDialog()
  {
    this.cMK = false;
    this.handler.postDelayed(new z(this), 200L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.x
 * JD-Core Version:    0.6.2
 */
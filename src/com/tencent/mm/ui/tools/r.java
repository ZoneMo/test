package com.tencent.mm.ui.tools;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.n;
import java.util.ArrayList;
import java.util.List;

final class r extends BaseAdapter
{
  private List hhm = new ArrayList();
  private w hhn = w.hhA;

  public r(BrowserChooseActivity paramBrowserChooseActivity)
  {
    BrowserChooseActivity.a(paramBrowserChooseActivity, paramBrowserChooseActivity.getPackageManager());
  }

  public final void M(List paramList)
  {
    this.hhm = paramList;
  }

  public final void a(w paramw)
  {
    this.hhn = paramw;
  }

  public final w aMM()
  {
    return this.hhn;
  }

  public final int getCount()
  {
    if (this.hhm == null)
      return 0;
    return this.hhm.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    s locals2;
    t localt1;
    boolean bool;
    if ((paramView == null) || (paramView.getTag() == null))
    {
      paramView = LayoutInflater.from(this.hhl.aal()).inflate(k.aSj, null);
      s locals1 = new s(this.hhl, paramView);
      paramView.setTag(locals1);
      locals2 = locals1;
      localt1 = nV(paramInt);
      if (localt1.hht == null)
        new u(this.hhl).execute(new t[] { localt1 });
      locals2.ddT.setImageDrawable(localt1.hht);
      locals2.ddV.setText(localt1.hhs);
      if ((localt1 == null) || ((localt1.hhu) && (!localt1.hhv) && ((!localt1.hhu) || (!localt1.doL) || (!BrowserChooseActivity.d(this.hhl)))))
        break label356;
      locals2.hhp.setVisibility(8);
      locals2.hhq.setVisibility(0);
      RadioButton localRadioButton = locals2.hhq;
      t localt2 = BrowserChooseActivity.c(this.hhl);
      if (!(localt2 instanceof t))
        break label350;
      t localt3 = (t)localt2;
      if (((localt3.hhr == null) || (localt1.hhr == null) || (!localt3.hhr.activityInfo.packageName.equals(localt1.hhr.activityInfo.packageName))) && ((!localt3.hhu) || (!localt1.hhu)))
        break label350;
      bool = true;
      label278: localRadioButton.setChecked(bool);
      label285: if (!localt1.hhu)
        break label489;
      locals2.hho.setVisibility(0);
    }
    while (true)
    {
      if ((BrowserChooseActivity.c(this.hhl) != null) && (BrowserChooseActivity.c(this.hhl).equals(localt1)))
        locals2.hhq.setChecked(true);
      return paramView;
      locals2 = (s)paramView.getTag();
      break;
      label350: bool = false;
      break label278;
      label356: locals2.hhp.setVisibility(0);
      locals2.hhq.setVisibility(8);
      locals2.hhp.setOnClickListener(BrowserChooseActivity.h(this.hhl));
      if (this.hhn == w.hhA)
      {
        locals2.hhp.setText(n.bdz);
        locals2.hhp.setEnabled(true);
        break label285;
      }
      if (this.hhn == w.hhB)
      {
        locals2.hhp.setText(n.bdC);
        locals2.hhp.setEnabled(false);
        break label285;
      }
      if (this.hhn != w.hhC)
        break label285;
      locals2.hhp.setText(n.bdA);
      locals2.hhp.setEnabled(true);
      break label285;
      label489: locals2.hho.setVisibility(8);
    }
  }

  public final t nV(int paramInt)
  {
    if (this.hhm == null)
      return null;
    return (t)this.hhm.get(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.r
 * JD-Core Version:    0.6.2
 */
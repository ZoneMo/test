package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;

final class s extends BaseAdapter
{
  private j nA;
  private int nB = 4;
  private boolean nC;
  private boolean nD;
  private boolean nE;

  private s(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void J(int paramInt)
  {
    if (this.nB != paramInt)
    {
      this.nB = paramInt;
      notifyDataSetChanged();
    }
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.nC != paramBoolean1) || (this.nD != paramBoolean2))
    {
      this.nC = paramBoolean1;
      this.nD = paramBoolean2;
      notifyDataSetChanged();
    }
  }

  public final int cR()
  {
    return this.nA.cR();
  }

  public final ResolveInfo cS()
  {
    return this.nA.cS();
  }

  public final int dc()
  {
    int i = 0;
    int j = this.nB;
    this.nB = 2147483647;
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = getCount();
    View localView = null;
    int i1 = 0;
    while (i < n)
    {
      localView = getView(i, localView, null);
      localView.measure(k, m);
      i1 = Math.max(i1, localView.getMeasuredWidth());
      i++;
    }
    this.nB = j;
    return i1;
  }

  public final j dd()
  {
    return this.nA;
  }

  public final boolean de()
  {
    return this.nC;
  }

  public final int getCount()
  {
    int i = this.nA.cR();
    if ((!this.nC) && (this.nA.cS() != null))
      i--;
    int j = Math.min(i, this.nB);
    if (this.nE)
      j++;
    return j;
  }

  public final int getHistorySize()
  {
    return this.nA.getHistorySize();
  }

  public final Object getItem(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return null;
    case 0:
    }
    if ((!this.nC) && (this.nA.cS() != null))
      paramInt++;
    return this.nA.G(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    if ((this.nE) && (paramInt == -1 + getCount()))
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      if ((paramView == null) || (paramView.getId() != 1))
      {
        paramView = LayoutInflater.from(this.nz.getContext()).inflate(k.aRU, paramViewGroup, false);
        paramView.setId(1);
        ((TextView)paramView.findViewById(i.title)).setText(this.nz.getContext().getString(n.bcM));
      }
      break;
    case 0:
    }
    do
    {
      return paramView;
      if ((paramView == null) || (paramView.getId() != i.axW))
        paramView = LayoutInflater.from(this.nz.getContext()).inflate(k.aRU, paramViewGroup, false);
      PackageManager localPackageManager = this.nz.getContext().getPackageManager();
      ImageView localImageView = (ImageView)paramView.findViewById(i.icon);
      ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
      localImageView.setImageDrawable(localResolveInfo.loadIcon(localPackageManager));
      ((TextView)paramView.findViewById(i.title)).setText(localResolveInfo.loadLabel(localPackageManager));
    }
    while ((!this.nC) || (paramInt != 0));
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 3;
  }

  public final void w(boolean paramBoolean)
  {
    if (this.nE != paramBoolean)
    {
      this.nE = paramBoolean;
      notifyDataSetChanged();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.s
 * JD-Core Version:    0.6.2
 */
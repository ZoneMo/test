package android.support.v7.internal.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.support.v4.view.n;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;

final class t
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private t(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView == ActivityChooserView.e(this.nz))
    {
      this.nz.cZ();
      ResolveInfo localResolveInfo = ActivityChooserView.a(this.nz).cS();
      int i = ActivityChooserView.a(this.nz).dd().a(localResolveInfo);
      Intent localIntent = ActivityChooserView.a(this.nz).dd().H(i);
      if (localIntent != null)
      {
        localIntent.addFlags(524288);
        this.nz.getContext().startActivity(localIntent);
      }
      return;
    }
    if (paramView == ActivityChooserView.f(this.nz))
    {
      ActivityChooserView.a(this.nz, false);
      ActivityChooserView.a(this.nz, ActivityChooserView.g(this.nz));
      return;
    }
    throw new IllegalArgumentException();
  }

  public final void onDismiss()
  {
    if (ActivityChooserView.h(this.nz) != null)
      ActivityChooserView.h(this.nz).onDismiss();
    if (this.nz.nq != null)
      this.nz.nq.c(false);
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((s)paramAdapterView.getAdapter()).getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      ActivityChooserView.a(this.nz, 2147483647);
    case 0:
    }
    do
    {
      return;
      this.nz.cZ();
      if (!ActivityChooserView.d(this.nz))
        break;
    }
    while (paramInt <= 0);
    ActivityChooserView.a(this.nz).dd().I(paramInt);
    return;
    if (ActivityChooserView.a(this.nz).de());
    while (true)
    {
      Intent localIntent = ActivityChooserView.a(this.nz).dd().H(paramInt);
      if (localIntent == null)
        break;
      localIntent.addFlags(524288);
      this.nz.getContext().startActivity(localIntent);
      return;
      paramInt++;
    }
  }

  public final boolean onLongClick(View paramView)
  {
    if (paramView == ActivityChooserView.e(this.nz))
    {
      if (ActivityChooserView.a(this.nz).getCount() > 0)
      {
        ActivityChooserView.a(this.nz, true);
        ActivityChooserView.a(this.nz, ActivityChooserView.g(this.nz));
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.t
 * JD-Core Version:    0.6.2
 */
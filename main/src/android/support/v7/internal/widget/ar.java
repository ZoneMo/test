package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

final class ar
  implements ListAdapter, SpinnerAdapter
{
  private SpinnerAdapter lE;
  private ListAdapter pC;

  public ar(SpinnerAdapter paramSpinnerAdapter)
  {
    this.lE = paramSpinnerAdapter;
    if ((paramSpinnerAdapter instanceof SpinnerAdapter))
      this.pC = ((SpinnerAdapter)paramSpinnerAdapter);
  }

  public final boolean areAllItemsEnabled()
  {
    ListAdapter localListAdapter = this.pC;
    if (localListAdapter != null)
      return localListAdapter.areAllItemsEnabled();
    return true;
  }

  public final int getCount()
  {
    if (this.lE == null)
      return 0;
    return this.lE.getCount();
  }

  public final View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.lE == null)
      return null;
    return this.lE.getDropDownView(paramInt, paramView, paramViewGroup);
  }

  public final Object getItem(int paramInt)
  {
    if (this.lE == null)
      return null;
    return this.lE.getItem(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    if (this.lE == null)
      return -1L;
    return this.lE.getItemId(paramInt);
  }

  public final int getItemViewType(int paramInt)
  {
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getDropDownView(paramInt, paramView, paramViewGroup);
  }

  public final int getViewTypeCount()
  {
    return 1;
  }

  public final boolean hasStableIds()
  {
    return (this.lE != null) && (this.lE.hasStableIds());
  }

  public final boolean isEmpty()
  {
    return getCount() == 0;
  }

  public final boolean isEnabled(int paramInt)
  {
    ListAdapter localListAdapter = this.pC;
    if (localListAdapter != null)
      return localListAdapter.isEnabled(paramInt);
    return true;
  }

  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (this.lE != null)
      this.lE.registerDataSetObserver(paramDataSetObserver);
  }

  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (this.lE != null)
      this.lE.unregisterDataSetObserver(paramDataSetObserver);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ar
 * JD-Core Version:    0.6.2
 */
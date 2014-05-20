package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.EditText;
import android.widget.ListView;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.friend.f;
import com.tencent.mm.ui.voicesearch.j;

final class di
  implements AdapterView.OnItemLongClickListener
{
  di(SelectContactUI paramSelectContactUI)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    aa.d("MicroMsg.SelectContactUI", "onItemLongClick, targetview is SearchBar::ListView, pos = " + paramInt);
    if ((paramInt < SelectContactUI.i(this.gVn).getHeaderViewsCount()) && (paramView != null) && ((paramView instanceof EditText)))
    {
      aa.d("MicroMsg.SelectContactUI", "onItemLongClick, targetview is EditText, pos = " + paramInt);
      return false;
    }
    if ((SelectContactUI.j(this.gVn) != null) && (SelectContactUI.j(this.gVn).aPm()))
      return true;
    if ((SelectContactUI.k(this.gVn) == 0) || (SelectContactUI.k(this.gVn) == 1) || (SelectContactUI.k(this.gVn) == 3) || (SelectContactUI.k(this.gVn) == 4) || (SelectContactUI.k(this.gVn) == 5) || (SelectContactUI.k(this.gVn) == 7) || (SelectContactUI.k(this.gVn) == 8) || (SelectContactUI.k(this.gVn) == 10))
      return true;
    if (paramInt < SelectContactUI.i(this.gVn).getHeaderViewsCount())
    {
      if ((paramView != null) && (paramView.getParent() != null) && ((paramView.getParent().getParent() instanceof f)))
      {
        aa.d("MicroMsg.SelectContactUI", "onItemLongClick, targetview is FMessageContactView::ListView, pos = " + paramInt);
        return false;
      }
      return true;
    }
    String str = ((i)SelectContactUI.b(this.gVn).getItem(paramInt - SelectContactUI.i(this.gVn).getHeaderViewsCount())).getUsername();
    if ((w.cT(str)) || (w.cU(str)))
      return true;
    SelectContactUI.b(this.gVn, str);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.di
 * JD-Core Version:    0.6.2
 */
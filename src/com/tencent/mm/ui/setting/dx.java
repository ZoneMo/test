package com.tencent.mm.ui.setting;

import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import com.tencent.mm.sdk.platformtools.aa;

final class dx extends BaseAdapter
{
  int count = 0;
  Cursor cursor;

  public dx(SettingsRingtoneUI paramSettingsRingtoneUI, Cursor paramCursor)
  {
    this.cursor = paramCursor;
    this.count = (1 + paramCursor.getCount());
    aa.d("RingtonePickerActivity", "count = " + this.count);
  }

  private String gz(int paramInt)
  {
    if ((this.cursor.isClosed()) || (!this.cursor.moveToPosition(paramInt - 1)))
      return "";
    return this.cursor.getString(this.cursor.getColumnIndex("title"));
  }

  public final int getCount()
  {
    return this.count;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CheckedTextView localCheckedTextView = (CheckedTextView)this.hfY.hfU.inflate(2130903671, null);
    if (paramInt == 0)
    {
      localCheckedTextView.setBackgroundResource(2130837910);
      localCheckedTextView.setText(2131165957);
    }
    while (true)
    {
      localCheckedTextView.setCheckMarkDrawable(2130839186);
      return localCheckedTextView;
      localCheckedTextView.setBackgroundResource(2130837910);
      localCheckedTextView.setText(gz(paramInt));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dx
 * JD-Core Version:    0.6.2
 */
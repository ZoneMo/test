package com.tencent.mm.ui.setting;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bt;

public class SettingsRingtoneUI extends MMActivity
  implements AdapterView.OnItemClickListener, Runnable
{
  public static final String hfS = null;
  private RingtoneManager hfT;
  LayoutInflater hfU;
  private int hfV = -1;
  private int hfW = -1;
  private Ringtone hfX;
  private Cursor mCursor;
  private Handler mHandler;

  protected final int getLayoutId()
  {
    return 2130903691;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mHandler = new Handler();
    this.hfU = LayoutInflater.from(this);
    this.hfT = new RingtoneManager(this);
    this.hfT.setType(2);
    setVolumeControlStream(5);
    this.hfX = RingtoneManager.getRingtone(this, RingtoneManager.getDefaultUri(2));
    mn(2131165956);
    a(new dv(this));
    a(getString(2131166013), new dw(this), bt.gnO);
    ListView localListView = (ListView)findViewById(2131363669);
    View localView1 = new View(this);
    int i = getResources().getDimensionPixelSize(2131558431);
    localView1.setLayoutParams(new AbsListView.LayoutParams(-1, i));
    View localView2 = new View(this);
    localView2.setLayoutParams(new AbsListView.LayoutParams(-1, i));
    localView1.setClickable(false);
    localView2.setClickable(false);
    localListView.addHeaderView(localView1);
    localListView.addFooterView(localView2);
    this.mCursor = this.hfT.getCursor();
    localListView.setAdapter(new dx(this, this.mCursor));
    localListView.setItemsCanFocus(false);
    localListView.setOnItemClickListener(this);
    String str = getSharedPreferences(al.azs(), 0).getString("settings.ringtone", null);
    int k;
    if (str != hfS)
    {
      Uri localUri = Uri.parse(str);
      int j = this.hfT.getRingtonePosition(localUri);
      if (j >= 0)
      {
        k = j + 2;
        this.hfV = k;
        this.hfW = (-1 + this.hfV);
      }
    }
    while (true)
    {
      localListView.setItemChecked(this.hfV, true);
      localListView.setSelection(this.hfV);
      return;
      k = 1;
      break;
      this.hfV = 1;
    }
  }

  protected void onDestroy()
  {
    if ((this.mCursor != null) && (!this.mCursor.isClosed()))
    {
      this.mCursor.close();
      this.mCursor = null;
    }
    super.onDestroy();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.mHandler.removeCallbacks(this);
    this.hfW = (paramInt - 1);
    this.mHandler.postDelayed(this, 300L);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 24) || (paramInt == 25))
      return super.onKeyUp(paramInt, paramKeyEvent);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onStop()
  {
    this.hfT.stopPreviousRingtone();
    super.onStop();
  }

  public void run()
  {
    if (this.hfW == 0);
    for (Ringtone localRingtone = this.hfX; ; localRingtone = this.hfT.getRingtone(-1 + this.hfW))
    {
      if (localRingtone != null)
        localRingtone.play();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsRingtoneUI
 * JD-Core Version:    0.6.2
 */
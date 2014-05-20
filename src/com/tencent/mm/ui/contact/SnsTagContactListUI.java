package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.ui.MMActivity;
import java.util.ArrayList;
import java.util.List;

public class SnsTagContactListUI extends MMActivity
{
  private ListView gSA;
  private fc gVG;
  private List gVH = new ArrayList();

  protected final void FR()
  {
    mn(2131168783);
    findViewById(2131363964).setVisibility(8);
    this.gSA = ((ListView)findViewById(2131361903));
    long[] arrayOfLong = getIntent().getLongArrayExtra("sns_tag_list");
    if (arrayOfLong == null)
    {
      finish();
      return;
    }
    for (int i = 0; i < arrayOfLong.length; i++)
      this.gVH.add(Long.valueOf(arrayOfLong[i]));
    ((TextView)findViewById(2131361905)).setVisibility(8);
    findViewById(2131361906).setVisibility(8);
    this.gSA.setBackgroundColor(getResources().getColor(2131492867));
    ((View)this.gSA.getParent()).setBackgroundColor(getResources().getColor(2131492867));
    this.gVG = new fc(this, this.gVH);
    this.gSA.setAdapter(this.gVG);
    this.gSA.setVisibility(0);
    this.gSA.setOnItemClickListener(new fa(this));
    a(new fb(this));
    dh(false);
  }

  protected final int getLayoutId()
  {
    return 2130903069;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onResume()
  {
    super.onResume();
    if (this.gVG != null)
      this.gVG.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.SnsTagContactListUI
 * JD-Core Version:    0.6.2
 */
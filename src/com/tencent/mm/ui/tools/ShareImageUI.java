package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import com.tencent.mm.ui.MMActivity;
import java.util.ArrayList;
import java.util.List;

public class ShareImageUI extends MMActivity
{
  private List hmf;
  private String imagePath;

  protected final void FR()
  {
    mn(2131167421);
    ListView localListView = (ListView)findViewById(2131361903);
    fl localfl = new fl(this, this, this.hmf, (byte)0);
    localListView.setAdapter(localfl);
    localListView.setOnItemClickListener(new fh(this, localfl));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localfl.aNK().size());
    a(0, getString(2131167437, arrayOfObject), new fi(this, localfl));
    a(new fk(this, localfl));
  }

  protected final int getLayoutId()
  {
    return 2130903360;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.hmf = getIntent().getStringArrayListExtra("Select_Contact");
    this.imagePath = getIntent().getStringExtra("intent_extra_image_path");
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ShareImageUI
 * JD-Core Version:    0.6.2
 */
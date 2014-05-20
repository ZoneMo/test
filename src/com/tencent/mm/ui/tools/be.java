package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.h;

final class be
  implements Runnable
{
  be(CropImageNewUI paramCropImageNewUI)
  {
  }

  public final void run()
  {
    if (CropImageNewUI.e(this.hhZ) == null)
      return;
    if (this.hhZ.getIntent().getBooleanExtra("CropImage_DirectlyIntoFilter", false))
    {
      SharedPreferences.Editor localEditor = this.hhZ.getSharedPreferences(al.azs(), 0).edit();
      int i = CropImageNewUI.e(this.hhZ).findViewById(2131362462).getVisibility();
      boolean bool = false;
      if (i == 0)
        bool = true;
      localEditor.putBoolean("CropImage_Filter_Show", bool);
      localEditor.commit();
    }
    String str = this.hhZ.getIntent().getStringExtra("CropImage_OutputPath");
    if (str == null)
      str = h.cfG + f.h(new StringBuilder().append(CropImageNewUI.o(this.hhZ)).append(System.currentTimeMillis()).toString().getBytes()) + "_fiter.jpg";
    Intent localIntent = new Intent();
    localIntent.putExtra("CropImage_Compress_Img", true);
    if (CropImageNewUI.e(this.hhZ) != null)
      localIntent.putExtra("CropImage_filterId", CropImageNewUI.e(this.hhZ).aNj());
    if (CropImageNewUI.e(this.hhZ).aNj() == 0)
    {
      localIntent.putExtra("CropImage_OutputPath", CropImageNewUI.o(this.hhZ));
      this.hhZ.setResult(-1, localIntent);
    }
    while (true)
    {
      this.hhZ.finish();
      return;
      if (CropImageNewUI.b(CropImageNewUI.e(this.hhZ).aNe(), str))
      {
        localIntent.putExtra("CropImage_OutputPath", str);
        this.hhZ.setResult(-1, localIntent);
      }
      else
      {
        this.hhZ.setResult(-1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.be
 * JD-Core Version:    0.6.2
 */
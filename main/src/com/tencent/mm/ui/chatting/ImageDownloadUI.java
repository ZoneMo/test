package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.tools.ShowImageUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.f;
import com.tencent.mm.w.g;
import com.tencent.mm.w.u;

public class ImageDownloadUI extends MMActivity
  implements m, n
{
  private long bMS = 0L;
  private TextView cXJ;
  private int csY = 0;
  private int ctP;
  private TextView dTl;
  private TextView dTm;
  private TextView dTn;
  private e dTp;
  private u dTq;
  private ProgressBar deh;
  private ImageView gQF;
  private String username;

  private void hm(int paramInt)
  {
    this.deh.setProgress(paramInt);
    TextView localTextView = this.dTl;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localTextView.setText(getString(2131165309, arrayOfObject));
    if (paramInt < this.deh.getMax())
      return;
    e locale = ag.Ba().E(this.dTq.AU());
    String str1 = locale.AI();
    if (this.ctP == 1)
      str1 = f.c(locale);
    String str2 = ag.Ba().j(str1, null, null);
    locale.AM();
    if ((str2 == null) || (str2.equals("")) || (!c.as(str2)))
    {
      aa.d("ImageDownloadUI", "showImg : imgPath is null");
      return;
    }
    Intent localIntent = new Intent(this, ShowImageUI.class);
    localIntent.putExtra("key_message_id", this.bMS);
    localIntent.putExtra("key_image_path", str2);
    localIntent.putExtra("key_compress_type", this.ctP);
    localIntent.putExtra("key_favorite", true);
    finish();
  }

  protected final void FR()
  {
    this.dTl = ((TextView)findViewById(2131362952));
    this.dTm = ((TextView)findViewById(2131364053));
    this.cXJ = ((TextView)findViewById(2131364054));
    this.dTn = ((TextView)findViewById(2131364055));
    this.gQF = ((ImageView)findViewById(2131364051));
    this.gQF.setImageResource(2130837976);
    this.dTl.setVisibility(0);
    this.dTm.setVisibility(8);
    this.cXJ.setVisibility(8);
    this.dTn.setVisibility(8);
    a(new ki(this));
    this.deh = ((ProgressBar)findViewById(2131364052));
  }

  public final void a(int paramInt1, int paramInt2, x paramx)
  {
    aa.d("ImageDownloadUI", "offset " + paramInt1 + "totaolLen  " + paramInt2);
    if (paramx.getType() == 109)
      if (paramInt2 == 0)
        break label64;
    label64: for (int i = -1 + paramInt1 * 100 / paramInt2; ; i = 0)
    {
      hm(Math.max(0, i));
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 109)
      return;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      hm(this.deh.getMax());
      return;
    }
    aa.e("ImageDownloadUI", "onSceneEnd : fail, errType = " + paramInt1 + ", errCode = " + paramInt2);
    Toast.makeText(this, 2131166746, 1).show();
  }

  protected final int getLayoutId()
  {
    return 2130903810;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bMS = getIntent().getLongExtra("img_msg_id", 0L);
    this.csY = getIntent().getIntExtra("img_server_id", 0);
    this.ctP = getIntent().getIntExtra("img_download_compress_type", 0);
    this.username = getIntent().getStringExtra("img_download_username");
    FR();
    if (this.bMS > 0L)
      this.dTp = ag.Ba().dG((int)this.bMS);
    if (((this.dTp == null) || (this.dTp.AG() <= 0L)) && (this.csY > 0))
      this.dTp = ag.Ba().dF(this.csY);
    if ((this.dTp == null) || (this.dTp.AG() <= 0L))
    {
      aa.e("ImageDownloadUI", "onCreate : on such imginfo, with msgLocalId = " + this.bMS + ", or msgSvrId = " + this.csY);
      return;
    }
    if ((this.bMS <= 0L) && (this.csY > 0))
      this.bMS = be.uz().sw().ae(this.username, this.csY).Bo();
    this.dTq = new u(this.dTp.AG(), this.bMS, this.ctP, this);
    be.uA().d(this.dTq);
  }

  protected void onPause()
  {
    super.onPause();
    be.uA().b(109, this);
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(109, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ImageDownloadUI
 * JD-Core Version:    0.6.2
 */
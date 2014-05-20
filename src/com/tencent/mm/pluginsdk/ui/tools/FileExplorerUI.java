package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import java.io.File;

public class FileExplorerUI extends MMActivity
{
  private int ftW = 0;
  private ListView ftX;
  private h ftY;
  private TextView ftZ;
  private TextView fua;
  private View fub;
  private View fuc;
  private String fud;
  private String fue;
  private File fuf;
  private File fug;

  private void kS(int paramInt)
  {
    if (1 == paramInt)
    {
      this.ftW = 1;
      this.fua.setTextColor(getResources().getColor(com.tencent.mm.f.aaH));
      this.ftZ.setTextColor(getResources().getColor(com.tencent.mm.f.ZJ));
      this.fub.setVisibility(4);
      this.fuc.setVisibility(0);
      return;
    }
    this.ftW = 0;
    this.ftZ.setTextColor(getResources().getColor(com.tencent.mm.f.aaH));
    this.fua.setTextColor(getResources().getColor(com.tencent.mm.f.ZJ));
    this.fub.setVisibility(0);
    this.fuc.setVisibility(4);
  }

  public static int rc(String paramString)
  {
    String str1 = paramString.toLowerCase();
    if (rf(str1))
      return com.tencent.mm.h.ahm;
    if (rd(str1))
      return com.tencent.mm.h.ahq;
    String str2 = cj.hW(str1).toLowerCase();
    if ((str2.endsWith(".rar")) || (str2.endsWith(".zip")) || (str2.endsWith(".7z")) || (str2.endsWith("tar")) || (str2.endsWith(".iso")));
    for (int i = 1; i != 0; i = 0)
      return com.tencent.mm.h.ahu;
    if (ri(str1))
      return com.tencent.mm.h.ahv;
    if (rg(str1))
      return com.tencent.mm.h.ahs;
    String str3 = cj.hW(str1).toLowerCase();
    int j;
    if (!str3.endsWith(".ppt"))
    {
      boolean bool = str3.endsWith(".pptx");
      j = 0;
      if (!bool);
    }
    else
    {
      j = 1;
    }
    if (j != 0)
      return com.tencent.mm.h.aht;
    if (rh(str1))
      return com.tencent.mm.h.ahw;
    return com.tencent.mm.h.ahr;
  }

  public static boolean rd(String paramString)
  {
    String str = cj.hW(paramString).toLowerCase();
    return (str.endsWith(".bmp")) || (str.endsWith(".png")) || (str.endsWith(".jpg")) || (str.endsWith(".jpeg")) || (str.endsWith(".gif"));
  }

  public static boolean re(String paramString)
  {
    String str = cj.hW(paramString).toLowerCase();
    return (str.endsWith(".mp3")) || (str.endsWith(".wma")) || (str.endsWith(".mp4")) || (str.endsWith(".rm"));
  }

  public static boolean rf(String paramString)
  {
    String str = cj.hW(paramString).toLowerCase();
    return (str.endsWith(".doc")) || (str.endsWith(".docx")) || (str.endsWith("wps"));
  }

  public static boolean rg(String paramString)
  {
    return cj.hW(paramString).toLowerCase().endsWith(".pdf");
  }

  public static boolean rh(String paramString)
  {
    String str = cj.hW(paramString).toLowerCase();
    return (str.endsWith(".xls")) || (str.endsWith(".xlsx"));
  }

  public static boolean ri(String paramString)
  {
    String str = cj.hW(paramString).toLowerCase();
    return (str.endsWith(".txt")) || (str.endsWith(".rtf"));
  }

  protected final void FR()
  {
    int i = 1;
    this.ftX = ((ListView)findViewById(i.aFt));
    this.ftZ = ((TextView)findViewById(i.aHO));
    this.fub = findViewById(i.aHP);
    this.fua = ((TextView)findViewById(i.aIm));
    this.fuc = findViewById(i.aIn);
    a(new d(this));
    this.fud = getString(n.bsV);
    this.fue = getString(n.bsW);
    File localFile1;
    Object localObject1;
    label126: Object localObject2;
    label140: Object localObject3;
    label156: Object localObject4;
    label217: Object localObject5;
    label239: Object localObject6;
    label300: label359: label373: TextView localTextView2;
    if (cj.hX(s.ceN.cev))
    {
      localFile1 = Environment.getRootDirectory();
      if (!localFile1.canRead())
        break label482;
      localObject1 = localFile1;
      if (!be.uz().isSDCardAvailable())
        break label513;
      localObject2 = l.getExternalStorageDirectory();
      com.tencent.mm.storage.e locale1 = be.uz().sr();
      if (localObject1 != null)
        break label578;
      localObject3 = null;
      String str1 = (String)locale1.get(131073, localObject3);
      if ((str1 == null) || (localObject1 == null) || (((File)localObject1).getAbsolutePath().equals(str1)))
        break label588;
      File localFile5 = new File(str1);
      if (!localFile5.exists())
        break label588;
      localObject4 = localFile5;
      this.fuf = ((File)localObject4);
      com.tencent.mm.storage.e locale2 = be.uz().sr();
      localObject5 = null;
      if (localObject2 != null)
        break label595;
      String str2 = (String)locale2.get(131074, localObject5);
      if ((str2 == null) || (localObject2 == null) || (((File)localObject2).getAbsolutePath().equals(str2)))
        break label605;
      File localFile4 = new File(str2);
      if (!localFile4.exists())
        break label605;
      localObject6 = localFile4;
      this.fug = ((File)localObject6);
      this.ftY = new h(this, (byte)0);
      if (localObject2 == null)
        break label612;
      kS(i);
      this.ftY.rj(((File)localObject2).getPath());
      this.ftY.b(this.fug.getParentFile(), this.fug);
      TextView localTextView1 = this.ftZ;
      if (localObject1 == null)
        break label665;
      int k = i;
      localTextView1.setEnabled(k);
      localTextView2 = this.fua;
      if (localObject2 == null)
        break label671;
    }
    while (true)
    {
      localTextView2.setEnabled(i);
      this.ftX.setAdapter(this.ftY);
      this.ftY.notifyDataSetChanged();
      this.ftX.setOnItemClickListener(new e(this));
      this.ftZ.setOnClickListener(new f(this, (File)localObject1));
      this.fua.setOnClickListener(new g(this, (File)localObject2));
      return;
      localFile1 = new File(s.ceN.cev);
      break;
      label482: File localFile2 = l.getDataDirectory();
      if (localFile2.canRead())
      {
        this.fud = localFile2.getName();
        localObject1 = localFile2;
        break label126;
      }
      localObject1 = null;
      break label126;
      label513: if (cj.hX(s.ceN.cex));
      for (File localFile3 = Environment.getDownloadCacheDirectory(); ; localFile3 = new File(s.ceN.cex))
      {
        if (!localFile3.canRead())
          break label572;
        this.fue = localFile3.getName();
        localObject2 = localFile3;
        break;
      }
      label572: localObject2 = null;
      break label140;
      label578: localObject3 = ((File)localObject1).getAbsolutePath();
      break label156;
      label588: localObject4 = localObject1;
      break label217;
      label595: localObject5 = ((File)localObject2).getAbsolutePath();
      break label239;
      label605: localObject6 = localObject2;
      break label300;
      label612: if (localObject1 != null)
      {
        kS(0);
        this.ftY.rj(((File)localObject1).getPath());
        this.ftY.b(this.fuf.getParentFile(), this.fuf);
        break label359;
      }
      aa.d("MicroMsg.FileExplorerUI", "left and right tag disabled in the same time.");
      return;
      label665: int m = 0;
      break label373;
      label671: int j = 0;
    }
  }

  protected final int getLayoutId()
  {
    return k.aVy;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getIntent().getStringExtra("key_title");
    if (cj.hX(str))
      mn(n.bsX);
    while (true)
    {
      FR();
      return;
      vT(str);
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (h.a(this.ftY) != null))
    {
      if (1 == this.ftW)
        this.fug = h.a(this.ftY);
      while (true)
      {
        this.ftY.b(h.a(this.ftY).getParentFile(), h.a(this.ftY));
        this.ftY.notifyDataSetChanged();
        this.ftX.setSelection(0);
        return true;
        if (this.ftW == 0)
          this.fuf = h.a(this.ftY);
      }
    }
    if (this.fug != null)
      be.uz().sr().set(131074, this.fug.getAbsolutePath());
    if (this.fuf != null)
      be.uz().sr().set(131073, this.fuf.getAbsolutePath());
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.FileExplorerUI
 * JD-Core Version:    0.6.2
 */
package com.tencent.mm.pluginsdk.ui.tools;

import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class h extends BaseAdapter
{
  private String euO;
  private File fuk;
  private File ful;
  private File[] fum;

  private h(FileExplorerUI paramFileExplorerUI)
  {
  }

  public final void b(File paramFile1, File paramFile2)
  {
    this.fuk = paramFile1;
    if (paramFile2.getAbsolutePath().equalsIgnoreCase(this.euO))
      this.fuk = null;
    this.ful = paramFile2;
    if (this.ful.canRead())
    {
      this.fum = this.ful.listFiles(new i(this));
      File[] arrayOfFile;
      if (this.fum.length > 0)
      {
        arrayOfFile = this.fum;
        if ((arrayOfFile != null) && (arrayOfFile.length != 0))
          break label81;
      }
      while (true)
      {
        return;
        label81: ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        int i = arrayOfFile.length;
        int j = 0;
        if (j < i)
        {
          File localFile = arrayOfFile[j];
          l locall = new l(this.fuh, (byte)0);
          locall.file = localFile;
          locall.fuo = com.tencent.mm.platformtools.h.hI(localFile.getName()).toUpperCase();
          if (localFile.isDirectory())
            localArrayList1.add(locall);
          while (true)
          {
            j++;
            break;
            localArrayList2.add(locall);
          }
        }
        Collections.sort(localArrayList1, new j(this));
        Collections.sort(localArrayList2, new k(this));
        Iterator localIterator1 = localArrayList1.iterator();
        for (int k = 0; localIterator1.hasNext(); k++)
          arrayOfFile[k] = ((l)localIterator1.next()).file;
        Iterator localIterator2 = localArrayList2.iterator();
        while (localIterator2.hasNext())
        {
          arrayOfFile[k] = ((l)localIterator2.next()).file;
          k++;
        }
      }
    }
    this.fum = new File[0];
  }

  public final int getCount()
  {
    if (this.fum == null)
      return 0;
    int i = this.fum.length;
    File localFile = this.fuk;
    int j = 0;
    if (localFile != null)
      j = 1;
    return j + i;
  }

  public final Object getItem(int paramInt)
  {
    if ((this.fuk != null) && (paramInt == 0))
      return this.fuk;
    aa.d("FileExplorer", "pos:" + paramInt + ", subFile length:" + this.fum.length);
    File[] arrayOfFile = this.fum;
    if (this.fuk == null);
    while (true)
    {
      return arrayOfFile[paramInt];
      paramInt--;
    }
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = View.inflate(this.fuh, com.tencent.mm.k.aVz, null);
      m localm2 = new m(this.fuh, (byte)0);
      localm2.daU = ((ImageView)paramView.findViewById(com.tencent.mm.i.atq));
      localm2.djP = ((TextView)paramView.findViewById(com.tencent.mm.i.atr));
      localm2.fup = ((TextView)paramView.findViewById(com.tencent.mm.i.atu));
      paramView.setTag(localm2);
    }
    m localm1 = (m)paramView.getTag();
    File localFile = (File)getItem(paramInt);
    if (localFile == this.fuk)
    {
      localm1.djP.setText(localFile.getName());
      localm1.daU.setImageResource(com.tencent.mm.h.ahl);
      localm1.fup.setVisibility(0);
      return paramView;
    }
    ImageView localImageView = localm1.daU;
    localImageView.setImageResource(FileExplorerUI.h(localFile));
    localm1.djP.setText(localFile.getName());
    TextView localTextView = localm1.fup;
    StringBuilder localStringBuilder = new StringBuilder().append(DateFormat.format("yyyy-MM-dd hh:mm:ss", localFile.lastModified()).toString());
    if (localFile.isDirectory());
    for (String str = ""; ; str = "  " + cj.K(localFile.length()))
    {
      localTextView.setText(str);
      return paramView;
    }
  }

  public final void rj(String paramString)
  {
    this.euO = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.h
 * JD-Core Version:    0.6.2
 */
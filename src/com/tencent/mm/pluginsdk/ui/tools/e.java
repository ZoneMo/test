package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import java.io.File;

final class e
  implements AdapterView.OnItemClickListener
{
  e(FileExplorerUI paramFileExplorerUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    File localFile = (File)FileExplorerUI.a(this.fuh).getItem(paramInt);
    if (1 == FileExplorerUI.b(this.fuh))
      if (localFile.isFile())
      {
        be.uz().sr().set(131074, h.b(FileExplorerUI.a(this.fuh)).getAbsolutePath());
        be.uz().sr().set(131073, FileExplorerUI.e(this.fuh).getAbsolutePath());
        if (localFile != h.a(FileExplorerUI.a(this.fuh)))
          break label250;
        FileExplorerUI.a(this.fuh).b(h.a(FileExplorerUI.a(this.fuh)).getParentFile(), h.a(FileExplorerUI.a(this.fuh)));
      }
    while (true)
    {
      FileExplorerUI.auN();
      FileExplorerUI.a(this.fuh).notifyDataSetChanged();
      FileExplorerUI.c(this.fuh).setSelection(0);
      return;
      FileExplorerUI.a(this.fuh, localFile);
      break;
      if (FileExplorerUI.b(this.fuh) != 0)
        break;
      if (localFile.isFile())
      {
        be.uz().sr().set(131073, h.b(FileExplorerUI.a(this.fuh)).getAbsolutePath());
        be.uz().sr().set(131074, FileExplorerUI.d(this.fuh).getAbsolutePath());
        break;
      }
      FileExplorerUI.b(this.fuh, localFile);
      break;
      label250: if (localFile.isDirectory())
      {
        FileExplorerUI.a(this.fuh).b(h.b(FileExplorerUI.a(this.fuh)), localFile);
      }
      else if (localFile.isFile())
      {
        this.fuh.setResult(-1, new Intent().putExtra("choosed_file_path", localFile.getAbsolutePath()));
        this.fuh.finish();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.e
 * JD-Core Version:    0.6.2
 */
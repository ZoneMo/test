package com.tencent.mm.pluginsdk.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.ListView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.e;
import java.io.File;

final class d
  implements MenuItem.OnMenuItemClickListener
{
  d(FileExplorerUI paramFileExplorerUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (h.a(FileExplorerUI.a(this.fuh)) != null)
    {
      if (1 == FileExplorerUI.b(this.fuh))
        FileExplorerUI.a(this.fuh, h.a(FileExplorerUI.a(this.fuh)));
      while (true)
      {
        FileExplorerUI.a(this.fuh).b(h.a(FileExplorerUI.a(this.fuh)).getParentFile(), h.a(FileExplorerUI.a(this.fuh)));
        FileExplorerUI.a(this.fuh).notifyDataSetChanged();
        FileExplorerUI.c(this.fuh).setSelection(0);
        FileExplorerUI.auN();
        return true;
        if (FileExplorerUI.b(this.fuh) == 0)
          FileExplorerUI.b(this.fuh, h.a(FileExplorerUI.a(this.fuh)));
      }
    }
    be.uz().sr().set(131074, FileExplorerUI.d(this.fuh).getAbsolutePath());
    be.uz().sr().set(131073, FileExplorerUI.e(this.fuh).getAbsolutePath());
    this.fuh.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.d
 * JD-Core Version:    0.6.2
 */
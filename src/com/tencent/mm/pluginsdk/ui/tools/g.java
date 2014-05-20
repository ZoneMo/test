package com.tencent.mm.pluginsdk.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import java.io.File;

final class g
  implements View.OnClickListener
{
  g(FileExplorerUI paramFileExplorerUI, File paramFile)
  {
  }

  public final void onClick(View paramView)
  {
    FileExplorerUI.a(this.fuh, 1);
    FileExplorerUI.a(this.fuh).rj(this.fuj.getPath());
    FileExplorerUI.a(this.fuh).b(FileExplorerUI.d(this.fuh).getParentFile(), FileExplorerUI.d(this.fuh));
    FileExplorerUI.a(this.fuh).notifyDataSetInvalidated();
    FileExplorerUI.a(this.fuh).notifyDataSetChanged();
    FileExplorerUI.c(this.fuh).setSelection(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.g
 * JD-Core Version:    0.6.2
 */
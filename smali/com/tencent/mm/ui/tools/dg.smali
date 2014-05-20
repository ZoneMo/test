.class public final Lcom/tencent/mm/ui/tools/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private ge:Landroid/view/LayoutInflater;

.field private hlh:Lcom/tencent/mm/ui/base/bm;

.field private hli:Lcom/tencent/mm/ui/base/cc;

.field private hlj:Lcom/tencent/mm/ui/base/cd;

.field private hlk:Lcom/tencent/mm/ui/base/bx;

.field private hll:Lcom/tencent/mm/ui/tools/dj;

.field private hlm:Lcom/tencent/mm/ui/base/ca;

.field private hln:Lcom/tencent/mm/ui/base/cb;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dg;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->ge:Landroid/view/LayoutInflater;

    .line 49
    new-instance v0, Lcom/tencent/mm/ui/base/bm;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/base/bm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    .line 50
    new-instance v0, Lcom/tencent/mm/ui/base/bx;

    invoke-direct {v0}, Lcom/tencent/mm/ui/base/bx;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/bx;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/dg;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->ge:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/ca;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlm:Lcom/tencent/mm/ui/base/ca;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/cb;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hln:Lcom/tencent/mm/ui/base/cb;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bm;->dismiss()V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IJLandroid/view/View$OnCreateContextMenuListener;Lcom/tencent/mm/ui/base/cd;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->clear()V

    .line 103
    new-instance v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-interface {p5, v0, p1, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->aHf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 106
    check-cast v0, Lcom/tencent/mm/ui/base/by;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/by;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    .line 109
    iput-object p6, p0, Lcom/tencent/mm/ui/tools/dg;->hlj:Lcom/tencent/mm/ui/base/cd;

    .line 110
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View$OnCreateContextMenuListener;Lcom/tencent/mm/ui/base/cd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/dg;->hlj:Lcom/tencent/mm/ui/base/cd;

    .line 56
    const-string v0, "MicroMsg.MMSubMenuHelper"

    const-string v1, "registerForContextMenu"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "MicroMsg.MMSubMenuHelper"

    const-string v1, "registerForContextMenu AbsListView"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    check-cast p1, Landroid/widget/AbsListView;

    .line 60
    new-instance v0, Lcom/tencent/mm/ui/tools/dh;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mm/ui/tools/dh;-><init>(Lcom/tencent/mm/ui/tools/dg;Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "MicroMsg.MMSubMenuHelper"

    const-string v1, "registerForContextMenu normal view"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/tencent/mm/ui/tools/di;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mm/ui/tools/di;-><init>(Lcom/tencent/mm/ui/tools/dg;Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dg;->hlm:Lcom/tencent/mm/ui/base/ca;

    .line 94
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dg;->hln:Lcom/tencent/mm/ui/base/cb;

    .line 98
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dg;->hli:Lcom/tencent/mm/ui/base/cc;

    .line 122
    return-void
.end method

.method public final aNy()Lcom/tencent/mm/ui/base/ar;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hli:Lcom/tencent/mm/ui/base/cc;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->clear()V

    .line 166
    new-instance v0, Lcom/tencent/mm/ui/base/bx;

    invoke-direct {v0}, Lcom/tencent/mm/ui/base/bx;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hli:Lcom/tencent/mm/ui/base/cc;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/cc;->a(Lcom/tencent/mm/ui/base/bx;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->aHh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "MicroMsg.MMSubMenuHelper"

    const-string v1, "show, menu empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hll:Lcom/tencent/mm/ui/tools/dj;

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lcom/tencent/mm/ui/tools/dj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/tools/dj;-><init>(Lcom/tencent/mm/ui/tools/dg;B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hll:Lcom/tencent/mm/ui/tools/dj;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dg;->hll:Lcom/tencent/mm/ui/tools/dj;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/bm;->a(Landroid/widget/BaseAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/base/bm;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/bx;->aHg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/bm;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bm;->show()V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    goto :goto_0
.end method

.method public final b(Landroid/view/View;Landroid/view/View$OnCreateContextMenuListener;Lcom/tencent/mm/ui/base/cd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->clear()V

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 116
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    .line 117
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/dg;->hlj:Lcom/tencent/mm/ui/base/cd;

    .line 118
    return-void
.end method

.method public final b(Lcom/tencent/mm/ui/base/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dg;->hlj:Lcom/tencent/mm/ui/base/cd;

    .line 126
    return-void
.end method

.method public final c(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlh:Lcom/tencent/mm/ui/base/bm;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/bm;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 130
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dg;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->aHf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/by;

    .line 145
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/by;->performClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v0, "MicroMsg.MMSubMenuHelper"

    const-string v1, "onItemClick menu item has listener"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/dg;->dismiss()V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dg;->hlj:Lcom/tencent/mm/ui/base/cd;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dg;->hlj:Lcom/tencent/mm/ui/base/cd;

    invoke-interface {v1, v0, p3}, Lcom/tencent/mm/ui/base/cd;->d(Landroid/view/MenuItem;I)V

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/dg;->dismiss()V

    goto :goto_0
.end method

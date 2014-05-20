.class final Lcom/tencent/mm/ui/tools/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hlB:Lcom/tencent/mm/platformtools/f;

.field final synthetic hlC:Lcom/tencent/mm/platformtools/e;

.field final synthetic hlD:Lcom/tencent/mm/ui/tools/ds;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ds;Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dx;->hlD:Lcom/tencent/mm/ui/tools/ds;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/dx;->hlB:Lcom/tencent/mm/platformtools/f;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/dx;->hlC:Lcom/tencent/mm/platformtools/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/mm/model/br;->uP()Lcom/tencent/mm/model/br;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dx;->hlB:Lcom/tencent/mm/platformtools/f;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dx;->hlC:Lcom/tencent/mm/platformtools/e;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/br;->a(Lcom/tencent/mm/platformtools/f;Lcom/tencent/mm/platformtools/e;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dx;->hlD:Lcom/tencent/mm/ui/tools/ds;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dx;->hlD:Lcom/tencent/mm/ui/tools/ds;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ds;->a(Lcom/tencent/mm/ui/tools/ds;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/ds;->c(Landroid/content/Context;Z)V

    .line 83
    return-void
.end method
